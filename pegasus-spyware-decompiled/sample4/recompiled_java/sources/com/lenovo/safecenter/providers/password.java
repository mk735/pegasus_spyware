package com.lenovo.safecenter.providers;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.Untils;

public class password extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private AppDatabase b;

    static {
        a.addURI("com.lenovo.safecenter.password", "password", 1);
    }

    public boolean onCreate() {
        this.b = new AppDatabase(getContext());
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                Cursor cursor = null;
                if (selectionArgs != null) {
                    if (db.isDbLockedByCurrentThread() || db.isDbLockedByOtherThreads()) {
                        return null;
                    }
                    Cursor newCursor = db.query("passwordNew", null, null, null, null, null, null);
                    if (newCursor.moveToFirst()) {
                        cursor = db.query("checkpwd", projection, "result=" + (selectionArgs[0].equals(Untils.jieMi(newCursor.getString(1), PwdUtil.key)) ? 1 : 0), null, null, null, sortOrder);
                    }
                }
                return cursor;
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/password";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
