package com.lenovo.safecenter.database;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.AppPerInfo;
import com.lenovo.safecenter.support.AppUploadInfo;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.Untils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.httpclient.cookie.Cookie2;

public class AppDatabase extends SQLiteOpenHelper {
    public static final String APP_NAME = "name";
    public static final String APP_PER_NAME = "pername";
    public static final String APP_PER_TYPE = "apptype";
    public static final String APP_PKG_NAME = "packagename";
    public static final String APP_UPLOAD = "isupload";
    public static final String CONTENT = "content";
    public static final String DATEBASE_NAME = "safecenterDB";
    public static final String DB_ACTION = "action";
    public static final String DB_APP = "appname";
    public static final String DB_APPID = "_id";
    public static final String DB_APP_CALENDAR = "calendar";
    public static final String DB_APP_CALL = "call_phone";
    public static final String DB_APP_CAMERA = "camera";
    public static final String DB_APP_CANTACT = "contact";
    public static final String DB_APP_HISTORY = "history";
    public static final String DB_APP_INTERNET = "internet";
    public static final String DB_APP_LOCATION = "location";
    public static final String DB_APP_MESSAGE = "readmessage";
    public static final String DB_APP_PHONE = "receive_phone";
    public static final String DB_APP_RECORD = "record_audio";
    public static final String DB_APP_SELECTED = "app_selected";
    public static final String DB_APP_SENDMESSAGE = "sendmessage";
    public static final String DB_APP_WCANTACT = "writecontact";
    public static final String DB_APP_WMESSAGE = "writemessage";
    public static final String DB_DISABLED = "disabled";
    public static final String DB_HIDE_APPS = "hide_apps";
    public static final String DB_LOG_HARASS = "safe_log_harass";
    public static final String DB_LOG_PRIVACY = "safe_log_privacy";
    public static final String DB_LOG_SELECTED = "log_selected";
    public static final String DB_LOG_TARIFF = "safe_log_tariff";
    public static final String DB_PASSWORD = "password";
    public static final String DB_SELECTED = "selected";
    public static final String DB_SUGGEST = "suggest";
    public static final String DB_TRUSTED = "trusted";
    public static final String DB_TYPE = "type";
    public static final String DB_UID = "uid";
    public static final String GETAPP = "uid>0";
    public static final String GETSELECTED = "selected=1";
    public static final String HARASS_CALL = "harass_call";
    public static final String HARASS_SMS = "harass_sms";
    public static final String HAS_SEE = "hassee";
    public static final int INDEX_APPTYPE = 4;
    public static final int INDEX_NAME = 6;
    public static final int INDEX_PACKAGE = 3;
    public static final int INDEX_PERNAME = 5;
    public static final int INDEX_SELECTED = 2;
    public static final int INDEX_UID = 1;
    public static final String ISUPLOAD = "isupload";
    public static int MAX_LOG_COUNT = 199;
    public static final String NUMBER = "number";
    public static final String PERM_TYPE_DEVICE = "device";
    public static final String PERM_TYPE_INSTALLAPP = "install_app";
    public static final String PERM_TYPE_LOCATION = "location";
    public static final String PERM_TYPE_PRIVCY = "privacy";
    public static final String PERM_TYPE_TARIFF = "tariff";
    public static final String PER_NAME = "pername";
    public static final String SORTBYUID = "uid";
    public static final String TIME = "time";
    public static final String TYPE = "mms_type";
    public static final int VERSION = 12;
    private Context a;

    public AppDatabase(Context context) {
        super(context, DATEBASE_NAME, (SQLiteDatabase.CursorFactory) null, 12);
        this.a = context;
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS appname (_id INTEGER PRIMARY KEY,uid INTEGER,selected INTEGER,packagename VARCHAR,apptype VARCHAR,pername VARCHAR,name VARCHAR,isupload INTEGER,trusted INTEGER,suggest INTEGER default -1)");
        db.execSQL("CREATE TABLE IF NOT EXISTS safe_log_tariff (_id INTEGER PRIMARY KEY,name VARCHAR,pername VARCHAR,packagename VARCHAR,action INTEGER,log_selected INTEGER,time VARCHAR,number VARCHAR,content VARCHAR,isupload INTEGER,type VARCHAR)");
        db.execSQL("CREATE TABLE IF NOT EXISTS safe_log_privacy (_id INTEGER PRIMARY KEY,name VARCHAR,pername VARCHAR,packagename VARCHAR,action INTEGER,log_selected INTEGER,time VARCHAR,number VARCHAR,content VARCHAR,isupload INTEGER,type VARCHAR)");
        db.execSQL("CREATE TABLE IF NOT EXISTS safe_log_harass (_id INTEGER PRIMARY KEY,type VARCHAR,log_selected INTEGER,time VARCHAR,number VARCHAR,mms_type VARCHAR,content VARCHAR,isupload INTEGER, fromtype INTEGER,hassee INTEGER)");
        db.execSQL("CREATE TABLE IF NOT EXISTS password(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS passwordNew(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)");
        a(db);
        db.execSQL("CREATE TABLE IF NOT EXISTS appuploadinfo(_id integer primary key autoincrement,appname varchar,version varchar,path varchar,packagesha1 varchar,pkgname varchar,certmd5 varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS hide_apps(_id integer primary key autoincrement,packagename varchar,appname varchar,hidetype integer)");
        db.execSQL("CREATE TABLE IF NOT EXISTS whiteperson(_id integer primary key autoincrement,phonenumber varchar,name varchar,addtime varchar,realnumber varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS smslist(_id integer primary key autoincrement,name varchar,phonenumber varchar,smstype Integer,smscontent varchar,addtime varchar,isread Integer)");
        db.execSQL("CREATE TABLE IF NOT EXISTS calllist(_id integer primary key autoincrement,name varchar,phonenumber varchar,calltype Integer,addtime varchar,isread Integer)");
        db.execSQL("CREATE TABLE IF NOT EXISTS trafficCheck(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS harassphone(_id integer primary key autoincrement,phonenumber varchar,harasscount integer,addtime varchar)");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.i("test", "AppDatabase onUpgrade start...");
        db.execSQL("CREATE TABLE IF NOT EXISTS trafficCheck(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS signcall(_id integer primary key autoincrement,phonenumber varchar,bigtype integer,smalltype integer,isupload integer,calltotal integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS netsigntable(_id integer primary key autoincrement,phonenumber varchar,signtype integer,signcount integer,addtime varchar)");
        db.execSQL("CREATE TABLE IF NOT EXISTS harassphone(_id integer primary key autoincrement,phonenumber varchar,harasscount integer,addtime varchar)");
        if (oldVersion <= 9) {
            String str = "";
            Cursor query = db.query("password", null, null, null, null, null, null);
            if (query.moveToFirst()) {
                str = query.getString(1);
            }
            query.close();
            Object[] objArr = new String[2];
            Log.i("wu0wu", "onUpgrade() oldVersion=" + oldVersion);
            if (oldVersion >= 5) {
                Object[] objArr2 = new String[2];
                Cursor query2 = db.query("password", null, null, null, null, null, null);
                if (query2.moveToFirst()) {
                    objArr2[0] = query2.getString(2);
                    objArr2[1] = query2.getString(3);
                }
                query2.close();
                if (!TextUtils.isEmpty(objArr2[1])) {
                    objArr2[1] = Untils.jiaMi(objArr2[1], PwdUtil.key);
                }
                objArr = objArr2;
            }
            if (!TextUtils.isEmpty(str)) {
                str = Untils.jiaMi(str, PwdUtil.key);
            }
            db.execSQL("DROP TABLE password");
            db.execSQL("CREATE TABLE IF NOT EXISTS password(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)");
            a(db);
            Object obj = objArr[0];
            Object obj2 = objArr[1];
            b(db);
            if (!TextUtils.isEmpty(str)) {
                db.execSQL("insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?)", new String[]{str, obj, obj2});
            }
        }
        changeAppnameTable(db, oldVersion);
        if (oldVersion < 11) {
            Cursor cursor = db.rawQuery("select packagename from appname where trusted=1", null);
            while (cursor.moveToNext()) {
                db.execSQL("update appname set trusted=1, selected=0 where packagename=? and trusted=0", new String[]{cursor.getString(0)});
            }
            cursor.close();
        }
        if (oldVersion < 12) {
            ContentResolver resolver = this.a.getContentResolver();
            Cursor cursor2 = db.rawQuery("select packagename from appname group by uid", null);
            while (cursor2.moveToNext()) {
                String pkg = cursor2.getString(0);
                if (AppUtil.checkPkgExit(resolver, pkg)) {
                    db.execSQL("update appname set suggest=0 where packagename=?", new String[]{pkg});
                    Log.d("test", "update " + pkg + " 0");
                } else {
                    db.execSQL("update appname set suggest=-1 where packagename=?", new String[]{pkg});
                    Log.d("test", "update " + pkg + " -1");
                }
            }
        }
        Log.d("test", "onUpgrade end... " + db.getVersion() + " new: " + newVersion);
    }

    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Settings.System.putInt(this.a.getContentResolver(), "intercall_mode_type", 0);
        Log.d("test", "onDowngrade newVersion: " + newVersion);
    }

    public synchronized SQLiteDatabase getReadableDatabase() {
        return super.getReadableDatabase();
    }

    public synchronized SQLiteDatabase getWritableDatabase() {
        return super.getWritableDatabase();
    }

    public void insertHarassPhone(String number) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from harassphone where phonenumber=?", new String[]{number});
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                db.execSQL("update harassphone set harasscount=?,addtime=? where phonenumber=?", new String[]{String.valueOf(cursor.getInt(cursor.getColumnIndex("harasscount")) + 1), String.valueOf(System.currentTimeMillis()), number});
            } else {
                db.execSQL("insert into harassphone(phonenumber,harasscount,addtime) values(?,?,?)", new Object[]{number, 1, String.valueOf(System.currentTimeMillis())});
            }
            cursor.close();
        }
        db.close();
    }

    public int getIncomcount(String number) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from harassphone where phonenumber=?", new String[]{number});
        int count = 0;
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            count = cursor.getInt(cursor.getColumnIndex("harasscount"));
        }
        cursor.close();
        db.close();
        return count;
    }

    private static void a(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS checkpwd(result Integer)");
        db.execSQL("insert into checkpwd values(0)");
        db.execSQL("insert into checkpwd values(1)");
    }

    private static void b(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS passwordNew");
        db.execSQL("CREATE TABLE IF NOT EXISTS passwordNew(_id integer primary key autoincrement,pwd varchar,pwdQuestion varchar,pwdAnswer varchar)");
    }

    public void changeAppnameTable(SQLiteDatabase db, int oldVersion) {
        if (oldVersion < 7) {
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.a);
            SharedPreferences.Editor editor = prefs.edit();
            db.execSQL("DROP TABLE appname");
            db.execSQL("CREATE TABLE IF NOT EXISTS appname (_id INTEGER PRIMARY KEY,uid INTEGER,selected INTEGER,packagename VARCHAR,apptype VARCHAR,pername VARCHAR,name VARCHAR,isupload INTEGER,trusted INTEGER,suggest INTEGER)");
            db.execSQL("delete from safe_log_tariff");
            db.execSQL("delete from safe_log_privacy");
            editor.putInt("tariff_logs", 0).putInt("privacy_logs", 0).putBoolean("firstBoot", true).commit();
            if (!prefs.getBoolean("tariff", true)) {
                editor.putBoolean("tariff", true).commit();
            }
            if (!prefs.getBoolean(Const.KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, true)) {
                editor.putBoolean(Const.KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, true).commit();
            }
        }
    }

    public List<SignCall> getSignList() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from signcall order by _id desc", null);
        List<SignCall> list = new ArrayList<>();
        while (cursor.moveToNext()) {
            SignCall info = new SignCall();
            info.setNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            info.setAddTime(cursor.getString(cursor.getColumnIndex("addtime")));
            info.setbType(cursor.getInt(cursor.getColumnIndex("bigtype")));
            info.setsType(cursor.getInt(cursor.getColumnIndex("smalltype")));
            info.setTotalCall(cursor.getInt(cursor.getColumnIndex("calltotal")));
            info.setIsUpload(cursor.getInt(cursor.getColumnIndex("isupload")));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public int getSignCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id from signcall order by _id desc", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public void deleSafeMode() {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        db.execSQL("delete from whiteperson");
        db.execSQL("delete from smslist");
        db.execSQL("delete from calllist");
        db.execSQL("delete from safe_log_harass");
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void insertUid(int uid) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("insert into uids(uid) values(?)", new Object[]{Integer.valueOf(uid)});
        db.close();
    }

    public void deleteUid(int uid) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from uids where uid=?", new Object[]{Integer.valueOf(uid)});
        db.close();
    }

    public int[] queryAllUids() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.query("uids", null, null, null, null, null, null);
        int[] selectedUids = new int[cursor.getCount()];
        cursor.moveToFirst();
        for (int i = 0; i < cursor.getCount(); i++) {
            selectedUids[i] = cursor.getInt(1);
            cursor.moveToNext();
        }
        cursor.close();
        db.close();
        return selectedUids;
    }

    public void deletePwd(String password) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from passwordNew where pwd=?", new String[]{password});
        db.close();
    }

    public String queryPwd() {
        String password = "";
        SQLiteDatabase db = getReadableDatabase();
        if (db.isDbLockedByCurrentThread() || db.isDbLockedByOtherThreads()) {
            return password;
        }
        Cursor cursor = db.query("passwordNew", null, null, null, null, null, null);
        if (cursor.moveToFirst()) {
            password = cursor.getString(1);
        }
        cursor.close();
        db.close();
        return password;
    }

    public void insertPwdQuestionAndAnswer(String password, String question, String answer) {
        SQLiteDatabase db = getWritableDatabase();
        b(db);
        db.execSQL("insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?)", new String[]{password, question, answer});
        db.close();
    }

    public void insertPwdQuestionAndAnswer(String password, String question, String answer, String appCheck) {
        SQLiteDatabase db = getWritableDatabase();
        b(db);
        db.execSQL("insert into passwordNew(pwd,pwdQuestion,pwdAnswer) values(?,?,?,?)", new String[]{password, question, answer, appCheck});
        db.close();
    }

    public String[] queryPwdQuestionAndAnswer() {
        String[] pwdAnswer = new String[2];
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.query("passwordNew", null, null, null, null, null, null);
        if (cursor.moveToFirst()) {
            pwdAnswer[0] = cursor.getString(2);
            pwdAnswer[1] = cursor.getString(3);
        }
        cursor.close();
        db.close();
        return pwdAnswer;
    }

    public void insertApp(SQLiteDatabase db, AppInfo app) {
        ContentValues value = new ContentValues();
        value.put("uid", Integer.valueOf(app.uid));
        value.put("name", app.name);
        value.put(DB_SELECTED, Integer.valueOf(app.selected));
        value.put(APP_PKG_NAME, app.packageName);
        value.put(APP_PER_TYPE, app.appType);
        value.put("pername", app.perName);
        value.put(DB_TRUSTED, Integer.valueOf(app.trusted));
        value.put("isupload", Integer.valueOf(app.isupload));
        db.insert(DB_APP, "name", value);
    }

    public void updateApp_isupload(String pkgname, int isupload) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update appname set isupload=? where packagename=?", new Object[]{Integer.valueOf(isupload), pkgname});
        db.close();
    }

    public int getApp_isupload(String pkgname) {
        SQLiteDatabase db = getReadableDatabase();
        int isupload = 0;
        Cursor cursor = db.rawQuery("select isupload from appname where packagename=?", new String[]{pkgname});
        if (cursor.moveToNext()) {
            isupload = cursor.getInt(0);
        }
        cursor.close();
        db.close();
        return isupload;
    }

    public void updateApp(AppInfo app, String typeName) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update appname set selected=? where uid=? and apptype=?", new Object[]{Integer.valueOf(app.selected), Integer.valueOf(app.uid), typeName});
        db.close();
    }

    public void updateApp(int selected, int uid, String typeName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update appname set selected=? where uid=? and apptype=?", new Object[]{Integer.valueOf(selected), Integer.valueOf(uid), typeName});
        db.close();
    }

    public void updateApp(ArrayList<AppInfo> applist, int selected) {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        try {
            if (applist.size() != 0) {
                Iterator i$ = applist.iterator();
                while (i$.hasNext()) {
                    AppInfo app = i$.next();
                    if (app.selected != selected) {
                        db.execSQL("update appname set selected=? where uid=? and apptype=?", new Object[]{Integer.valueOf(selected), Integer.valueOf(app.uid), app.appType});
                        app.selected = selected;
                    }
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                db.close();
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
    }

    public void updateAppByPername(int selected, int trusted, int uid, String perName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update appname set selected=?, trusted=? where uid=? and pername=?", new Object[]{Integer.valueOf(selected), Integer.valueOf(trusted), Integer.valueOf(uid), perName});
        db.close();
    }

    public ArrayList<String> queryAllPermType(int uid) {
        SQLiteDatabase db = getReadableDatabase();
        ArrayList<String> types = new ArrayList<>();
        Cursor cursor = db.rawQuery("select apptype from appname where uid=?", new String[]{String.valueOf(uid)});
        while (cursor.moveToNext()) {
            String pername = cursor.getString(0);
            if (!types.contains(pername)) {
                types.add(pername);
            }
        }
        cursor.close();
        db.close();
        return types;
    }

    public String queryAllPermType(String pkgname, String type) {
        String types = "";
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select apptype from appname where packagename=?", new String[]{pkgname});
        while (cursor.moveToNext()) {
            String apptype = cursor.getString(0);
            if (!types.contains(apptype)) {
                types = (types + apptype) + ",";
            }
        }
        cursor.close();
        db.close();
        return types;
    }

    public String getAllPermDescription(Context context, String pkgname, String type) {
        String des = "";
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select pername from appname where packagename=? and apptype=?", new String[]{pkgname, type});
        while (cursor.moveToNext()) {
            des = (des + AppUtil.getPerDescription(context, cursor.getString(0))) + ", ";
        }
        String des2 = removeSameString(des);
        cursor.close();
        db.close();
        return des2;
    }

    public String removeSameString(String des) {
        Set<String> mLinkedSet = new LinkedHashSet<>();
        String[] strArray = des.split(", ");
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < strArray.length; i++) {
            if (!mLinkedSet.contains(strArray[i])) {
                mLinkedSet.add(strArray[i]);
                sb.append(strArray[i]);
                sb.append(", ");
            }
        }
        return sb.toString().substring(0, sb.toString().length() - 2);
    }

    public ArrayList<String> queryAllPermName(String pkgName, String type) {
        ArrayList<String> perms = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select pername from appname where packagename=? and apptype=?", new String[]{pkgName, type});
        while (cursor.moveToNext()) {
            perms.add(cursor.getString(0));
        }
        cursor.close();
        db.close();
        return perms;
    }

    public String queryPerEnable(String pkgName, String type) {
        String result = null;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select selected from appname where packagename=? and apptype=?", new String[]{pkgName, type});
        if (cursor.moveToFirst()) {
            result = cursor.getString(0);
        }
        cursor.close();
        db.close();
        return result;
    }

    public String queryAppPerm(String pkgName, String perName) {
        String result = null;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select selected from appname where packagename=? and pername=?", new String[]{pkgName, perName});
        if (cursor.moveToFirst()) {
            result = cursor.getString(0);
        }
        cursor.close();
        db.close();
        return result;
    }

    public synchronized ArrayList<AppInfo> loadApps(Context context, String typeName, boolean root) {
        ArrayList<AppInfo> appList;
        Cursor cApps;
        PackageManager pm = context.getPackageManager();
        ContentResolver resolver = context.getContentResolver();
        SQLiteDatabase db = getReadableDatabase();
        appList = new ArrayList<>();
        if (root) {
            cApps = db.rawQuery("select * from appname where apptype=? and trusted=0 order by selected desc, uid", new String[]{typeName});
        } else {
            cApps = db.rawQuery("select * from appname where apptype=? order by selected desc, uid", new String[]{typeName});
        }
        while (cApps.moveToNext()) {
            try {
                ApplicationInfo info = pm.getApplicationInfo(cApps.getString(3), 8192);
                AppInfo app = new AppInfo();
                app.uid = cApps.getInt(1);
                if (AppUtil.isNotExist(appList, app)) {
                    app.name = cApps.getString(6);
                    if (root) {
                        app.selected = cApps.getInt(2);
                    } else {
                        app.selected = 0;
                    }
                    app.packageName = cApps.getString(3);
                    app.applicationInfo = info;
                    app.appType = cApps.getString(4);
                    app.perName = cApps.getString(5);
                    app.permDes = getAllPermDescription(context, app.packageName, app.appType);
                    app.suggest = Integer.valueOf(AppUtil.getAppPermissionConfigurs(resolver, app.packageName).get(app.appType)).intValue();
                    appList.add(app);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        cApps.close();
        db.close();
        return appList;
    }

    public List<String> getReceiveSmsPkgs() {
        ArrayList<String> list = new ArrayList<>();
        try {
            SQLiteDatabase db = getReadableDatabase();
            Cursor cApps = db.rawQuery("select packagename from appname where pername=? order by uid", new String[]{"android.permission.RECEIVE_SMS"});
            if (cApps != null) {
                while (cApps.moveToNext()) {
                    list.add(cApps.getString(0));
                }
                cApps.close();
            }
            db.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public int queryCount(String typeName) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select count(distinct uid) from appname where apptype=? ", new String[]{typeName});
        cursor.moveToFirst();
        int count = cursor.getInt(0);
        cursor.close();
        db.close();
        return count;
    }

    public int queryCountCanUse(String typeName) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select count(distinct uid) from appname where apptype=? and selected=0", new String[]{typeName});
        cursor.moveToFirst();
        int count = cursor.getInt(0);
        cursor.close();
        db.close();
        return count;
    }

    public void deleteDbForUninstall(String packageName) {
        SQLiteDatabase db = getWritableDatabase();
        int uid = 0;
        Cursor cursor = db.rawQuery("select uid from appname where packagename = ?", new String[]{packageName});
        if (cursor.moveToFirst()) {
            uid = cursor.getInt(cursor.getColumnIndex("uid"));
        }
        if (uid != 0) {
            db.execSQL("delete from appname where uid =?", new Object[]{Integer.valueOf(uid)});
        }
        cursor.close();
        db.close();
    }

    public void deletePkgFormDb() {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from appname where pername=?", new String[]{"android.permission.PROCESS_OUTGOING_CALLS"});
        db.execSQL("delete from appname where pername=?", new String[]{"android.permission.READ_PHONE_STATE"});
        db.close();
    }

    public int getUid(String packageName) {
        SQLiteDatabase db = getReadableDatabase();
        int uid = 0;
        Cursor cursor = db.rawQuery("select uid from appname where packagename = ?", new String[]{packageName});
        if (cursor.moveToFirst()) {
            uid = cursor.getInt(cursor.getColumnIndex("uid"));
        }
        cursor.close();
        db.close();
        return uid;
    }

    public ArrayList<SafeLog> loadLogs(String tableName, PackageManager pm) {
        SQLiteDatabase db = getReadableDatabase();
        ArrayList<SafeLog> logList = new ArrayList<>();
        Cursor cLogs = db.rawQuery("select * from " + tableName + " order by _id desc", null);
        while (cLogs.moveToNext()) {
            String pername = cLogs.getString(2);
            if (pername != null) {
                SafeLog log = new SafeLog();
                log.id = cLogs.getInt(0);
                log.appName = cLogs.getString(1);
                log.permName = pername;
                log.packageName = cLogs.getString(3);
                log.action = cLogs.getInt(4);
                log.logSelected = cLogs.getInt(5);
                log.time = cLogs.getString(6);
                log.number = cLogs.getString(7);
                log.content = cLogs.getString(8);
                log.isUpload = cLogs.getInt(9);
                log.type = cLogs.getString(10);
                logList.add(log);
            }
        }
        cLogs.close();
        db.close();
        return logList;
    }

    public static String formatTime(String time, Context context) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy.M.dd.HH.mm");
        String dateValue = sdf.format(Long.valueOf(System.currentTimeMillis()));
        String datatime = sdf.format(Long.valueOf(Long.parseLong(time)));
        String[] nowTimeArray = dateValue.split("\\.");
        String[] timeArray = datatime.split("\\.");
        if (nowTimeArray[0].equals(timeArray[0]) && nowTimeArray[1].equals(timeArray[1]) && nowTimeArray[2].equals(timeArray[2])) {
            return timeArray[3] + c.N + timeArray[4];
        }
        if (nowTimeArray[0].equals(timeArray[0])) {
            return timeArray[1] + "-" + timeArray[2];
        }
        if (!nowTimeArray[0].equals(timeArray[0])) {
            return timeArray[0] + "." + timeArray[1] + "." + timeArray[2];
        }
        return null;
    }

    public void insertLog(SafeLog safeLog, String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues value = new ContentValues();
        value.put("name", safeLog.appName);
        value.put("pername", safeLog.permName);
        value.put(TIME, safeLog.time);
        value.put(APP_PKG_NAME, safeLog.packageName);
        value.put("action", Integer.valueOf(safeLog.action));
        value.put(DB_LOG_SELECTED, Integer.valueOf(safeLog.logSelected));
        value.put(NUMBER, safeLog.number);
        value.put(CONTENT, safeLog.content);
        value.put("isupload", Integer.valueOf(safeLog.isUpload));
        value.put("type", safeLog.type);
        db.insert(tableName, "name", value);
        db.close();
    }

    public void insertHarassLog(SafeLog safeLog) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues value = new ContentValues();
        value.put("type", safeLog.type);
        value.put(TIME, safeLog.time);
        value.put(DB_LOG_SELECTED, Integer.valueOf(safeLog.logSelected));
        value.put(NUMBER, safeLog.number);
        value.put(CONTENT, safeLog.content);
        value.put("isupload", Integer.valueOf(safeLog.isUpload));
        value.put(TYPE, safeLog.mms_type);
        value.put(HAS_SEE, Integer.valueOf(safeLog.hassee));
        value.put("fromtype", Integer.valueOf(safeLog.fromtype));
        db.insert(DB_LOG_HARASS, "name", value);
        db.close();
    }

    public void deleteLogForTableName(String tabelName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from " + tabelName);
        db.close();
    }

    public void updateSafeLogForTable(SafeLog safeLog, String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update " + tableName + " set log_selected=? where _id=? ", new Object[]{Integer.valueOf(safeLog.logSelected), Integer.valueOf(safeLog.id)});
        db.close();
    }

    public void updateSafeLogUpload(SafeLog safeLog, String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update " + tableName + " set isupload=? where _id=? ", new Object[]{Integer.valueOf(safeLog.isUpload), Integer.valueOf(safeLog.id)});
        db.close();
    }

    public void updateSafeLogUpload(ArrayList<SafeLog> list, String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            SafeLog safeLog = i$.next();
            db.execSQL("update " + tableName + " set isupload=? where _id=? ", new Object[]{Integer.valueOf(safeLog.isUpload), Integer.valueOf(safeLog.id)});
        }
        db.close();
    }

    public void deleteLogItemsforTable(String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from " + tableName + " where log_selected=1");
        db.close();
    }

    public void deleteLogItemsforTable(String tableName, List<SafeLog> list) {
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        try {
            if (list.size() != 0) {
                Iterator i$ = list.iterator();
                while (i$.hasNext()) {
                    db.execSQL("delete from " + tableName + " where _id=?", new Object[]{Integer.valueOf(i$.next().id)});
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                db.close();
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
    }

    public void updateLogForTable(String tableName) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update " + tableName + " set log_selected=?", new Object[]{0});
        db.close();
    }

    public void deleteLogForTable(String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from " + tableName);
        db.close();
    }

    public void deleteHarassLog(int id) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from safe_log_harass where _id=?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public int getHarassLogCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id from safe_log_harass ", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public int getHarassLogCount(String type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id from safe_log_harass where type=? ", new String[]{type});
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public ArrayList<SafeLog> loadHarassLog(String type) {
        SQLiteDatabase db = getReadableDatabase();
        ArrayList<SafeLog> logList = new ArrayList<>();
        Cursor cLogs = db.rawQuery("select * from safe_log_harass where type=? order by _id desc", new String[]{type});
        while (cLogs.moveToNext()) {
            SafeLog log = new SafeLog();
            log.id = cLogs.getInt(0);
            log.type = cLogs.getString(1);
            log.logSelected = cLogs.getInt(2);
            log.time = cLogs.getString(3);
            log.number = cLogs.getString(4);
            log.mms_type = cLogs.getString(5);
            log.content = cLogs.getString(6);
            log.isUpload = cLogs.getInt(7);
            log.fromtype = cLogs.getInt(cLogs.getColumnIndex("fromtype"));
            log.hassee = 0;
            logList.add(log);
        }
        cLogs.close();
        db.close();
        return logList;
    }

    public SafeLog getLastHarassLog(String type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cLogs = db.rawQuery("select * from safe_log_harass where type=? order by _id desc limit 1", new String[]{type});
        if (cLogs.getCount() == 0) {
            cLogs.close();
            db.close();
            return null;
        }
        cLogs.moveToFirst();
        SafeLog log = new SafeLog();
        log.id = cLogs.getInt(0);
        log.type = cLogs.getString(1);
        log.logSelected = cLogs.getInt(2);
        log.time = cLogs.getString(3);
        log.number = cLogs.getString(4);
        log.mms_type = cLogs.getString(5);
        log.content = cLogs.getString(6);
        log.isUpload = cLogs.getInt(7);
        log.fromtype = cLogs.getInt(cLogs.getColumnIndex("fromtype"));
        log.hassee = 0;
        cLogs.close();
        db.close();
        return log;
    }

    public void updatehasSee(String type) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update safe_log_harass set hassee=0 where type=?", new String[]{type});
        db.close();
    }

    public static String formatTime1(String time, Context context) {
        String[] timeArray = time.split("\\.");
        return timeArray[1] + context.getString(R.string.time_m) + timeArray[2] + context.getString(R.string.time_d) + " " + timeArray[3] + c.N + timeArray[4];
    }

    public void insertAppUpload(AppUploadInfo info) {
        SQLiteDatabase db = getReadableDatabase();
        AppUploadInfo AppInfo = getAppUploadinfo(info.getPkgName());
        Log.i("db", db + "insertAppUpload");
        if (AppInfo == null) {
            db.execSQL("insert into appuploadinfo(appname,version,packagesha1,pkgname,path,certmd5) values(?,?,?,?,?,?)", new Object[]{info.getAppName(), info.getVersion(), info.getPackagesha1(), info.getPkgName(), info.getPath(), info.getCertmd5()});
        } else {
            db.execSQL("update appuploadinfo set appname=?,version=?,certmd5=?,path=?,packagesha1=? where pkgname=?", new Object[]{info.getAppName(), info.getVersion(), info.getCertmd5(), info.getPath(), info.getPackagesha1(), info.getPkgName()});
        }
        db.close();
    }

    public AppUploadInfo getAppUploadinfo(String pkgName) {
        SQLiteDatabase db = getReadableDatabase();
        AppUploadInfo info = null;
        Log.i("db", db + "getAppUploadinfo");
        Cursor cursor = db.rawQuery("select * from appuploadinfo where pkgname=?", new String[]{pkgName});
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            info = new AppUploadInfo();
            info.setAppName(cursor.getString(cursor.getColumnIndex(DB_APP)));
            info.setPackagesha1(cursor.getString(cursor.getColumnIndex("packagesha1")));
            info.setPath(cursor.getString(cursor.getColumnIndex(Cookie2.PATH)));
            info.setCertmd5(cursor.getString(cursor.getColumnIndex("certmd5")));
            info.setVersion(cursor.getString(cursor.getColumnIndex("version")));
            info.setPkgName(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)));
            info.setId(cursor.getInt(cursor.getColumnIndex("_id")));
        }
        cursor.close();
        db.close();
        return info;
    }

    public void deleteLogForTable(String tableName, String type) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from " + tableName + " where type=? ", new String[]{type});
        db.close();
    }

    public void isLogFull(Context context, String tableName) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.query(tableName, null, null, null, null, null, null);
        int count = cursor.getCount();
        if (count >= MAX_LOG_COUNT && cursor.moveToFirst()) {
            int id = cursor.getInt(0);
            for (int i = id; i < (count / 2) + id; i++) {
                db.execSQL("delete from " + tableName + " where _id=" + i);
            }
        }
        cursor.close();
        db.close();
    }

    public int getTrustedApps(String type) {
        int count = 0;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from appname where trusted=? group by uid", new String[]{Integer.toString(1)});
        if (cursor != null) {
            count = cursor.getCount();
            cursor.close();
        }
        db.close();
        return count;
    }

    public boolean isAppTrusted(String pkgname, String type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select trusted from appname where packagename=?", new String[]{pkgname});
        while (cursor.moveToNext()) {
            if (cursor.getInt(0) == 1) {
                cursor.close();
                db.close();
                return true;
            }
        }
        cursor.close();
        db.close();
        return false;
    }

    public boolean isAppTrusted(int uid, String type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select trusted from appname where uid=?", new String[]{Integer.toString(uid)});
        while (cursor.moveToNext()) {
            if (cursor.getInt(0) == 1) {
                cursor.close();
                db.close();
                return true;
            }
        }
        cursor.close();
        db.close();
        return false;
    }

    public void updateAppTrust(String pkgname, String type, int trusted) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update appname set trusted=" + trusted + " where packagename=?", new Object[]{pkgname});
        db.close();
    }

    public void updateAppTrust(String pkgname, int trusted) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("update appname set trusted=" + trusted + " where packagename=?", new Object[]{pkgname});
        db.close();
    }

    public List<AppInfo> getAllApps() {
        SQLiteDatabase db = getReadableDatabase();
        List<AppInfo> list = new ArrayList<>();
        Cursor cursor = db.rawQuery("select * from appname", null);
        if (cursor.moveToFirst()) {
            do {
                String pkgname = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
                if (!a(list, pkgname)) {
                    int trusted = cursor.getInt(cursor.getColumnIndex(DB_TRUSTED));
                    int uid = cursor.getInt(cursor.getColumnIndex("uid"));
                    AppInfo app = new AppInfo();
                    app.packageName = pkgname;
                    app.trusted = trusted;
                    app.uid = uid;
                    list.add(app);
                }
            } while (cursor.moveToNext());
        }
        cursor.close();
        db.close();
        return list;
    }

    private static boolean a(List<AppInfo> list, String name) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).packageName.equals(name)) {
                return true;
            }
        }
        return false;
    }

    public int insertApp(AppInfo app, int hideType) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from hide_apps where packagename=? and hidetype=?", new String[]{app.packageName, Integer.toString(hideType)});
        if (cursor.getCount() == 0) {
            db.execSQL("insert into hide_apps(packagename, appname, hidetype) values(?,?,?)", new Object[]{app.packageName, app.name, Integer.valueOf(hideType)});
            Log.d("test", "insert " + app.packageName);
            cursor.close();
            db.close();
            return 1;
        }
        cursor.close();
        db.close();
        return 0;
    }

    public void deleteApp(String packageName, int hideType) {
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("delete from hide_apps where packagename=? and hidetype=?", new Object[]{packageName, Integer.valueOf(hideType)});
        db.close();
    }

    public List<AppInfo> queryAllHideApps(int hideType) {
        PackageManager pm = this.a.getPackageManager();
        SQLiteDatabase db = getReadableDatabase();
        List<AppInfo> appsList = new ArrayList<>();
        Cursor cursor = db.rawQuery("select * from hide_apps where hidetype=?", new String[]{Integer.toString(hideType)});
        while (cursor.moveToNext()) {
            try {
                AppInfo app = new AppInfo();
                app.packageName = cursor.getString(1);
                app.hidetype = hideType;
                app.applicationInfo = pm.getApplicationInfo(app.packageName, 8704);
                app.name = app.applicationInfo.loadLabel(pm).toString();
                app.icon = app.applicationInfo.loadIcon(pm);
                app.selected = 1;
                appsList.add(app);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        cursor.close();
        db.close();
        return appsList;
    }

    public void enableNohideApp(String pkgname) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from hide_apps where packagename=?", new String[]{pkgname});
        if (cursor.getCount() > 0 && CMDHelper.enableApp(this.a, pkgname)) {
            db.execSQL("delete from hide_apps where packagename=?", new Object[]{pkgname});
        }
        String cmd = "";
        Cursor gcursor = db.rawQuery("select * from hide_apps where hidetype=1", null);
        while (gcursor.moveToNext()) {
            cmd = cmd + "pm enable " + gcursor.getString(1) + "\n";
        }
        CMDHelper.exeCmd(this.a, cmd);
        db.execSQL("delete from hide_apps where hidetype=1");
        cursor.close();
        db.close();
    }

    public void enableNohideApps(List<String> pkgnames) {
        List<AppInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (int i = 0; i < pkgnames.size(); i++) {
            String pkg = pkgnames.get(i);
            Cursor cursor = db.rawQuery("select * from hide_apps where packagename=?", new String[]{pkg});
            if (cursor.moveToFirst()) {
                AppInfo info = new AppInfo();
                info.packageName = pkg;
                list.add(info);
                db.execSQL("delete from hide_apps where packagename=?", new Object[]{pkg});
            }
            cursor.close();
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
        CMDHelper.enableApps(this.a, list);
    }

    public AppInfo getSendsmsAppSelect(String pkgname, String pername) {
        AppInfo app = null;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select selected, name from appname where packagename=? and pername=?", new String[]{pkgname, pername});
        if (cursor.moveToFirst()) {
            app = new AppInfo();
            app.selected = cursor.getInt(0);
            app.name = cursor.getString(1);
        }
        cursor.close();
        db.close();
        return app;
    }

    public List<Contract> getAllWhiteContract() {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson  order by addtime desc ", null);
        while (cursor.moveToNext()) {
            Contract white = new Contract();
            white.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            white.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            white.setName(cursor.getString(cursor.getColumnIndex("name")));
            white.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            white.setRealnumber(cursor.getString(cursor.getColumnIndex("realnumber")));
            list.add(white);
        }
        cursor.close();
        db.close();
        return list;
    }

    public Contract getWhiteContract(int id) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson  where  _id=? order by addtime desc ", new String[]{String.valueOf(id)});
        Contract white = null;
        while (cursor.moveToNext()) {
            white = new Contract();
            white.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            white.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            white.setName(cursor.getString(cursor.getColumnIndex("name")));
            white.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            white.setRealnumber(cursor.getString(cursor.getColumnIndex("realnumber")));
        }
        cursor.close();
        db.close();
        return white;
    }

    public Contract getWhiteContract(String phoneNumber) {
        ContractHelpUtils utils = new ContractHelpUtils();
        if (utils.isMobileNO(phoneNumber)) {
            phoneNumber = utils.optNUmber(phoneNumber);
        }
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson  where  PHONE_NUMBERS_EQUAL(phonenumber,'" + phoneNumber + "',0) order by addtime desc ", null);
        Contract white = null;
        while (cursor.moveToNext()) {
            white = new Contract();
            white.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            white.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            white.setName(cursor.getString(cursor.getColumnIndex("name")));
            white.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            white.setRealnumber(cursor.getString(cursor.getColumnIndex("realnumber")));
        }
        cursor.close();
        db.close();
        return white;
    }

    public int getInWhiteCall(String phoneNumber) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from whiteperson  where  realnumber=?", new String[]{phoneNumber});
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public void insertContract(Contract con) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("insert into whiteperson(phonenumber,name,addtime,realnumber) values(?,?,?,?)", new String[]{con.getPhoneNumber(), con.getName(), String.valueOf(System.currentTimeMillis()), con.getRealnumber()});
        db.close();
    }

    public void insertContract(List<Contract> list) {
        if (list.size() != 0) {
            SQLiteDatabase db = getReadableDatabase();
            db.beginTransaction();
            ContractHelpUtils help = new ContractHelpUtils();
            for (Contract con : list) {
                if (con.getRealnumber() == null) {
                    con.setRealnumber(help.getRealPhoneNumber(con.getPhoneNumber()));
                }
                db.execSQL("insert into whiteperson(phonenumber,name,addtime,realnumber)  values(?,?,?,?)", new String[]{con.getPhoneNumber(), con.getName(), String.valueOf(System.currentTimeMillis()), con.getRealnumber()});
            }
            db.setTransactionSuccessful();
            db.endTransaction();
            db.close();
        }
    }

    public void deleteWhite(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from  whiteperson where _id =?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public void deleteWhite(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from  whiteperson where _id =?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void updateContract(int id, String number, String name, String realnumber) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update whiteperson set phonenumber=?,name=? ,realnumber=?  where _id =?", new Object[]{number, name, realnumber, Integer.valueOf(id)});
        db.close();
    }

    public void updateName(String name, String phoneNumber) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL(" update  calllist set name=? where phonenumber=?", new Object[]{name, phoneNumber});
        db.execSQL(" update  smslist set name=? where phonenumber=?", new Object[]{name, phoneNumber});
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void updateNUmber(String newNumber, String phoneNumber) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL(" update  calllist set phonenumber=? where phonenumber=?", new Object[]{newNumber, phoneNumber});
        db.execSQL(" update  smslist set phonenumber=? where phonenumber=?", new Object[]{newNumber, phoneNumber});
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public List<Contract> getAllCall() {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from calllist  order by addtime desc ", null);
        while (cursor.moveToNext()) {
            Contract call = new Contract();
            call.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            call.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            call.setName(cursor.getString(cursor.getColumnIndex("name")));
            call.setCallType(cursor.getInt(cursor.getColumnIndex("calltype")));
            call.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            call.setIsRead(cursor.getInt(cursor.getColumnIndex("isread")));
            call.setFromtype(1);
            list.add(call);
        }
        cursor.close();
        db.close();
        return list;
    }

    public List<Contract> getCallByNumber(String number) {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from calllist where  phonenumber=? order by addtime desc ", new String[]{number});
        while (cursor.moveToNext()) {
            Contract call = new Contract();
            call.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            call.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            call.setName(cursor.getString(cursor.getColumnIndex("name")));
            call.setCallType(cursor.getInt(cursor.getColumnIndex("calltype")));
            call.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            call.setIsRead(cursor.getInt(cursor.getColumnIndex("isread")));
            call.setFromtype(1);
            list.add(call);
        }
        cursor.close();
        db.close();
        return list;
    }

    public int getNotReadCallCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from calllist where  isread=?  ", new String[]{DatabaseTables.SYSTEM_MARK});
        int count = cursor.getCount();
        cursor.close();
        db.close();
        if (count > 0) {
            return count;
        }
        return 0;
    }

    public void deleteCall(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from  calllist where _id=?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteAllCall() {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL("delete from  calllist");
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteCall(int id) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from  calllist where _id=?", new Object[]{Integer.valueOf(id)});
        db.close();
    }

    public void deleteCall(String number) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from  calllist where phonenumber=?", new Object[]{number});
        db.close();
    }

    public void updateCall() {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update calllist set isread=? ", new Object[]{0});
        db.close();
    }

    public void updateCall(int id) {
        if (id == -1) {
            SQLiteDatabase db = getReadableDatabase();
            db.execSQL("update calllist set isread=? ", new Object[]{0});
            db.close();
            return;
        }
        SQLiteDatabase db2 = getReadableDatabase();
        db2.execSQL("update calllist set isread=? where _id=?", new Object[]{0, Integer.valueOf(id)});
        db2.close();
    }

    public void insertCall(Contract call) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("insert into calllist(name ,phonenumber ,calltype ,addtime,isread) values(?,?,?,?,?)", new Object[]{call.getName(), call.getPhoneNumber(), Integer.valueOf(call.getCallType()), call.getDate(), Integer.valueOf(call.getIsRead())});
        db.close();
    }

    public void insertCall(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (Contract call : list) {
            db.execSQL("insert into calllist(name ,phonenumber ,calltype,addtime,isread) values(?,?,?,?,?)", new Object[]{call.getName(), call.getPhoneNumber(), Integer.valueOf(call.getCallType()), call.getDate(), Integer.valueOf(call.getIsRead())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public List<Contract> getwhiteSms() {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select phonenumber,count(*) as smscount from smslist  group by phonenumber ", null);
        while (cursor.moveToNext()) {
            Contract sms = new Contract();
            sms.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            sms.setCount(cursor.getInt(cursor.getColumnIndex("smscount")));
            Cursor cursor_max = db.rawQuery("select  * from smslist where phonenumber=? order by addtime desc limit 1 ", new String[]{sms.getPhoneNumber()});
            if (cursor_max != null) {
                cursor_max.moveToFirst();
                sms.setId(cursor_max.getInt(cursor_max.getColumnIndex("_id")));
                sms.setSmsContent(cursor_max.getString(cursor_max.getColumnIndex("smscontent")));
                sms.setName(cursor_max.getString(cursor_max.getColumnIndex("name")));
                sms.setSmstype(cursor_max.getInt(cursor_max.getColumnIndex("smstype")));
                sms.setDate(cursor_max.getString(cursor_max.getColumnIndex("addtime")));
                sms.setIsRead(cursor_max.getInt(cursor_max.getColumnIndex("isread")));
                sms.setFromtype(0);
                Cursor cursor_count = db.rawQuery("select  _id from smslist where phonenumber=? and isread=? ", new String[]{sms.getPhoneNumber(), DatabaseTables.SYSTEM_MARK});
                if (cursor_count != null) {
                    sms.noreadCount = cursor_count.getCount();
                    cursor_count.close();
                }
                cursor_max.close();
            }
            list.add(sms);
        }
        cursor.close();
        db.close();
        return list;
    }

    public List<Contract> getwhiteSmsByNumbers(List<String> numbers) {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        ContractHelpUtils utils = new ContractHelpUtils();
        Iterator i$ = numbers.iterator();
        while (i$.hasNext()) {
            Cursor cursor = db.rawQuery("select *  from smslist where phonenumber=? order by addtime desc ", new String[]{i$.next()});
            while (cursor.moveToNext()) {
                Contract sms = new Contract();
                sms.setId(cursor.getInt(cursor.getColumnIndex("_id")));
                sms.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
                sms.setSmsContent(cursor.getString(cursor.getColumnIndex("smscontent")));
                sms.setName(cursor.getString(cursor.getColumnIndex("name")));
                sms.setSmstype(cursor.getInt(cursor.getColumnIndex("smstype")));
                sms.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
                sms.setIsRead(cursor.getInt(cursor.getColumnIndex("isread")));
                sms.setFromtype(0);
                utils.backToSms(sms, this.a);
                list.add(sms);
            }
            cursor.close();
        }
        db.close();
        return list;
    }

    public List<Contract> getwhiteSmsInfo(String number) {
        List<Contract> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from smslist where phonenumber=? order by addtime asc ", new String[]{number});
        while (cursor.moveToNext()) {
            Contract sms = new Contract();
            sms.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            sms.setPhoneNumber(cursor.getString(cursor.getColumnIndex("phonenumber")));
            sms.setSmsContent(cursor.getString(cursor.getColumnIndex("smscontent")));
            sms.setName(cursor.getString(cursor.getColumnIndex("name")));
            sms.setSmstype(cursor.getInt(cursor.getColumnIndex("smstype")));
            sms.setDate(cursor.getString(cursor.getColumnIndex("addtime")));
            sms.setIsRead(cursor.getInt(cursor.getColumnIndex("isread")));
            sms.setFromtype(0);
            list.add(sms);
        }
        cursor.close();
        db.close();
        return list;
    }

    public void delinfo(String number) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL("delete from calllist where phonenumber=?", new String[]{number});
        db.execSQL("delete from smslist where phonenumber=?", new String[]{number});
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void insertSms(Contract sms) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("insert into smslist(name ,phonenumber ,smstype ,smscontent,addtime,isread) values(?,?,?,?,?,?)", new Object[]{sms.getName(), sms.getPhoneNumber(), Integer.valueOf(sms.getSmstype()), sms.getSmsContent(), sms.getDate(), Integer.valueOf(sms.getIsRead())});
        db.close();
    }

    public void insertSms(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (Contract sms : list) {
            db.execSQL("insert into smslist(name ,phonenumber ,smstype ,smscontent,addtime,isread) values(?,?,?,?,?,?)", new Object[]{sms.getName(), sms.getPhoneNumber(), Integer.valueOf(sms.getSmstype()), sms.getSmsContent(), sms.getDate(), Integer.valueOf(sms.getIsRead())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteSms(List<Contract> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = list.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from  smslist where _id=?", new Object[]{Integer.valueOf(i$.next().getId())});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void deleteSms(int id) {
        SQLiteDatabase db = getReadableDatabase();
        if (id == -1) {
            db.execSQL("delete from  smslist");
        } else {
            db.execSQL("delete from  smslist where _id=?", new Object[]{Integer.valueOf(id)});
        }
        db.close();
    }

    public void deleteSms(String number) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from  smslist where phonenumber=?", new Object[]{number});
        db.close();
    }

    public void deleteSmsByNo(List<String> numbers) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        Iterator i$ = numbers.iterator();
        while (i$.hasNext()) {
            db.execSQL("delete from  smslist where phonenumber=?", new Object[]{i$.next()});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void updateSmsStatus(int isread) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update  smslist set isread=?", new Object[]{Integer.valueOf(isread)});
        db.close();
    }

    public void updateSmsStatus(String number, int isread) {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("update  smslist set isread=? where phonenumber=?", new Object[]{Integer.valueOf(isread), number});
        db.close();
    }

    public int getNotReadSms(int isread) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id from smslist where isread=? ", new String[]{String.valueOf(isread)});
        int count = cursor.getCount();
        Log.i("count", "getNotReadSms==" + count);
        cursor.close();
        db.close();
        return count;
    }

    public int getWhiteSmsCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select _id  from smslist ", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public void deleteWhiteLog(List<Contract> list) {
        for (Contract con : list) {
            deleteCall(con.getPhoneNumber());
            deleteSms(con.getPhoneNumber());
        }
    }

    public List<SafeLog> getRecentLogs(String pkgname, String type) {
        SQLiteDatabase db = getReadableDatabase();
        List<SafeLog> loglist = new ArrayList<>();
        Cursor aLogs = db.rawQuery("select count(*) as ss ,* from safe_log_privacy where packagename=? and action='0' group by type UNION ALL select count(*) as ss, * from safe_log_tariff where packagename=? and action='0' group by type order by _id desc", new String[]{pkgname, pkgname});
        Cursor dLogs = db.rawQuery("select count(*) as ss ,* from safe_log_privacy where packagename=? and action='1' group by type UNION ALL select count(*) as ss, * from safe_log_tariff where packagename=? and action='1' group by type order by _id desc", new String[]{pkgname, pkgname});
        while (aLogs.moveToNext()) {
            SafeLog log = new SafeLog();
            log.id = aLogs.getInt(0);
            log.appName = aLogs.getString(2);
            log.permName = aLogs.getString(3);
            log.packageName = aLogs.getString(4);
            log.action = aLogs.getInt(5);
            log.logSelected = aLogs.getInt(6);
            log.time = aLogs.getString(7);
            log.number = aLogs.getString(8);
            log.content = aLogs.getString(9);
            log.isUpload = aLogs.getInt(10);
            log.type = aLogs.getString(11);
            loglist.add(log);
        }
        while (dLogs.moveToNext()) {
            SafeLog log2 = new SafeLog();
            log2.id = dLogs.getInt(0);
            log2.appName = dLogs.getString(2);
            log2.permName = dLogs.getString(3);
            log2.packageName = dLogs.getString(4);
            log2.action = dLogs.getInt(5);
            log2.logSelected = dLogs.getInt(6);
            log2.time = dLogs.getString(7);
            log2.number = dLogs.getString(8);
            log2.content = dLogs.getString(9);
            log2.isUpload = dLogs.getInt(10);
            log2.type = dLogs.getString(11);
            loglist.add(log2);
        }
        Collections.sort(loglist, new Comparator<SafeLog>() {
            /* class com.lenovo.safecenter.database.AppDatabase.AnonymousClass1 */

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(SafeLog safeLog, SafeLog safeLog2) {
                SafeLog safeLog3 = safeLog;
                SafeLog safeLog4 = safeLog2;
                if (!safeLog3.time.equals(safeLog4.time)) {
                    return Long.valueOf(safeLog4.time).compareTo(Long.valueOf(safeLog3.time));
                }
                return 0;
            }
        });
        aLogs.close();
        dLogs.close();
        db.close();
        return loglist;
    }

    public List<SafeLog> getLog(String tableName) {
        List<SafeLog> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        String time = "";
        Cursor cursor = db.rawQuery("select * from  " + tableName + " order by time desc", null);
        while (cursor.moveToNext()) {
            String pername = cursor.getString(cursor.getColumnIndex("pername"));
            if (pername != null) {
                SafeLog info = new SafeLog();
                info.id = cursor.getInt(cursor.getColumnIndex("_id"));
                info.packageName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
                info.action = cursor.getInt(cursor.getColumnIndex("action"));
                info.appName = cursor.getString(cursor.getColumnIndex("name"));
                info.permName = pername;
                info.time = cursor.getString(cursor.getColumnIndex(TIME));
                info.content = cursor.getString(cursor.getColumnIndex(CONTENT));
                info.number = cursor.getString(cursor.getColumnIndex(NUMBER));
                info.type = cursor.getString(cursor.getColumnIndex("type"));
                info.logSelected = cursor.getInt(cursor.getColumnIndex(DB_LOG_SELECTED));
                if (time.equals(getDate(info.time))) {
                    list.add(info);
                } else {
                    SafeLog logDate = new SafeLog();
                    time = getDate(info.time);
                    logDate.logDay = time;
                    list.add(logDate);
                    list.add(info);
                }
            }
        }
        cursor.close();
        db.close();
        return list;
    }

    public SafeLog getFirstLog(String tableName) {
        SafeLog safeLog = null;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from  " + tableName + " where action=1 order by _id desc limit 1", null);
        if (cursor.moveToNext()) {
            safeLog = new SafeLog();
            safeLog.packageName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
            safeLog.appName = cursor.getString(cursor.getColumnIndex("name"));
            safeLog.permName = cursor.getString(cursor.getColumnIndex("pername"));
            safeLog.time = cursor.getString(cursor.getColumnIndex(TIME));
            safeLog.type = cursor.getString(cursor.getColumnIndex("type"));
            safeLog.logSelected = cursor.getInt(cursor.getColumnIndex(DB_LOG_SELECTED));
        }
        cursor.close();
        db.close();
        return safeLog;
    }

    public long getFirstHarassTime(String type) {
        SQLiteDatabase db = getReadableDatabase();
        long time = 0;
        Cursor cLogs = db.rawQuery("select * from safe_log_harass where type=? order by _id desc limit 1", new String[]{type});
        if (cLogs.moveToNext()) {
            time = Long.parseLong(cLogs.getString(3));
        }
        cLogs.close();
        db.close();
        return time;
    }

    public List<SafeLog> getTopThreeLogs(String tableName, int count) {
        List<SafeLog> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from  " + tableName + " order by _id desc limit " + count, null);
        while (cursor.moveToNext()) {
            String pername = cursor.getString(cursor.getColumnIndex("pername"));
            if (pername != null) {
                SafeLog safeLog = new SafeLog();
                safeLog.packageName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
                safeLog.appName = cursor.getString(cursor.getColumnIndex("name"));
                safeLog.permName = pername;
                safeLog.action = cursor.getInt(cursor.getColumnIndex("action"));
                safeLog.time = cursor.getString(cursor.getColumnIndex(TIME));
                safeLog.type = cursor.getString(cursor.getColumnIndex("type"));
                safeLog.logSelected = cursor.getInt(cursor.getColumnIndex(DB_LOG_SELECTED));
                list.add(safeLog);
            }
        }
        cursor.close();
        db.close();
        return list;
    }

    public static String getDate(String time) {
        String[] timeArray = new SimpleDateFormat("yyyy.M.dd.HH.mm").format(Long.valueOf(Long.parseLong(time))).split("\\.");
        return timeArray[0] + "." + timeArray[1] + "." + timeArray[2];
    }

    public List<AppPerInfo> getAppPers(String type) {
        List<AppPerInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from appname order by trusted desc, uid", null);
        AppPerInfo info = null;
        int oldUid = 0;
        while (cursor.moveToNext()) {
            String apptype = cursor.getString(cursor.getColumnIndex(APP_PER_TYPE));
            String pkgName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
            int uid = cursor.getInt(cursor.getColumnIndex("uid"));
            if (!pkgName.equals(TrafficStatsService.PACKAGE_NAME)) {
                if (oldUid == uid) {
                    try {
                        if (info.totaldmes.indexOf(apptype) < 0) {
                            info.totalCount++;
                            info.totaldmes += "," + apptype;
                            if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) != 0) {
                                if (info.forbidmes == null || info.forbidmes.equals("")) {
                                    info.forbidmes = apptype;
                                    info.forbidCount++;
                                } else if (info.forbidmes.indexOf(apptype) < 0) {
                                    Log.i("appmes", info.pkgName + "==" + apptype + "==index=" + info.forbidmes.indexOf(apptype));
                                    info.forbidmes += "," + apptype;
                                    info.forbidCount++;
                                }
                            }
                            if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) == 2) {
                                info.hasNotice = true;
                                info.isTurstInt = 1;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                    }
                } else {
                    oldUid = uid;
                    StringBuffer sb = new StringBuffer();
                    AppPerInfo info2 = new AppPerInfo();
                    try {
                        info2.pkgName = pkgName;
                        info2.totalCount++;
                        info2.totaldmes = apptype;
                        info2.isUpload = cursor.getInt(cursor.getColumnIndex("isupload"));
                        if (cursor.getInt(cursor.getColumnIndex(DB_TRUSTED)) == 1) {
                            info2.isTrust = true;
                            info2.isTurstInt = 1;
                        }
                        if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) != 0) {
                            info2.forbidCount++;
                            sb.append(apptype);
                        }
                        if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) == 2) {
                            info2.hasNotice = true;
                        }
                        if (sb.length() > 0) {
                            info2.forbidmes = sb.toString();
                        }
                        Log.i("appmes", info2.pkgName + "==" + apptype);
                        list.add(info2);
                        info = info2;
                    } catch (Exception e2) {
                        e = e2;
                        info = info2;
                        e.printStackTrace();
                    }
                }
            }
        }
        cursor.close();
        db.close();
        return list;
    }

    public AppPerInfo getAppPerInfo(String pkgname, String type) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select *  from appname  where packagename=?", new String[]{pkgname});
        AppPerInfo info = null;
        String oldPkgname = "";
        while (cursor.moveToNext()) {
            String apptype = cursor.getString(cursor.getColumnIndex(APP_PER_TYPE));
            String pkgName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
            if (!oldPkgname.equals(pkgName)) {
                oldPkgname = pkgName;
                StringBuffer sb = new StringBuffer();
                info = new AppPerInfo();
                info.pkgName = pkgName;
                info.totalCount++;
                info.totaldmes = apptype;
                info.isUpload = cursor.getInt(cursor.getColumnIndex("isupload"));
                if (cursor.getInt(cursor.getColumnIndex(DB_TRUSTED)) == 1) {
                    info.isTrust = true;
                }
                if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) != 0) {
                    info.forbidCount++;
                    sb.append(apptype);
                }
                if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) == 2) {
                    info.hasNotice = true;
                }
                if (sb.length() > 0) {
                    info.forbidmes = sb.toString();
                }
                Log.i("appmes", info.pkgName + "==" + apptype);
            } else if (info.totaldmes.indexOf(apptype) < 0) {
                info.totalCount++;
                info.totaldmes += "," + apptype;
                Log.i("appmes", info.pkgName + "==totaldmes==" + apptype + "==select==" + cursor.getInt(cursor.getColumnIndex(DB_SELECTED)));
                if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) == 1) {
                    if (info.forbidmes == null || info.forbidmes.equals("")) {
                        info.forbidCount++;
                        info.forbidmes = apptype;
                    } else if (info.forbidmes.indexOf(apptype) < 0) {
                        Log.i("appmes", info.pkgName + "==" + apptype + "==index=" + info.forbidmes.indexOf(apptype));
                        info.forbidmes += "," + apptype;
                        info.forbidCount++;
                    }
                } else if (cursor.getInt(cursor.getColumnIndex(DB_SELECTED)) == 2) {
                    info.hasNotice = true;
                    if (info.forbidmes == null || info.forbidmes.equals("")) {
                        info.forbidCount++;
                        info.forbidmes = apptype;
                    } else if (info.forbidmes.indexOf(apptype) < 0) {
                        Log.i("appmes", info.pkgName + "==" + apptype + "==index=" + info.forbidmes.indexOf(apptype));
                        info.forbidmes += "," + apptype;
                        info.forbidCount++;
                    }
                }
            }
        }
        cursor.close();
        db.close();
        return info;
    }

    public List<AppInfo> getFilterApp() {
        List<AppInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select uid,pername,selected,apptype,trusted from  appname order by uid", null);
        while (cursor.moveToNext()) {
            AppInfo info = new AppInfo();
            info.uid = cursor.getInt(0);
            info.perName = cursor.getString(1);
            info.selected = cursor.getInt(2);
            info.appType = cursor.getString(3);
            info.trusted = cursor.getInt(4);
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public HashMap<Integer, List<AppInfo>> getFilterMap() {
        List<AppInfo> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        HashMap<Integer, List<AppInfo>> map = new HashMap<>();
        int i = 0;
        int oldUid = 0;
        Cursor cursor = db.rawQuery("select uid,packagename,pername,selected,apptype,trusted from  appname order by uid", null);
        while (cursor.moveToNext()) {
            i++;
            AppInfo info = new AppInfo();
            info.uid = cursor.getInt(0);
            info.packageName = cursor.getString(1);
            info.perName = cursor.getString(2);
            info.selected = cursor.getInt(3);
            info.appType = cursor.getString(4);
            if (oldUid != info.uid) {
                if (oldUid != 0 && map.get(Integer.valueOf(oldUid)) == null) {
                    map.put(Integer.valueOf(oldUid), list);
                    list = new ArrayList<>();
                }
                list.add(info);
                oldUid = info.uid;
            } else {
                list.add(info);
            }
            if (i == cursor.getCount() && map.get(Integer.valueOf(oldUid)) == null) {
                map.put(Integer.valueOf(oldUid), list);
            }
        }
        cursor.close();
        db.close();
        return map;
    }

    public List<SafeLog> getTappingLogs(long curtime) {
        List<SafeLog> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from safe_log_privacy where log_selected=1 and time>='" + curtime + "'" + "order by time desc", null);
        while (cursor.moveToNext()) {
            SafeLog info = new SafeLog();
            info.id = cursor.getInt(cursor.getColumnIndex("_id"));
            info.packageName = cursor.getString(cursor.getColumnIndex(APP_PKG_NAME));
            info.appName = cursor.getString(cursor.getColumnIndex("name"));
            info.permName = cursor.getString(cursor.getColumnIndex("pername"));
            info.time = cursor.getString(cursor.getColumnIndex(TIME));
            info.type = cursor.getString(cursor.getColumnIndex("type"));
            info.action = cursor.getInt(cursor.getColumnIndex("action"));
            Log.d("tap", info.appName + ", " + info.packageName + ", " + info.permName);
            list.add(info);
        }
        cursor.close();
        db.close();
        return list;
    }

    public HashSet<Integer> getAllTrustedUids() {
        HashSet<Integer> uids = new HashSet<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select uid from appname where trusted=?", new String[]{DatabaseTables.SYSTEM_MARK});
        while (cursor.moveToNext()) {
            uids.add(Integer.valueOf(cursor.getString(0)));
        }
        cursor.close();
        db.close();
        return uids;
    }

    public SafeLog getLastTariffLog() {
        SafeLog log = null;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cLogs = db.rawQuery("select * from safe_log_tariff order by _id desc", null);
        if (cLogs.moveToFirst()) {
            log = new SafeLog();
            log.number = cLogs.getString(cLogs.getColumnIndexOrThrow(NUMBER));
            log.time = cLogs.getString(cLogs.getColumnIndexOrThrow(TIME));
            log.content = cLogs.getString(cLogs.getColumnIndexOrThrow(CONTENT));
            log.type = cLogs.getString(cLogs.getColumnIndex("type"));
        }
        cLogs.close();
        db.close();
        return log;
    }

    public void expertSuggest(Context context, ArrayList<AppInfo> applist, boolean onekeyconfig) {
        ContentResolver resolver = context.getContentResolver();
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        try {
            if (applist.size() != 0) {
                Iterator i$ = applist.iterator();
                while (i$.hasNext()) {
                    AppInfo app = i$.next();
                    if (onekeyconfig || (!onekeyconfig && app.selected != 1)) {
                        HashMap<String, String> map = AppUtil.getAppPermissionConfigurs(resolver, app.packageName);
                        if (Integer.valueOf(map.get(app.appType)).intValue() > -1) {
                            app.selected = Integer.valueOf(map.get(app.appType)).intValue();
                        } else if (app.appType.equals(DB_APP_SENDMESSAGE)) {
                            app.selected = 2;
                        } else if (app.appType.equals(PERM_TYPE_PRIVCY)) {
                            app.selected = 1;
                        } else {
                            app.selected = 0;
                        }
                        db.execSQL("update appname set selected=? where packagename=? and apptype=?", new Object[]{Integer.valueOf(app.selected), app.packageName, app.appType});
                    }
                }
                db.setTransactionSuccessful();
                db.endTransaction();
                db.close();
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
    }

    public int healthCheckPermission(Context context, ArrayList<AppInfo> applist) {
        int count = 0;
        ContentResolver resolver = context.getContentResolver();
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        try {
            if (applist.size() == 0) {
                db.endTransaction();
                db.close();
                return 0;
            }
            Iterator i$ = applist.iterator();
            while (i$.hasNext()) {
                AppInfo app = i$.next();
                HashMap<String, String> map = AppUtil.getAppPermissionConfigurs(resolver, app.packageName);
                if (Integer.valueOf(map.get(app.appType)).intValue() > -1) {
                    if (app.selected == 0 && Integer.valueOf(map.get(app.appType)).intValue() != 0) {
                        count++;
                    }
                } else if (app.selected == 0) {
                    count++;
                }
            }
            db.setTransactionSuccessful();
            if (count > 100) {
                count = 100;
            }
            return count;
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } finally {
            db.endTransaction();
            db.close();
        }
    }

    public List<String> loadUnexistApps(Context context) {
        List<String> list = new ArrayList<>();
        Cursor cursor = getReadableDatabase().rawQuery("select packagename from appname where suggest<0 group by uid", null);
        while (cursor.moveToNext()) {
            list.add(cursor.getString(0));
        }
        return list;
    }

    public int[] getAppsNum() {
        int[] nums = new int[5];
        String[] types = {DB_APP_SENDMESSAGE, DB_APP_CALL, PERM_TYPE_PRIVCY, "location", PERM_TYPE_DEVICE};
        SQLiteDatabase db = getReadableDatabase();
        for (int i = 0; i < types.length; i++) {
            Cursor cursor = db.rawQuery("select * from appname where apptype=? and trusted=0 group by uid", new String[]{types[i]});
            nums[i] = cursor.getCount();
            cursor.close();
        }
        db.close();
        return nums;
    }

    public int getAppTrusted(String pkgname) {
        int result = 0;
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select trusted from appname where packagename=?", new String[]{pkgname});
        if (cursor.moveToFirst()) {
            result = cursor.getInt(0);
        }
        cursor.close();
        db.close();
        return result;
    }

    public Map<String, Integer> getAppperms(String pkgname) {
        Map<String, Integer> map = new HashMap<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select apptype, selected from appname where packagename=? group by apptype", new String[]{pkgname});
        while (cursor.moveToNext()) {
            map.put(cursor.getString(0), Integer.valueOf(cursor.getInt(1)));
            Log.d("test", cursor.getString(0) + ", " + cursor.getString(1));
        }
        cursor.close();
        db.close();
        return map;
    }
}
