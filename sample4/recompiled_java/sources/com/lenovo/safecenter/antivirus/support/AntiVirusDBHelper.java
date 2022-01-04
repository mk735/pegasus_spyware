package com.lenovo.safecenter.antivirus.support;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.antivirus.domain.VirusLog;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.database.AppDatabase;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AntiVirusDBHelper extends SQLiteOpenHelper {
    private Context a;

    public AntiVirusDBHelper(Context context) {
        super(context, "antivirus.db", (SQLiteDatabase.CursorFactory) null, 2);
        this.a = context;
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE virus (_id INTEGER PRIMARY KEY, pkgname varchar,sha1 VARCHAR(40),filesize varchar,type varchar)");
        db.execSQL("CREATE TABLE virusinfo (_id INTEGER PRIMARY KEY, desc varchar,pname TEXT,md5 TEXT,type varchar)");
        db.execSQL("CREATE TABLE appinfo (_id INTEGER PRIMARY KEY, pkgname varchar ,md5 VARCHAR(32),sha1 VARCHAR(40),filesize varchar,appname varchar)");
        db.execSQL("CREATE TABLE viruslog (_id INTEGER PRIMARY KEY, eventcontent varchar,eventtime varchar,eventicon varchar)");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.i("onUpgrade", "oldVersion==" + oldVersion + "....newVersion" + newVersion);
    }

    public void delVirus() {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL("delete from virus");
        db.execSQL("delete from virusinfo");
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void add2(List<VirusDemo> list, List<VirusDemo> expireList, List<VirusDemo> memolist) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (VirusDemo demo : list) {
            db.execSQL("insert into virus(sha1,type,pkgname,filesize) values(?,?,?,?)", new Object[]{demo.getPkgSha1(), demo.getType(), demo.getPkgName(), demo.getFilesize()});
        }
        for (VirusDemo demo2 : memolist) {
            Log.i("demo", "VirusDemo==" + demo2.getVirusDesc() + "==size=" + list.size());
            Cursor cursor = db.rawQuery("select * from virusinfo where type=?", new String[]{demo2.getType()});
            if (cursor == null || cursor.getCount() <= 0) {
                db.execSQL("insert into virusinfo(desc,pname,md5,type) values(?,?,?,?)", new Object[]{demo2.getVirusDesc(), demo2.getName(), demo2.getCertmd5(), demo2.getType()});
            } else {
                db.execSQL("update  virusinfo set desc=?,pname=?,md5=? where type=?", new Object[]{demo2.getVirusDesc(), demo2.getName(), demo2.getCertmd5(), demo2.getType()});
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        if (expireList.size() > 0) {
            Iterator i$ = expireList.iterator();
            while (i$.hasNext()) {
                db.execSQL("delete from virus where sha1=? ", new Object[]{i$.next().getPkgSha1()});
            }
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void add(List<VirusDemo> list, List<VirusDemo> expireList) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        for (VirusDemo demo : list) {
            db.execSQL("insert into virus(sha1,type,pkgname,filesize) values(?,?,?,?,?,?,?,?)", new Object[]{demo.getName(), demo.getCertmd5(), demo.getPkgSha1(), demo.getType(), demo.getSource(), demo.getPkgName(), demo.getVirusDesc(), demo.getFilesize()});
        }
        if (expireList.size() > 0) {
            Iterator i$ = expireList.iterator();
            while (i$.hasNext()) {
                db.execSQL("delete from virus where sha1=? ", new Object[]{i$.next().getPkgSha1()});
            }
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public void addApp(List<Appinfo> list) {
        SQLiteDatabase db = getReadableDatabase();
        db.beginTransaction();
        db.execSQL("delete from appinfo");
        for (Appinfo info : list) {
            Log.i("addApp", info.getPkgName());
            db.execSQL("insert into appinfo(pkgname,md5,sha1,filesize,appname) values(?,?,?,?,?)", new Object[]{info.getPkgName(), info.getMD5(), info.getSHA1(), info.getFilesize(), info.getAppname()});
        }
        db.setTransactionSuccessful();
        db.endTransaction();
        db.close();
    }

    public Appinfo getAppInfo(String pkgName) {
        Appinfo info = null;
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursor = db.rawQuery("select * from appinfo where pkgname=?", new String[]{pkgName});
        if (cursor.getCount() > 0) {
            cursor.moveToFirst();
            info = new Appinfo(pkgName, cursor.getString(cursor.getColumnIndex("md5")), cursor.getString(cursor.getColumnIndex("sha1")), cursor.getString(cursor.getColumnIndex("filesize")), cursor.getString(cursor.getColumnIndex(AppDatabase.DB_APP)));
        }
        cursor.close();
        db.close();
        return info;
    }

    public List<Appinfo> getAppsInfo() {
        List<ApplicationInfo> appList = AppUtils.getInstalledThirdApps(this.a);
        if (appList == null) {
            return null;
        }
        List<Appinfo> list = new ArrayList<>();
        SQLiteDatabase db = getWritableDatabase();
        Iterator i$ = appList.iterator();
        while (i$.hasNext()) {
            Cursor cursor = db.rawQuery("select * from appinfo where pkgname in(?)", new String[]{i$.next().packageName});
            if (cursor.moveToFirst()) {
                list.add(new Appinfo(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)), cursor.getString(cursor.getColumnIndex("md5")), cursor.getString(cursor.getColumnIndex("sha1")), cursor.getString(cursor.getColumnIndex("filesize")), cursor.getString(cursor.getColumnIndex(AppDatabase.DB_APP))));
            }
            cursor.close();
        }
        db.close();
        return list;
    }

    public void insertAppinfo(Appinfo info) {
        Appinfo isExist = getAppInfo(info.getPkgName());
        SQLiteDatabase db = getReadableDatabase();
        if (isExist != null) {
            db.execSQL("update  appinfo set md5=?,sha1=?,filesize=?,appname=? where pkgname=?", new Object[]{info.getMD5(), info.getSHA1(), info.getFilesize(), info.getAppname(), info.getPkgName()});
        } else {
            db.execSQL("insert into appinfo(pkgname,md5,sha1,filesize,appname) values(?,?,?,?,?)", new Object[]{info.getPkgName(), info.getMD5(), info.getSHA1(), info.getFilesize(), info.getAppname()});
        }
        db.close();
    }

    public List<VirusLog> getLog() {
        List<VirusLog> list = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        String time = "";
        Cursor cursor = db.rawQuery("select * from viruslog order by _id desc,eventtime desc", null);
        while (cursor.moveToNext()) {
            VirusLog info = new VirusLog();
            info.eventtime = cursor.getString(cursor.getColumnIndex("eventtime"));
            info.eventcontent = cursor.getString(cursor.getColumnIndex("eventcontent"));
            info.eventicon = cursor.getString(cursor.getColumnIndex("eventicon"));
            if (time.equals(getDate(info.eventtime))) {
                list.add(info);
            } else {
                VirusLog logDate = new VirusLog();
                time = getDate(info.eventtime);
                logDate.logdate = time;
                list.add(logDate);
                list.add(info);
            }
        }
        cursor.close();
        db.close();
        return list;
    }

    public int getLogCount() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from viruslog order by eventtime desc", null);
        int count = cursor.getCount();
        cursor.close();
        db.close();
        return count;
    }

    public VirusLog getLatestLog() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursor = db.rawQuery("select * from viruslog order by eventtime desc", null);
        VirusLog info = null;
        if (cursor.moveToFirst()) {
            info = new VirusLog();
            info.eventtime = cursor.getString(cursor.getColumnIndex("eventtime"));
            info.eventcontent = cursor.getString(cursor.getColumnIndex("eventcontent"));
            info.eventicon = cursor.getString(cursor.getColumnIndex("eventicon"));
        }
        cursor.close();
        db.close();
        return info;
    }

    public void insertLog(String content, String time, String eventicon) {
        try {
            SQLiteDatabase db = getReadableDatabase();
            db.execSQL("insert into  viruslog(eventcontent,eventtime,eventicon) values(?,?,?)", new String[]{content, time, eventicon});
            db.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delLog() {
        SQLiteDatabase db = getReadableDatabase();
        db.execSQL("delete from viruslog");
        db.close();
    }

    public static String getDate(String time) {
        String[] timeArray = new SimpleDateFormat("yyyy.M.dd.HH.mm").format(Long.valueOf(Long.parseLong(time))).split("\\.");
        return timeArray[0] + "." + timeArray[1] + "." + timeArray[2];
    }

    public VirusDemo getVirus(String pkgname, String md5, String sha1, String filesize, Context context) {
        Exception e;
        Cursor cursor;
        VirusDemo demo = null;
        try {
            SQLiteDatabase db = getWritableDatabase();
            if (sha1.equals("preload")) {
                cursor = db.rawQuery("SELECT v.pkgname,vi.pname,vi.desc,vi.type,vi.md5 FROM virus v,virusinfo vi where v.filesize=? and v.pkgname=? and vi.type=v.type", new String[]{filesize, pkgname});
            } else {
                cursor = db.rawQuery("SELECT v.pkgname,vi.pname,vi.desc,vi.type,vi.md5 FROM virus v,virusinfo vi where v.sha1=? and vi.type=v.type", new String[]{sha1});
            }
            if (cursor != null && cursor.moveToNext()) {
                VirusDemo demo2 = new VirusDemo();
                try {
                    demo2.setCertmd5(cursor.getString(4));
                    demo2.setPkgName(pkgname);
                    demo2.setName(cursor.getString(1));
                    String desc = cursor.getString(2);
                    if (desc == null) {
                        desc = context.getResources().getString(R.string.antivirusvirusdesc_default);
                    }
                    demo2.setVirusDesc(desc);
                    demo = demo2;
                } catch (Exception e2) {
                    e = e2;
                    demo = demo2;
                    e.printStackTrace();
                    return demo;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            db.close();
            if (demo != null && sha1.equals("preload") && !demo.getCertmd5().contains(md5)) {
                return null;
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return demo;
        }
        return demo;
    }
}
