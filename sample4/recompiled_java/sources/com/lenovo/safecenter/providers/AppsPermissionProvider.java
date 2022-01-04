package com.lenovo.safecenter.providers;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.lenovo.safecenter.database.AppDatabase;

public class AppsPermissionProvider extends ContentProvider {
    public static final String AUTHORITY = "com.lenovo.safecenter.AppsPermission";
    private static final UriMatcher a = new UriMatcher(-1);
    private SQLiteDatabase b;
    private ContentResolver c;

    static {
        a.addURI(AUTHORITY, AppDatabase.DB_APP, 1);
        a.addURI(AUTHORITY, "appname/#", 2);
    }

    public boolean onCreate() {
        this.b = new AppDatabase(getContext()).getReadableDatabase();
        this.c = getContext().getContentResolver();
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        switch (a.match(uri)) {
            case 1:
                Cursor cursor = this.b.query(AppDatabase.DB_APP, projection, selection, selectionArgs, null, null, sortOrder);
                cursor.setNotificationUri(this.c, uri);
                return cursor;
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/appname";
            case 2:
                return "vnd.android.cursor.item/appname";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        switch (a.match(uri)) {
            case 1:
                return this.b.delete(AppDatabase.DB_APP, selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        switch (a.match(uri)) {
            case 1:
                if (!values.containsKey("isupload")) {
                    values.put("isupload", (Integer) 0);
                }
                long rowid = this.b.insert(AppDatabase.DB_APP, "_id", values);
                if (rowid > -1) {
                    return ContentUris.withAppendedId(uri, rowid);
                }
                return null;
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        switch (a.match(uri)) {
            case 1:
                return this.b.update(AppDatabase.DB_APP, values, selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }
}
