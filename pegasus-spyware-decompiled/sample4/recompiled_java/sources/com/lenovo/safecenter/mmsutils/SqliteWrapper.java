package com.lenovo.safecenter.mmsutils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;

public final class SqliteWrapper {
    private SqliteWrapper() {
    }

    public static void checkSQLiteException(Context context, SQLiteException e) {
        if (e.getMessage().equals("unable to open database file")) {
            Toast.makeText(context, "��", 0).show();
            return;
        }
        throw e;
    }

    public static Cursor query(Context context, ContentResolver resolver, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        try {
            return resolver.query(uri, projection, selection, selectionArgs, sortOrder);
        } catch (SQLiteException e) {
            Log.e("SqliteWrapper", "Catch a SQLiteException when query: ", e);
            checkSQLiteException(context, e);
            return null;
        }
    }

    public static boolean requery(Context context, Cursor cursor) {
        try {
            return cursor.requery();
        } catch (SQLiteException e) {
            Log.e("SqliteWrapper", "Catch a SQLiteException when requery: ", e);
            checkSQLiteException(context, e);
            return false;
        }
    }

    public static int update(Context context, ContentResolver resolver, Uri uri, ContentValues values, String where, String[] selectionArgs) {
        try {
            return resolver.update(uri, values, where, selectionArgs);
        } catch (SQLiteException e) {
            Log.e("SqliteWrapper", "Catch a SQLiteException when update: ", e);
            checkSQLiteException(context, e);
            return -1;
        }
    }

    public static int delete(Context context, ContentResolver resolver, Uri uri, String where, String[] selectionArgs) {
        try {
            return resolver.delete(uri, where, selectionArgs);
        } catch (SQLiteException e) {
            Log.e("SqliteWrapper", "Catch a SQLiteException when delete: ", e);
            checkSQLiteException(context, e);
            return -1;
        }
    }

    public static Uri insert(Context context, ContentResolver resolver, Uri uri, ContentValues values) {
        try {
            return resolver.insert(uri, values);
        } catch (SQLiteException e) {
            Log.e("SqliteWrapper", "Catch a SQLiteException when insert: ", e);
            checkSQLiteException(context, e);
            return null;
        }
    }
}
