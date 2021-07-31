package com.lenovo.safecenter.antivirus.support;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class AntiVirusDBService {
    public static final int MD5_MODE = 0;
    public static final int SHA1_MODE = 1;
    Context a;
    AntiVirusDBHelper b;

    public AntiVirusDBService(Context context) {
        this.a = context;
        this.b = new AntiVirusDBHelper(context);
    }

    public List<String> getVirus(int mode) {
        List<String> virusList = new ArrayList<>();
        SQLiteDatabase db = this.b.getWritableDatabase();
        Cursor cursor = db.rawQuery("SELECT md5,sha1 FROM virus", null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    switch (mode) {
                        case 0:
                            virusList.add(cursor.getString(cursor.getColumnIndex("md5")));
                            break;
                        case 1:
                            virusList.add(cursor.getString(cursor.getColumnIndex("sha1")));
                            break;
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    db.close();
                    throw th;
                }
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        db.close();
        return virusList;
    }

    public List<String> getVirus_MD5() {
        return getVirus(0);
    }

    public List<String> getVirus_SHA1() {
        return getVirus(1);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.lenovo.safecenter.antivirus.domain.VirusDemo getVirus(java.lang.String r8, java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 165
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.support.AntiVirusDBService.getVirus(java.lang.String, java.lang.String):com.lenovo.safecenter.antivirus.domain.VirusDemo");
    }

    public boolean getVirus_md5(String pkgname, String md5) {
        int count = 0;
        SQLiteDatabase db = this.b.getWritableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM virus where pkgname=? and md5=?", new String[]{pkgname, md5});
        try {
            if (cursor.getCount() > 0) {
                count = cursor.getCount();
            }
            cursor.close();
            db.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count > 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x00a0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.lenovo.safecenter.antivirus.domain.VirusDemo getVirus(java.lang.String r9, long r10) {
        /*
        // Method dump skipped, instructions count: 169
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.support.AntiVirusDBService.getVirus(java.lang.String, long):com.lenovo.safecenter.antivirus.domain.VirusDemo");
    }
}
