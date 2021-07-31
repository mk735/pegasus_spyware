package com.tendcloud.tenddata;

import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;

/* access modifiers changed from: package-private */
public final class n implements BaseColumns {
    public static final String a = "event_id";
    public static final String b = "event_label";
    public static final String c = "session_id";
    public static final String d = "occurtime";
    public static final String e = "paramap";
    public static final String f = "app_event";
    public static final String[] g = {"_id", a, b, "session_id", d, e};

    n() {
    }

    public static final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE app_event (_id INTEGER PRIMARY KEY autoincrement,event_id TEXT,event_label TEXT,session_id TEXT,occurtime LONG,paramap BLOB)");
    }

    public static final void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_event");
    }
}
