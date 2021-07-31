package com.lenovo.providers.querypermissions;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import java.util.List;

public class QueryPermissionsProvider extends ContentProvider {
    private static final String[] b = {QueryPermissions.RECOMMENDEDACTION};
    private static final UriMatcher e = new UriMatcher(-1);
    private final String a = "QueryPermissionsProvider";
    private SQLiteDatabase c = null;
    private ContentResolver d;

    static {
        e.addURI(QueryPermissions.AUTHORITY, "pkgname/*", 2);
        e.addURI(QueryPermissions.AUTHORITY, "pkgname/*/permission/*", 1);
        e.addURI(QueryPermissions.AUTHORITY, "pkgname/*/type/*", 3);
        e.addURI(QueryPermissions.AUTHORITY, "pkgname/*/startup", 4);
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        switch (e.match(uri)) {
            case 2:
                return this.c.delete("PermissionsTable", selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues values) {
        switch (e.match(uri)) {
            case 2:
                long rowid = this.c.insert("PermissionsTable", "_id", values);
                if (rowid > -1) {
                    return ContentUris.withAppendedId(uri, rowid);
                }
                return null;
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x007e A[SYNTHETIC, Splitter:B:29:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0083 A[Catch:{ IOException -> 0x0087 }] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0092 A[SYNTHETIC, Splitter:B:38:0x0092] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0097 A[Catch:{ IOException -> 0x009b }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a3 A[SYNTHETIC, Splitter:B:46:0x00a3] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00a8 A[Catch:{ IOException -> 0x00ac }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onCreate() {
        /*
        // Method dump skipped, instructions count: 191
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.providers.querypermissions.QueryPermissionsProvider.onCreate():boolean");
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Cursor cursor;
        switch (e.match(uri)) {
            case 1:
                if (!this.c.isDbLockedByCurrentThread() && !this.c.isDbLockedByOtherThreads()) {
                    List<String> pathSegments = uri.getPathSegments();
                    cursor = this.c.query("PermissionsTable", null, "pkgname = ? AND permission = ?", new String[]{pathSegments.get(1), pathSegments.get(3)}, null, null, null);
                    break;
                } else {
                    return null;
                }
            case 2:
                if (!this.c.isDbLockedByCurrentThread() && !this.c.isDbLockedByOtherThreads()) {
                    List<String> pathSegments2 = uri.getPathSegments();
                    cursor = this.c.query("PermissionsTable", null, "pkgname = ?", new String[]{pathSegments2.get(1)}, null, null, null);
                    break;
                } else {
                    return null;
                }
            case 3:
                if (!this.c.isDbLockedByCurrentThread() && !this.c.isDbLockedByOtherThreads()) {
                    List<String> pathSegments3 = uri.getPathSegments();
                    cursor = this.c.query("PermissionsTable", null, "pkgname = ? AND type = ?", new String[]{pathSegments3.get(1), pathSegments3.get(3)}, null, null, null);
                    break;
                } else {
                    return null;
                }
            case 4:
                if (!this.c.isDbLockedByCurrentThread() && !this.c.isDbLockedByOtherThreads()) {
                    List<String> pathSegments4 = uri.getPathSegments();
                    cursor = this.c.query("PermissionsTable", new String[]{"boot_auto_start"}, "pkgname = ?", new String[]{pathSegments4.get(1)}, null, null, null);
                    break;
                } else {
                    return null;
                }
            default:
                throw new IllegalArgumentException("Error Uri: " + uri);
        }
        cursor.setNotificationUri(this.d, uri);
        return cursor;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        switch (e.match(uri)) {
            case 2:
                return this.c.update("PermissionsTable", values, selection, selectionArgs);
            default:
                throw new IllegalArgumentException("Unknown Uri:" + uri);
        }
    }
}
