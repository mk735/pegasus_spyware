package com.tendcloud.tenddata;

import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;

/* access modifiers changed from: package-private */
public final class d implements BaseColumns {
    public static final String a = "session_id";
    public static final String b = "start_time";
    public static final String c = "duration";
    public static final String d = "is_launch";
    public static final String e = "interval";
    public static final String f = "is_connected";
    public static final String g = "session";
    public static final String[] h = {"_id", "session_id", "start_time", "duration", d, e, f};

    d() {
    }

    public static final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE session (_id INTEGER PRIMARY KEY autoincrement,session_id TEXT,start_time LONG,duration INTEGER,is_launch INTEGER,interval LONG, is_connected INTEGER)");
    }

    public static final void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS session");
    }
}
