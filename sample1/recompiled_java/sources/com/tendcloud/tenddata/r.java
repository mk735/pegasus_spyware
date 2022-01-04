package com.tendcloud.tenddata;

import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;

/* access modifiers changed from: package-private */
public final class r implements BaseColumns {
    public static final String a = "error_time";
    public static final String b = "message";
    public static final String c = "repeat";
    public static final String d = "shorthashcode";
    public static final String e = "error_report";
    public static final String[] f = {"_id", a, b, c, d};

    r() {
    }

    public static final void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE error_report (_id INTEGER PRIMARY KEY autoincrement,error_time LONG,message BLOB,repeat INTERGER,shorthashcode TEXT)");
    }

    public static final void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS error_report");
    }
}
