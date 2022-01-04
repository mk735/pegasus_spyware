package com.lenovo.safecenter.antivirus.support;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.lenovo.performancecenter.LeemCenterTools;

public class AppinfoProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private AntiVirusDBHelper b;

    static {
        a.addURI("com.lenovo.antivirus.AppinfoProvider", "appinfo", 1);
        a.addURI("com.lenovo.antivirus.AppinfoProvider", "appinfo/#", 2);
        a.addURI("com.lenovo.antivirus.AppinfoProvider", LeemCenterTools.LAST_CHECKUP_SHAREDPREFERENCE, 3);
    }

    public boolean onCreate() {
        this.b = new AntiVirusDBHelper(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/appinfo";
            case 2:
                return "vnd.android.cursor.item/appinfo";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.query("appinfo", projection, selection, selectionArgs, null, null, sortOrder);
            case 2:
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
            case 3:
                return null;
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
