package com.lenovo.safecenter.notificationintercept.support;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.util.ArrayList;
import java.util.List;

public class PermissionDB {
    private InterceptDatabaseHelper a;
    private SQLiteDatabase b;

    public PermissionDB(Context context) {
        this.a = new InterceptDatabaseHelper(context);
    }

    public void insert(ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        try {
            this.b.insert(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, null, values);
        } catch (Exception e) {
            Log.i("PermissionDB", "Insert Exception " + e.getMessage());
        }
    }

    public void insertList(List<InterceptPermission> permissions) {
        if (!(permissions == null || permissions.size() == 0)) {
            if (this.b == null) {
                this.b = this.a.getReadableDatabase();
            }
            this.b.beginTransaction();
            for (InterceptPermission permission : permissions) {
                try {
                    ContentValues values = new ContentValues();
                    values.put(QueryPermissions.PACKAGENAME, permission.pkgname);
                    values.put(QueryPermissions.PERMISSION, Integer.valueOf(permission.permission));
                    this.b.insert(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, null, values);
                } catch (Exception e) {
                    Log.i("PermissionDB", "Insert Exception " + e.getMessage());
                }
            }
            this.b.setTransactionSuccessful();
            this.b.endTransaction();
        }
    }

    public void delete(int id) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.delete(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, " _id =? ", new String[]{id + ""});
    }

    public void update(int id, ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.update(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, values, " _id =? ", new String[]{id + ""});
    }

    public void updateList(List<InterceptPermission> permissions) {
        if (!(permissions == null || permissions.size() == 0)) {
            if (this.b == null) {
                this.b = this.a.getReadableDatabase();
            }
            this.b.beginTransaction();
            for (InterceptPermission permission : permissions) {
                try {
                    ContentValues values = new ContentValues();
                    values.put(QueryPermissions.PACKAGENAME, permission.pkgname);
                    values.put(QueryPermissions.PERMISSION, Integer.valueOf(permission.permission));
                    this.b.update(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, values, " _id =? ", new String[]{permission._id + ""});
                } catch (Exception e) {
                    Log.i("PermissionDB", "Insert Exception " + e.getMessage());
                }
            }
            this.b.setTransactionSuccessful();
            this.b.endTransaction();
        }
    }

    public InterceptPermission findById(int id) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, null, " _id=? ", new String[]{id + ""}, null, null, null);
        InterceptPermission record = new InterceptPermission();
        while (cursor.moveToNext()) {
            record._id = cursor.getInt(cursor.getColumnIndex("_id"));
            record.pkgname = cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME));
            record.permission = cursor.getInt(cursor.getColumnIndex(QueryPermissions.PERMISSION));
        }
        cursor.close();
        return record;
    }

    public InterceptPermission findByName(String packagename) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, null, " pkgname=? ", new String[]{packagename}, null, null, null);
        InterceptPermission record = null;
        while (cursor.moveToNext()) {
            record = new InterceptPermission();
            record._id = cursor.getInt(cursor.getColumnIndex("_id"));
            record.pkgname = cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME));
            record.permission = cursor.getInt(cursor.getColumnIndex(QueryPermissions.PERMISSION));
        }
        cursor.close();
        return record;
    }

    public List<InterceptPermission> findAll() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_PERMISSION_TABLE, null, null, null, null, null, null);
        List<InterceptPermission> list = new ArrayList<>();
        while (cursor.moveToNext()) {
            InterceptPermission record = new InterceptPermission();
            record._id = cursor.getInt(cursor.getColumnIndex("_id"));
            record.pkgname = cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME));
            record.permission = cursor.getInt(cursor.getColumnIndex(QueryPermissions.PERMISSION));
            list.add(record);
        }
        cursor.close();
        return list;
    }

    public void closeDatabase() {
        if (this.b != null && this.b.isOpen()) {
            this.b.close();
            this.b = null;
        }
        if (this.a != null) {
            this.a.close();
            this.a = null;
        }
    }
}
