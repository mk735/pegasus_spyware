package com.lenovo.safecenter.notificationintercept.support;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class InterceptDatabaseHelper extends SQLiteOpenHelper {
    public static final String DB_CREATE_CASE = "create table if not exists ";
    public static final String DB_DROP_CASE = "drop table if exists ";
    public static final String INTERCEPT_PERMISSION_TABLE = "intercept_permissions";
    public static final String INTERCEPT_RECORD_TABLE = "intercept_records";
    public static final String NOTIFICATION_AD_TABLE = "notification_ad";
    public static final String URL_BLACK_TABLE = "url_black";

    public InterceptDatabaseHelper(Context context) {
        super(context, "notification_intercept.db", (SQLiteDatabase.CursorFactory) null, 6);
    }

    public void onCreate(SQLiteDatabase db) {
        try {
            db.execSQL("create table if not exists intercept_records ( _id integer primary key autoincrement, notification_id integer, applabel varchar, pkgname varchar, notification_content varchar, timestamp long, record_permission int);");
            db.execSQL("create table if not exists intercept_permissions ( _id integer primary key autoincrement, pkgname varchar unique, permission integer);");
            db.execSQL("create table if not exists url_black( _id integer primary key autoincrement,  urlname varchar unique);");
            db.execSQL("create table if not exists notification_ad( _id integer primary key autoincrement,  pkgname varchar unique, adname varchar, description varchar);");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        try {
            db.execSQL("create table if not exists notification_ad( _id integer primary key autoincrement,  pkgname varchar unique, adname varchar, description varchar);");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }
}
