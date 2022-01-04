package com.lenovo.safecenter.systeminfo.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.lenovo.safecenter.utils.Const;
import java.io.File;

public class DBHelper {
    public static final String DATABASE_FILENAME = "numinfo.db";
    public static final int DATABASE_VERSION = 1;
    private static final String a = DBHelper.class.getSimpleName();
    private static final String b = ("/data/data/" + Const.mContext.getPackageName() + "/databases");
    private static DBHelper f = new DBHelper();
    private SQLiteDatabase c = null;
    private String d = DATABASE_FILENAME;
    private Context e = Const.mContext;

    private DBHelper() {
    }

    public static DBHelper getInstance() {
        DBHelper dBHelper = f;
        if (!(new File(a()).exists())) {
            synchronized (f) {
                DBHelper dBHelper2 = f;
                b();
            }
        }
        return f;
    }

    public SQLiteDatabase getReadableDatabase() {
        try {
            return getWritableDatabase();
        } catch (SQLiteException e2) {
            Log.e(a, e2.getMessage());
            return SQLiteDatabase.openDatabase(a(), null, 1);
        }
    }

    public synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase db;
        if (this.d == null) {
            db = SQLiteDatabase.create(null);
        } else {
            db = this.e.openOrCreateDatabase(this.d, 0, null);
        }
        if (db != null) {
            this.c = db;
        }
        return db;
    }

    private static String a() {
        return b + '/' + DATABASE_FILENAME;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0057 A[SYNTHETIC, Splitter:B:18:0x0057] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005c A[SYNTHETIC, Splitter:B:21:0x005c] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00a7 A[SYNTHETIC, Splitter:B:41:0x00a7] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00ac A[SYNTHETIC, Splitter:B:44:0x00ac] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d2 A[SYNTHETIC, Splitter:B:53:0x00d2] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00d7 A[SYNTHETIC, Splitter:B:56:0x00d7] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f5 A[SYNTHETIC, Splitter:B:64:0x00f5] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00fa A[SYNTHETIC, Splitter:B:67:0x00fa] */
    /* JADX WARNING: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:89:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b() {
        /*
        // Method dump skipped, instructions count: 288
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.db.DBHelper.b():void");
    }
}
