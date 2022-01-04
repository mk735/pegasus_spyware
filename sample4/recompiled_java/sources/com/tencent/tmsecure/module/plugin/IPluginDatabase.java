package com.tencent.tmsecure.module.plugin;

import android.content.ContentValues;
import android.database.Cursor;

public interface IPluginDatabase {
    void close();

    int delete(String str, String str2, String[] strArr);

    boolean deleteTable(String str);

    void execSQL(String str);

    void execTransaction(Runnable runnable);

    long insert(String str, String str2, ContentValues contentValues);

    Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5);

    int update(String str, ContentValues contentValues, String str2, String[] strArr);
}
