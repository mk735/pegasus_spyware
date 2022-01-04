package com.lenovo.safecenter.providers;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.lenovo.safecenter.database.AppDatabase;

public class WhitePersonProvider extends ContentProvider {
    private static final UriMatcher a = new UriMatcher(-1);
    private AppDatabase b;

    static {
        a.addURI("com.lenovo.safecenter.whiteperson", "whiteperson", 1);
    }

    public boolean onCreate() {
        this.b = new AppDatabase(getContext());
        return true;
    }

    public String getType(Uri uri) {
        switch (a.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/whiteperson";
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase db = this.b.getReadableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.query("whiteperson", projection, selection, selectionArgs, null, null, sortOrder);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                return db.delete("whiteperson", selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    public Uri insert(Uri uri, ContentValues values) {
        SQLiteDatabase db = this.b.getWritableDatabase();
        switch (a.match(uri)) {
            case 1:
                return ContentUris.withAppendedId(uri, db.insert("whiteperson", "_id", values));
            default:
                return null;
        }
    }
}
