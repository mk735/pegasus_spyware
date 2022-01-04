package com.lenovo.safecenter.notificationintercept.support;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.util.ArrayList;
import java.util.List;

public class RecordDB {
    private InterceptDatabaseHelper a;
    private SQLiteDatabase b;

    public RecordDB(Context context) {
        this.a = new InterceptDatabaseHelper(context);
    }

    public void insert(ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.insert(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, values);
    }

    public void delete(int id) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.delete(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, " _id =? ", new String[]{id + ""});
    }

    public int deleteAll() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        return this.b.delete(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, null);
    }

    public void update(int id, ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.update(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, values, " _id =? ", new String[]{id + ""});
    }

    public List<InterceptRecord> findAll() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, null, null, null, null, "_id desc");
        List<InterceptRecord> list = new ArrayList<>();
        while (cursor.moveToNext()) {
            InterceptRecord record = new InterceptRecord();
            record._id = cursor.getInt(cursor.getColumnIndex("_id"));
            record.notificationId = cursor.getInt(cursor.getColumnIndex("notification_id"));
            record.pkgname = cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME));
            record.applabel = cursor.getString(cursor.getColumnIndex("applabel"));
            record.notificationContent = cursor.getString(cursor.getColumnIndex("notification_content"));
            record.timestamp = cursor.getLong(cursor.getColumnIndex(DatabaseTables.LOG_TIMESTAMP));
            record.recordPermission = cursor.getInt(cursor.getColumnIndex("record_permission"));
            list.add(record);
        }
        cursor.close();
        return list;
    }

    public int getCount() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, null, null, null, null, null);
        int count = cursor.getCount();
        cursor.close();
        return count;
    }

    public List<RecordBean> getLast() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, null, null, null, null, "_id desc");
        List<RecordBean> list = new ArrayList<>();
        int count = 0;
        while (cursor.moveToNext() && count < 3) {
            count++;
            RecordBean bean = new RecordBean();
            bean.recordContent = cursor.getString(cursor.getColumnIndex("notification_content"));
            bean.recordPermission = cursor.getInt(cursor.getColumnIndex("record_permission"));
            bean.currentTimeMillis = (long) cursor.getInt(cursor.getColumnIndex(DatabaseTables.LOG_TIMESTAMP));
            list.add(bean);
        }
        cursor.close();
        return list;
    }

    public InterceptRecord findById(int id) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, " _id=? ", new String[]{id + ""}, null, null, null);
        InterceptRecord record = new InterceptRecord();
        while (cursor.moveToNext()) {
            record._id = cursor.getInt(cursor.getColumnIndex("_id"));
            record.notificationId = cursor.getInt(cursor.getColumnIndex("notification_id"));
            record.pkgname = cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME));
            record.applabel = cursor.getString(cursor.getColumnIndex("applabel"));
            record.notificationContent = cursor.getString(cursor.getColumnIndex("notification_content"));
            record.timestamp = cursor.getLong(cursor.getColumnIndex(DatabaseTables.LOG_TIMESTAMP));
            record.recordPermission = cursor.getInt(cursor.getColumnIndex("record_permission"));
        }
        cursor.close();
        return record;
    }

    public int[] findByPackage(String packageName) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.INTERCEPT_RECORD_TABLE, null, " pkgname=? ", new String[]{packageName}, null, null, "_id desc");
        int count = cursor.getCount();
        int permission = 0;
        if (cursor.moveToFirst()) {
            permission = cursor.getInt(cursor.getColumnIndex("record_permission"));
        }
        cursor.close();
        return new int[]{count, permission};
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
