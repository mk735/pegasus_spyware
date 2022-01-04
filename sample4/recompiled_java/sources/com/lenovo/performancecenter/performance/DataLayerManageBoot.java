package com.lenovo.performancecenter.performance;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import com.lenovo.performancecenter.performance.DataLayerManagerAccelerate;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.utils.Const;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class DataLayerManageBoot {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private int d;

    public int getBootAllowCount() {
        return this.a;
    }

    public ArrayList<DataLayerManagerAccelerate.a> getBootItem(Context context) {
        a(context);
        this.a = 0;
        ArrayList<DataLayerManagerAccelerate.a> listSuggestAllow = new ArrayList<>();
        ArrayList<DataLayerManagerAccelerate.a> listSuggestForbid = new ArrayList<>();
        ArrayList<DataLayerManagerAccelerate.a> listNoSuggest = new ArrayList<>();
        PackageManager pm = context.getPackageManager();
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readDB = dbHelper.getReadableDatabase();
        Cursor cursor = readDB.rawQuery("SELECT * FROM BootCom", null);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    String packageName = cursor.getString(cursor.getColumnIndex("pkgName"));
                    String clsName = cursor.getString(cursor.getColumnIndex(DatabaseTables.BOOTCOMPLETED_ITEM_CLSNAME));
                    int state = cursor.getInt(cursor.getColumnIndex(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE));
                    try {
                        ApplicationInfo appInfo = pm.getApplicationInfo(packageName, 0);
                        int expertSuggest = DataLayerManager.getExpertSuggest(context, packageName);
                        DataLayerManagerAccelerate.a item = new DataLayerManagerAccelerate.a(appInfo.loadIcon(pm), ((Object) appInfo.loadLabel(pm)) + "", packageName, null, clsName, state, expertSuggest);
                        if (state != 2) {
                            this.a++;
                        }
                        if (expertSuggest == 1) {
                            listSuggestAllow.add(item);
                        } else if (expertSuggest == 2) {
                            listSuggestForbid.add(item);
                        } else {
                            listNoSuggest.add(item);
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                    cursor.moveToNext();
                }
            }
            cursor.close();
        }
        readDB.close();
        dbHelper.close();
        listSuggestAllow.trimToSize();
        listSuggestForbid.trimToSize();
        listNoSuggest.trimToSize();
        ArrayList<DataLayerManagerAccelerate.a> list = new ArrayList<>();
        list.addAll(listSuggestForbid);
        list.addAll(listSuggestAllow);
        list.addAll(listNoSuggest);
        return list;
    }

    private static boolean a(Context context) {
        ArrayList<String> fromDatabases = new ArrayList<>();
        PerformanceDatabaseHelper performanceDatabaseHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readableDatabase = performanceDatabaseHelper.getReadableDatabase();
        Cursor rawQuery = readableDatabase.rawQuery("SELECT pkgName FROM BootCom", null);
        if (rawQuery != null) {
            if (rawQuery.getCount() > 0) {
                rawQuery.moveToFirst();
                while (!rawQuery.isAfterLast()) {
                    fromDatabases.add(rawQuery.getString(rawQuery.getColumnIndex("pkgName")));
                    rawQuery.moveToNext();
                }
            }
            rawQuery.close();
        }
        readableDatabase.close();
        performanceDatabaseHelper.close();
        ArrayList<String> fromReal = b(context);
        ArrayList<String> deleteItem = a(fromDatabases, fromReal);
        ArrayList<String> insertItem = a(fromReal, fromDatabases);
        Log.i("DataLayerManageBoot", System.currentTimeMillis() + " " + " deleteItem == " + deleteItem.size() + " insertItem == " + insertItem.size());
        if (deleteItem.isEmpty() && insertItem.isEmpty()) {
            return true;
        }
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase writeDB = dbHelper.getWritableDatabase();
        if (!deleteItem.isEmpty()) {
            for (int i = 0; i < deleteItem.size(); i++) {
                writeDB.delete(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, "pkgName=?", new String[]{deleteItem.get(i)});
            }
        }
        if (!insertItem.isEmpty()) {
            HashMap<String, DataLayerManagerAccelerate.a> maps = c(context);
            for (int i2 = 0; i2 < insertItem.size(); i2++) {
                DataLayerManagerAccelerate.a item = maps.get(insertItem.get(i2));
                ContentValues values = new ContentValues();
                values.put("appName", item.b.toString());
                values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CLSNAME, item.e);
                values.put("pkgName", item.c);
                values.put(DatabaseTables.BOOTCOMPLETED_ITEM_PRONAME, item.d);
                values.put("state", Integer.valueOf(item.f));
                values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE, Integer.valueOf(item.f));
                writeDB.insert(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, null, values);
            }
        }
        writeDB.close();
        dbHelper.close();
        return true;
    }

    private static ArrayList<String> b(Context context) {
        ArrayList<String> list = new ArrayList<>();
        for (ResolveInfo resolve : context.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600)) {
            ApplicationInfo app = resolve.activityInfo.applicationInfo;
            if ((app.flags & 1) == 0 && !context.getApplicationContext().getPackageName().equals(app.packageName) && !Const.PACKAGENAME_APP_LOCK.equals(app.packageName) && !NetConstant.TRAFFIC_PLUGIN.equals(app.packageName) && !list.contains(app.packageName)) {
                list.add(app.packageName);
            }
        }
        return list;
    }

    private static HashMap<String, DataLayerManagerAccelerate.a> c(Context context) {
        int state;
        HashMap<String, DataLayerManagerAccelerate.a> maps = new HashMap<>();
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo resolve : packageManager.queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600)) {
            ApplicationInfo app = resolve.activityInfo.applicationInfo;
            if ((app.flags & 1) == 0 && !context.getApplicationContext().getPackageName().equals(app.packageName) && !Const.PACKAGENAME_APP_LOCK.equals(app.packageName) && !NetConstant.TRAFFIC_PLUGIN.equals(app.packageName)) {
                int state2 = packageManager.getComponentEnabledSetting(new ComponentName(app.packageName, resolve.activityInfo.name));
                if (state2 == 0 || state2 == 1) {
                    state = 1;
                } else {
                    state = 2;
                }
                DataLayerManagerAccelerate.a item = new DataLayerManagerAccelerate.a(null, app.loadLabel(packageManager), app.packageName, app.processName, resolve.activityInfo.name, state, 0);
                if (!maps.containsKey(item.c)) {
                    maps.put(item.c, item);
                }
            }
        }
        return maps;
    }

    public ArrayList<DataLayerManagerAccelerate.a> getBootAppInfoFromRealAllCls(Context context) {
        ArrayList<DataLayerManagerAccelerate.a> list = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo resolve : packageManager.queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600)) {
            ApplicationInfo app = resolve.activityInfo.applicationInfo;
            if ((app.flags & 1) == 0 && !context.getApplicationContext().getPackageName().equals(app.packageName) && !Const.PACKAGENAME_APP_LOCK.equals(app.packageName) && !NetConstant.TRAFFIC_PLUGIN.equals(app.packageName)) {
                list.add(new DataLayerManagerAccelerate.a(null, null, app.packageName, null, resolve.activityInfo.name, packageManager.getComponentEnabledSetting(new ComponentName(app.packageName, resolve.activityInfo.name)), 0));
            }
        }
        return list;
    }

    private static ArrayList<String> a(ArrayList<String> listA, ArrayList<String> listB) {
        if (listB.isEmpty()) {
            return listA;
        }
        ArrayList<String> listC = new ArrayList<>();
        listC.addAll(listA);
        for (int i = 0; i < listB.size(); i++) {
            String elementB = listB.get(i);
            if (listC.contains(elementB)) {
                listC.remove(elementB);
            }
        }
        return listC;
    }

    public int getNeedChangeToForbid() {
        Log.i("DataLayerManageBoot", "getNeedChangeToForbid == " + this.b);
        return this.b;
    }

    public int getNeedChangeToAllow() {
        Log.i("DataLayerManageBoot", "getNeedChangeToAllow == " + this.c);
        return this.c;
    }

    public HashMap<String[], int[]> getBootMap(Context context, ArrayList<DataLayerManagerAccelerate.a> list) {
        this.b = 0;
        this.c = 0;
        HashMap<String[], int[]> bootMap = new HashMap<>();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            DataLayerManagerAccelerate.a item = i$.next();
            int[] stateArr = new int[4];
            String[] nameArr = {item.c, item.e};
            stateArr[1] = item.f;
            stateArr[2] = item.g;
            stateArr[0] = -1;
            if (!(stateArr[1] == 2 || stateArr[2] == 1)) {
                this.b++;
                stateArr[0] = 2;
            }
            if (stateArr[1] == 2 && stateArr[2] == 1) {
                this.c++;
                stateArr[0] = 1;
            }
            bootMap.put(nameArr, stateArr);
            Log.i("DataLayerManageBoot", "getBootMap --- > packageName == " + nameArr[0] + " needChangeToState == " + stateArr[0]);
        }
        return bootMap;
    }

    public int updateSinglePkgDB(Context context, String packageName, int state) {
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase writeDB = dbHelper.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE, Integer.valueOf(state));
        int updateCount = writeDB.update(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, values, "pkgName=?", new String[]{packageName});
        writeDB.close();
        dbHelper.close();
        Log.i("DataLayerManageBoot", "updateSinglePkgDB --- > packageName == " + packageName + " newState == " + state);
        Log.i("DataLayerManageBoot", "updateSinglePkgDB --- > updateCount == " + updateCount);
        return updateCount;
    }

    public void updatePkgsInBootDB(Context context, HashMap<String[], int[]> cns) {
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase writeDB = dbHelper.getWritableDatabase();
        for (Map.Entry<String[], int[]> entry : cns.entrySet()) {
            String packageName = entry.getKey()[0];
            int changeToState = entry.getValue()[0];
            Log.i("DataLayerManageBoot", "updateManyPkgsDB --- > packageName == " + packageName + " newState == " + changeToState);
            if (changeToState != -1) {
                ContentValues values = new ContentValues();
                values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE, Integer.valueOf(changeToState));
                writeDB.update(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, values, "pkgName=?", new String[]{packageName});
            }
        }
        writeDB.close();
        dbHelper.close();
    }

    public void updatePkgsInBootDB2(Context context, HashMap<String, int[]> cns) {
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase writeDB = dbHelper.getWritableDatabase();
        for (Map.Entry<String, int[]> entry : cns.entrySet()) {
            String packageName = entry.getKey();
            int changeToState = entry.getValue()[0];
            Log.i("DataLayerManageBoot", "updateManyPkgsDB --- > packageName == " + packageName + " newState == " + changeToState);
            if (changeToState != -1) {
                ContentValues values = new ContentValues();
                values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE, Integer.valueOf(changeToState));
                writeDB.update(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, values, "pkgName=?", new String[]{packageName});
            }
        }
        writeDB.close();
        dbHelper.close();
    }

    public int getNeedChangeToForbidJustCount() {
        return this.d;
    }

    public HashMap<String[], int[]> getBootMap(Context context) {
        a(context);
        HashMap<String[], int[]> bootMap = new HashMap<>();
        this.d = 0;
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readDB = dbHelper.getReadableDatabase();
        Cursor cursor = readDB.rawQuery("SELECT * FROM BootCom", null);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    int[] stateArr = new int[4];
                    String[] nameArr = {cursor.getString(cursor.getColumnIndex("pkgName")), cursor.getString(cursor.getColumnIndex(DatabaseTables.BOOTCOMPLETED_ITEM_CLSNAME))};
                    stateArr[1] = cursor.getInt(cursor.getColumnIndex(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE));
                    stateArr[2] = DataLayerManager.getExpertSuggest(context, nameArr[0]);
                    stateArr[0] = -1;
                    if (!(stateArr[1] == 2 || stateArr[2] == 1)) {
                        this.d++;
                        stateArr[0] = 2;
                    }
                    bootMap.put(nameArr, stateArr);
                    Log.i("DataLayerManageBoot", "getBootMap --- > packageName == " + nameArr[0] + " needChangeToState == " + stateArr[3]);
                    cursor.moveToNext();
                }
            }
            cursor.close();
        }
        readDB.close();
        dbHelper.close();
        return bootMap;
    }

    public ArrayList<String> getBootForbidedList(Context context) {
        ArrayList<String> list = new ArrayList<>();
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readDB = dbHelper.getReadableDatabase();
        Cursor cursor = readDB.rawQuery("SELECT * FROM BootCom WHERE customer_state=2", null);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    list.add(cursor.getString(cursor.getColumnIndex("pkgName")));
                    cursor.moveToNext();
                }
            }
            cursor.close();
        }
        readDB.close();
        dbHelper.close();
        list.trimToSize();
        return list;
    }

    public int getAllAllowBootCount(Context context) {
        a(context);
        int count = 0;
        PerformanceDatabaseHelper dbHelper = new PerformanceDatabaseHelper(context);
        SQLiteDatabase readDB = dbHelper.getReadableDatabase();
        Cursor cursor = readDB.rawQuery("SELECT * FROM BootCom WHERE customer_state=1", null);
        if (cursor != null) {
            count = cursor.getCount();
            cursor.close();
        }
        readDB.close();
        dbHelper.close();
        return count;
    }
}
