package com.tendcloud.tenddata;

import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;

/* access modifiers changed from: package-private */
public final class e implements BaseColumns {
    public static final String a = "name";
    public static final String b = "start_time";
    public static final String c = "duration";
    public static final String d = "session_id";
    public static final String e = "refer";
    public static final String f = "realtime";
    public static final String g = "activity";
    public static final String[] h = {"_id", a, "start_time", "duration", "session_id", e, f};

    e() {
    }

    public static final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE activity (_id INTEGER PRIMARY KEY autoincrement,name TEXT,start_time LONG,duration INTEGER,session_id TEXT,refer TEXT,realtime LONG)");
    }

    public static final void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS activity");
    }
}
