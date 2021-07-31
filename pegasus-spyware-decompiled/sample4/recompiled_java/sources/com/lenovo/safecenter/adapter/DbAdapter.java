package com.lenovo.safecenter.adapter;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Locale;

public class DbAdapter {
    public static final String APP_FILE_SIZE = "app_file_size";
    public static final String APP_MD5 = "app_md5";
    public static final String APP_NAME = "app_name";
    public static final String APP_PACKAGENAME = "app_packagename";
    public static final String APP_PROTECTION = "app_protection";
    public static final String APP_SHA1 = "app_sha1";
    public static final String APP_STATE = "app_state";
    public static final String DB_NAME = "safepayment.db";
    public static final String ID = "_id";
    public static final String TABLE_NAME_SAFEAPP = "safeAppTbl";
    public static final String TABLE_NAME_USERAPP = "userAppTbl";
    public static final int VERSION = 2;
    Context a;
    SQLiteDatabase b;
    a c;

    public DbAdapter(Context context) {
        this.a = context;
    }

    /* access modifiers changed from: package-private */
    public class a extends SQLiteOpenHelper {
        public a() {
            super(DbAdapter.this.a, DbAdapter.DB_NAME, (SQLiteDatabase.CursorFactory) null, 2);
        }

        public final void onCreate(SQLiteDatabase db) {
            db.execSQL("drop table if exists safeAppTbl");
            db.execSQL("drop table if exists userAppTbl");
            db.execSQL("create table safeAppTbl (_id integer primary key autoincrement,app_name text,app_packagename text,app_md5 text,app_file_size text,app_sha1 text)");
            db.execSQL("create table userAppTbl (_id integer primary key autoincrement,app_name text,app_packagename text,app_md5 text,app_file_size text,app_state text,app_protection text)");
        }

        public final void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        }
    }

    public SQLiteDatabase open() throws Exception {
        this.c = new a();
        this.c.close();
        this.b = this.c.getReadableDatabase();
        this.b.setLocale(Locale.getDefault());
        return this.b;
    }

    public void close() {
        if (this.c != null) {
            this.c.close();
            this.b.close();
        }
    }
}
