package com.lenovo.safecenter.net.support;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class TrafficStatsSQLiteOpenHelper extends SQLiteOpenHelper {
    private static int a = 7;

    public TrafficStatsSQLiteOpenHelper(Context context) {
        super(context, TrafficStatsService.DB_NAME, (SQLiteDatabase.CursorFactory) null, a);
        Log.i("trafficCheck", "touch here");
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS apps (_id INTEGER PRIMARY KEY, pname TEXT, uid INT, _date VARCHAR, received INT, sent INT, last_received INT, last_sent INT)");
        db.execSQL("CREATE TABLE IF NOT EXISTS traffic (_id INTEGER PRIMARY KEY,imsi TEXT,total INT, date INT, height INT)");
        db.execSQL("CREATE TABLE IF NOT EXISTS traffic_Check(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.i("trafficCheck", "touch onUpgrade");
        db.execSQL("CREATE TABLE IF NOT EXISTS traffic_Check(_id integer primary key autoincrement,checktime varchar,sim_subscriber_id varchar,inaccuracy varchar)");
        if (oldVersion == 1) {
            db.execSQL("drop table traffic");
            db.execSQL("CREATE TABLE IF NOT EXISTS traffic (_id INTEGER PRIMARY KEY,imsi TEXT,total INT, date INT, height INT)");
        }
    }

    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.i("trafficCheck", "onDowngrade 4.1.7newVersion = " + newVersion + ",oldVersion =" + oldVersion);
    }
}
