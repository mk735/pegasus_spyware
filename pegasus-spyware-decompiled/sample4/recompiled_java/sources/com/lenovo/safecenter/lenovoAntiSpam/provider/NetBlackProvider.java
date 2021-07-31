package com.lenovo.safecenter.lenovoAntiSpam.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;

public class NetBlackProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private NetAppDatabase b;

    static {
        a.addURI("com.lenovo.safecenter.netBlackProvider", "netblack", 1);
    }

    public boolean onCreate() {
        this.b = new NetAppDatabase(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/netblack";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.query("netblack", projection, selection, selectionArgs, null, null, sortOrder);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.delete("netblack", selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}
