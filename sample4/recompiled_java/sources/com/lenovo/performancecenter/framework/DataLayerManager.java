package com.lenovo.performancecenter.framework;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.AppInfo;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.Const;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DataLayerManager {
    private static int a = 40;

    static /* synthetic */ void a(Context x0, ArrayList x1) {
        PerformanceDatabaseHelper performanceDatabaseHelper = new PerformanceDatabaseHelper(x0);
        SQLiteDatabase writableDatabase = performanceDatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Iterator it = x1.iterator();
            while (it.hasNext()) {
                AppInfo appInfo = (AppInfo) it.next();
                ContentValues contentValues = new ContentValues();
                contentValues.put("pkgName", appInfo.pkgName);
                contentValues.put(DatabaseTables.APPLICATIONS_PROC_NAME, appInfo.procName);
                contentValues.put("appName", appInfo.appName);
                contentValues.put("state", Integer.valueOf(appInfo.state));
                contentValues.put(DatabaseTables.APPLICATIONS_FLAG, Integer.valueOf(appInfo.flag));
                writableDatabase.insert(DatabaseTables.APPLICATIONS_TABLE_NAME, null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            writableDatabase.endTransaction();
            performanceDatabaseHelper.close();
        }
    }

    public static ArrayList<String> getLenovoHighLevelPkg(Context context) {
        ArrayList<String> list = new ArrayList<>();
        list.add(context.getPackageName());
        list.add("com.lenovo.magicplus");
        return list;
    }

    public static void fileUserWhiteListPolicy(HashMap<String, PolicyAppInfo> uaiMap, Context inContext) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper((Context) Utils.getSoftreference(inContext));
        Cursor cursor = dbh.getReadableDatabase().rawQuery("SELECT * FROM ApplicationsInfo WHERE state = 1", null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0) {
                    cursor.moveToFirst();
                    do {
                        String packageName = cursor.getString(cursor.getColumnIndex("pkgName"));
                        if (uaiMap.containsKey(packageName)) {
                            uaiMap.remove(packageName);
                        }
                    } while (cursor.moveToNext());
                }
                cursor.close();
            } catch (Exception e) {
                e.printStackTrace();
                dbh.close();
                return;
            } catch (Throwable th) {
                dbh.close();
                throw th;
            }
        }
        dbh.close();
    }

    public static boolean isInSysWhiteList(String procName, Context inContext) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper((Context) Utils.getSoftreference(inContext));
        Cursor cur = dbh.getReadableDatabase().query(DatabaseTables.WhiteList_TABLE_NAME, new String[]{DatabaseTables.WHITE_ID, "Process_Name"}, null, null, null, null, null);
        if (cur != null) {
            try {
                if (cur.getCount() > 0) {
                    cur.moveToFirst();
                    while (!cur.getString(cur.getColumnIndex("Process_Name")).equals(procName)) {
                        if (!cur.moveToNext()) {
                            cur.close();
                        }
                    }
                    dbh.close();
                    return true;
                }
            } catch (Exception e) {
                Log.i("DataLayerManager", "isInSysWhiteList()============start========");
                e.printStackTrace();
                Log.i("DataLayerManager", "isInSysWhiteList()============end========");
                dbh.close();
            } catch (Throwable th) {
                dbh.close();
                throw th;
            }
        }
        dbh.close();
        return false;
    }

    public static ArrayList<String> getUserWhiteList(Context inContext) {
        ArrayList<String> whiteList = new ArrayList<>();
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper((Context) Utils.getSoftreference(inContext));
        SQLiteDatabase db_r = dbh.getReadableDatabase();
        Cursor cursor = db_r.rawQuery("SELECT * FROM ApplicationsInfo WHERE state = 1", null);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                do {
                    whiteList.add(cursor.getString(cursor.getColumnIndex("pkgName")));
                } while (cursor.moveToNext());
            }
            cursor.close();
        }
        db_r.close();
        dbh.close();
        return whiteList;
    }

    public static int getExpertSuggest(Context context, String pkgname) {
        int suggest = -1;
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.providers.querypermissions/pkgname/" + pkgname + "/startup"), null, null, null, null);
            if (cursor != null) {
                Log.i("DataLayerManageBoot", "...getExpertSuggest...cursor.getCount == " + cursor.getCount());
                if (cursor.getCount() > 0) {
                    cursor.moveToFirst();
                    suggest = cursor.getInt(cursor.getColumnIndex("boot_auto_start"));
                }
                cursor.close();
            }
            if (suggest == 0) {
                suggest = 1;
            } else if (suggest == 1) {
                suggest = 2;
            }
            return suggest;
        } catch (Exception e) {
            return -1;
        }
    }

    public static void insertBootResolveInfo(Context context, String pkgName) {
        if (getBootComCount(context, pkgName) <= 0) {
            for (ResolveInfo resolve : context.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600)) {
                ApplicationInfo app = resolve.activityInfo.applicationInfo;
                if (app.packageName.equals(pkgName) && (app.flags & 1) == 0 && !app.packageName.equals(context.getApplicationContext().getPackageName())) {
                    int state = context.getPackageManager().getComponentEnabledSetting(new ComponentName(app.packageName, resolve.activityInfo.name));
                    insertBootCom(context, pkgName, resolve.activityInfo.name, ((Object) app.loadLabel(context.getPackageManager())) + "", app.processName, state + "", state + "");
                }
            }
        }
    }

    public static void insertBootCom(Context context, String pkgName, String clsName, String appName, String proName, String state, String customer_state) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        try {
            ContentValues values = new ContentValues();
            values.put("pkgName", pkgName);
            values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CLSNAME, clsName);
            values.put("appName", appName);
            values.put(DatabaseTables.BOOTCOMPLETED_ITEM_PRONAME, proName);
            values.put("state", state);
            values.put(DatabaseTables.BOOTCOMPLETED_ITEM_CUSTOMER_STATE, customer_state);
            db_r.insert(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, null, values);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbh.close();
        }
    }

    public static void removeBootCom(Context context, String pkgName) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        try {
            new ContentValues().put("pkgName", pkgName);
            db_r.delete(DatabaseTables.BOOTCOMPLETED_TABLE_NAME, "pkgName=?", new String[]{pkgName});
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbh.close();
        }
    }

    public static int getBootComCount(Context context, String pkgName) {
        int bootCount = 0;
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getReadableDatabase();
        Cursor cursor = db_r.rawQuery("select * from bootcom where pkgName=?", new String[]{pkgName});
        Log.i("DataLayerManageBoot", "SELECT * FROM BootCom WHERE pkgName = ?" + pkgName);
        if (cursor != null) {
            try {
                cursor.moveToNext();
                Log.i("DataLayerManageBoot", "cursor.getString(1) = " + cursor.getString(1));
                bootCount = cursor.getCount();
                cursor.close();
            } catch (Exception e) {
                e.printStackTrace();
                db_r.close();
                dbh.close();
            } catch (Throwable th) {
                db_r.close();
                dbh.close();
                throw th;
            }
        }
        db_r.close();
        dbh.close();
        return bootCount;
    }

    public static ArrayList<String> getWhiteListSuggestNotKill() {
        ArrayList<String> mWhiteListSuggestNotKill = new ArrayList<>();
        mWhiteListSuggestNotKill.add(Const.PACKAGENAME_LE_CLOUD);
        mWhiteListSuggestNotKill.add(Const.PACKAGENAME_LE_BATTERY);
        mWhiteListSuggestNotKill.add("com.duomi.android");
        mWhiteListSuggestNotKill.add("com.duomi.androidarizona");
        mWhiteListSuggestNotKill.add("com.android.music");
        mWhiteListSuggestNotKill.add("com.google.android.calendar");
        mWhiteListSuggestNotKill.add("com.android.settings");
        mWhiteListSuggestNotKill.add("com.lenovo.feedback");
        mWhiteListSuggestNotKill.add("com.lenovo.feedback2.client");
        mWhiteListSuggestNotKill.add("com.android.clock");
        mWhiteListSuggestNotKill.add("com.android.deskclock");
        mWhiteListSuggestNotKill.add("com.android.providers.downloads.ui");
        mWhiteListSuggestNotKill.add("com.lenovo.app.Calendar");
        mWhiteListSuggestNotKill.add("com.lenovo.leplus");
        mWhiteListSuggestNotKill.add("com.lenovo.meplus.mepluscore");
        mWhiteListSuggestNotKill.add("com.lenovo.deskclock");
        return mWhiteListSuggestNotKill;
    }

    public static ArrayList<String> getWhiteListNotKill(Context context) {
        ArrayList<String> mWhiteListNotKill = getWhiteListNotKillReal(context);
        if (mWhiteListNotKill.contains("com.lbe.security")) {
            mWhiteListNotKill.remove("com.lbe.security");
        }
        return mWhiteListNotKill;
    }

    public static ArrayList<String> getWhiteListNotKillReal(Context context) {
        ArrayList<String> mWhiteListNotKill = new ArrayList<>();
        mWhiteListNotKill.add(TrafficStatsService.PACKAGE_NAME);
        mWhiteListNotKill.add(NetConstant.TRAFFIC_PLUGIN);
        mWhiteListNotKill.add(Const.PACKAGENAME_APP_LOCK);
        mWhiteListNotKill.add("com.android.stk");
        mWhiteListNotKill.add("com.android.stk2");
        mWhiteListNotKill.add("com.lenovomobile.deskclock");
        mWhiteListNotKill.add("com.lenovo.worldtimewidget");
        ScanApplicationInfo.addInputMethod(context, mWhiteListNotKill);
        mWhiteListNotKill.addAll(ScanApplicationInfo.getInstalledLauncher(context));
        return mWhiteListNotKill;
    }

    public static ArrayList<String> getWhiteListNotKillForHidden(Context context) {
        ArrayList<String> mWhiteListNotKill = new ArrayList<>();
        mWhiteListNotKill.add(NetConstant.TRAFFIC_PLUGIN);
        mWhiteListNotKill.add(Const.PACKAGENAME_APP_LOCK);
        mWhiteListNotKill.add("com.android.stk");
        mWhiteListNotKill.add("com.android.stk2");
        mWhiteListNotKill.add("com.lenovomobile.deskclock");
        mWhiteListNotKill.add("com.lenovo.worldtimewidget");
        mWhiteListNotKill.add(Const.PACKAGENAME_LE_WIDGET4X1);
        mWhiteListNotKill.add("com.snowl.memorywidget");
        mWhiteListNotKill.add("android");
        mWhiteListNotKill.add("com.lenovo.leos.widgets.weather");
        mWhiteListNotKill.add("com.android.defcontainer");
        mWhiteListNotKill.add("com.android.providers.drm");
        mWhiteListNotKill.add("com.android.providers.media");
        mWhiteListNotKill.add("com.android.providers.downloads");
        ScanApplicationInfo.addInputMethod(context, mWhiteListNotKill);
        mWhiteListNotKill.addAll(ScanApplicationInfo.getInstalledLauncher(context));
        mWhiteListNotKill.add("com.android.clock");
        mWhiteListNotKill.add("com.android.deskclock");
        mWhiteListNotKill.add("com.android.providers.downloads.ui");
        return mWhiteListNotKill;
    }

    public static ArrayList<String> getListForResetKillTime(Context context) {
        ArrayList<String> list = new ArrayList<>();
        list.add(TrafficStatsService.PACKAGE_NAME);
        ScanApplicationInfo.addInputMethod(context, list);
        list.addAll(ScanApplicationInfo.getInstalledLauncher(context));
        return list;
    }

    public static void insertApplicationInfo(Context context, String pkgName) {
        int flag;
        Log.i("DataLayerManager", System.currentTimeMillis() + "---> insertApplicationInfo");
        if (getApplicationCount(context) == 0) {
            initApplication(context);
            return;
        }
        PackageManager pm = context.getPackageManager();
        List<ApplicationInfo> apps = pm.getInstalledApplications(0);
        ArrayList<String> mWhiteListSuggestNotKill = getWhiteListSuggestNotKill();
        ArrayList<String> mWhiteListNotKill = getWhiteListNotKill(context);
        for (ApplicationInfo app : apps) {
            if (app.packageName.equals(pkgName)) {
                if ((app.flags & 1) <= 0) {
                    flag = 0;
                } else {
                    flag = 1;
                }
                try {
                    String appName = ((Object) app.loadLabel(pm)) + "";
                    int state = 0;
                    if (mWhiteListSuggestNotKill.contains(pkgName) || mWhiteListNotKill.contains(pkgName)) {
                        state = 1;
                    }
                    insertApplication(context, pkgName, appName, app.processName, state, flag);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static int getApplicationCount(Context context) {
        int count = 0;
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        Cursor cursor = dbh.getReadableDatabase().rawQuery("SELECT * FROM ApplicationsInfo", null);
        if (cursor != null) {
            try {
                count = cursor.getCount();
                cursor.close();
            } catch (Exception e) {
                e.printStackTrace();
                dbh.close();
            } catch (Throwable th) {
                dbh.close();
                throw th;
            }
        }
        dbh.close();
        return count;
    }

    public static void initApplication(final Context context) {
        new Thread(new Runnable() {
            /* class com.lenovo.performancecenter.framework.DataLayerManager.AnonymousClass1 */

            public final void run() {
                int flag;
                Log.i("DataLayerManager", System.currentTimeMillis() + "initApplication ---> ");
                PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
                SQLiteDatabase db_r = dbh.getReadableDatabase();
                Cursor cursor = db_r.rawQuery("SELECT * FROM ApplicationsInfo", null);
                if (cursor != null) {
                    if (cursor.getCount() == 0) {
                        Log.i("DataLayerManager", System.currentTimeMillis() + "initApplication ---> cursor.getCount == 0");
                        ArrayList<String> mWhiteListSuggestNotKill = DataLayerManager.getWhiteListSuggestNotKill();
                        ArrayList<String> mWhiteListNotKill = DataLayerManager.getWhiteListNotKill(context);
                        ArrayList<AppInfo> insertValueList = new ArrayList<>();
                        PackageManager pm = context.getPackageManager();
                        for (ApplicationInfo appInfo : pm.getInstalledApplications(0)) {
                            if ((appInfo.flags & 1) <= 0) {
                                flag = 0;
                            } else {
                                flag = 1;
                            }
                            String pkgName = appInfo.packageName;
                            AppInfo info = new AppInfo(pkgName, ((Object) appInfo.loadLabel(pm)) + "", appInfo.processName, null, 0, flag);
                            if (mWhiteListSuggestNotKill.contains(pkgName) || mWhiteListNotKill.contains(pkgName)) {
                                info.state = 1;
                            }
                            insertValueList.add(info);
                        }
                        DataLayerManager.a(context, insertValueList);
                    }
                    cursor.close();
                }
                db_r.close();
                dbh.close();
            }
        }).start();
    }

    public static void insertApplication(Context context, String pkgName, String appName, String proName, int state, int flag) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        try {
            ContentValues values = new ContentValues();
            values.put("pkgName", pkgName);
            values.put(DatabaseTables.APPLICATIONS_PROC_NAME, proName);
            values.put("appName", appName);
            values.put("state", Integer.valueOf(state));
            values.put(DatabaseTables.APPLICATIONS_FLAG, Integer.valueOf(flag));
            db_r.insert(DatabaseTables.APPLICATIONS_TABLE_NAME, null, values);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbh.close();
        }
    }

    public static void updateApplication(Context context, String pkgName, int state) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        try {
            ContentValues values = new ContentValues();
            values.put("pkgName", pkgName);
            values.put("state", Integer.valueOf(state));
            db_r.update(DatabaseTables.APPLICATIONS_TABLE_NAME, values, "pkgName=?", new String[]{pkgName});
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbh.close();
        }
    }

    public static void updateApplicationList(Context context, ArrayList<String> pkgNameList, int state) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        db_r.beginTransaction();
        try {
            Iterator i$ = pkgNameList.iterator();
            while (i$.hasNext()) {
                String pkgName = i$.next();
                ContentValues values = new ContentValues();
                values.put("pkgName", pkgName);
                values.put("state", Integer.valueOf(state));
                db_r.update(DatabaseTables.APPLICATIONS_TABLE_NAME, values, "pkgName=?", new String[]{pkgName});
            }
            db_r.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db_r.endTransaction();
            dbh.close();
        }
    }

    public static void updateApplicationList(Context context, HashMap<String, int[]> map) {
        PerformanceDatabaseHelper dbh = new PerformanceDatabaseHelper(context);
        SQLiteDatabase db_r = dbh.getWritableDatabase();
        db_r.beginTransaction();
        try {
            for (Map.Entry<String, int[]> entry : map.entrySet()) {
                ContentValues values = new ContentValues();
                values.put("pkgName", entry.getKey());
                values.put("state", Integer.valueOf(entry.getValue()[0]));
                db_r.update(DatabaseTables.APPLICATIONS_TABLE_NAME, values, "pkgName=?", new String[]{entry.getKey()});
            }
            db_r.setTransactionSuccessful();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db_r.endTransaction();
            dbh.close();
        }
    }

    public static class CacheInfo {
        public long appCacheSize;
        public Bitmap appIcon;
        public String appName;
        public String cacheSize;
        public String pkgName;

        public CacheInfo(String pkgName2, String appName2, Bitmap appIcon2, String cacheSize2) {
            this.pkgName = pkgName2;
            this.appName = appName2;
            this.appIcon = appIcon2;
            this.cacheSize = cacheSize2;
        }
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        Bitmap bitmap = Bitmap.createBitmap(a, a, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, a, a);
        drawable.draw(canvas);
        return bitmap;
    }
}
