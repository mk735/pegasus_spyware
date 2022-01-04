package com.lenovo.performancecenter.framework;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

public class WhitelistProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private ContentResolver b;

    static {
        a.addURI(WhitelistAuth.AUTHORITY, "queryWhitelistApps", 1);
        a.addURI(WhitelistAuth.AUTHORITY, "updateWhitelistApp", 2);
    }

    public boolean onCreate() {
        this.b = getContext().getContentResolver();
        return true;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Log.i("ContentProvider", "uri == " + uri);
        switch (a.match(uri)) {
            case 1:
                Cursor cursor = new PerformanceDatabaseHelper(getContext()).getReadableDatabase().rawQuery("SELECT * FROM ApplicationsInfo where state = 1 ", null);
                cursor.setNotificationUri(this.b, uri);
                return cursor;
            default:
                throw new IllegalArgumentException("Error Uri: " + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        Log.i("ContentProvider", "uri == " + uri);
        switch (a.match(uri)) {
            case 2:
                return new PerformanceDatabaseHelper(getContext()).getReadableDatabase().update(DatabaseTables.APPLICATIONS_TABLE_NAME, values, selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Error Uri: " + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }
}
