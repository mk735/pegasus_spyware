package com.lenovo.safecenter.notificationintercept.support;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NotificationDB {
    private InterceptDatabaseHelper a;
    private SQLiteDatabase b;

    public NotificationDB(Context context) {
        this.a = new InterceptDatabaseHelper(context);
    }

    public void insert(ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        try {
            this.b.insert(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, null, values);
        } catch (Exception e) {
            Log.i("NotificationDB", "Insert Exception " + e.getMessage());
        }
    }

    public void insertList(List<NotiAdBean> list) {
        if (!(list == null || list.size() == 0)) {
            if (this.b == null) {
                this.b = this.a.getReadableDatabase();
            }
            List<NotiAdBean> findAll = findAll();
            List<NotiAdBean> newList = new ArrayList<>();
            List<NotiAdBean> oldList = new ArrayList<>();
            for (NotiAdBean lbean : list) {
                boolean contain = false;
                Iterator i$ = findAll.iterator();
                while (true) {
                    if (!i$.hasNext()) {
                        break;
                    }
                    NotiAdBean bean = i$.next();
                    if (lbean.getPkgName().equals(bean.getPkgName())) {
                        contain = true;
                        lbean.setId(bean.getId());
                        break;
                    }
                }
                if (contain) {
                    oldList.add(lbean);
                } else {
                    newList.add(lbean);
                }
            }
            this.b.beginTransaction();
            for (NotiAdBean bean2 : newList) {
                try {
                    ContentValues values = new ContentValues();
                    values.put(QueryPermissions.PACKAGENAME, bean2.getPkgName());
                    values.put("adname", bean2.getAdname());
                    values.put("description", bean2.getDescription());
                    this.b.insert(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, null, values);
                } catch (Exception e) {
                    Log.i("NotificationDB", "Insert Exception " + e.getMessage());
                }
            }
            for (NotiAdBean bean3 : oldList) {
                try {
                    ContentValues values2 = new ContentValues();
                    values2.put("_id", Integer.valueOf(bean3.getId()));
                    values2.put(QueryPermissions.PACKAGENAME, bean3.getPkgName());
                    values2.put("adname", bean3.getAdname());
                    values2.put("description", bean3.getDescription());
                    this.b.update(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, values2, " pkgname =? ", new String[]{bean3.getPkgName()});
                } catch (Exception e2) {
                    Log.i("NotificationDB", "Insert Exception " + e2.getMessage());
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
        this.b.delete(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, " _id =? ", new String[]{id + ""});
    }

    public void update(int id, ContentValues values) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        this.b.update(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, values, " _id =? ", new String[]{id + ""});
    }

    public NotiAdBean findById(int id) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, null, " _id=? ", new String[]{id + ""}, null, null, null);
        NotiAdBean record = new NotiAdBean();
        while (cursor.moveToNext()) {
            record.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            record.setPkgName(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)));
            record.setAdname(cursor.getString(cursor.getColumnIndex("adname")));
            record.setDescription(cursor.getString(cursor.getColumnIndex("description")));
        }
        cursor.close();
        return record;
    }

    public NotiAdBean findByName(String packagename) {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, null, " pkgname=? ", new String[]{packagename}, null, null, null);
        NotiAdBean record = null;
        while (cursor.moveToNext()) {
            record = new NotiAdBean();
            record.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            record.setPkgName(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)));
            record.setAdname(cursor.getString(cursor.getColumnIndex("adname")));
            record.setDescription(cursor.getString(cursor.getColumnIndex("description")));
        }
        cursor.close();
        return record;
    }

    public List<NotiAdBean> findAll() {
        if (this.b == null) {
            this.b = this.a.getReadableDatabase();
        }
        Cursor cursor = this.b.query(InterceptDatabaseHelper.NOTIFICATION_AD_TABLE, null, null, null, null, null, null);
        List<NotiAdBean> list = new ArrayList<>();
        while (cursor.moveToNext()) {
            NotiAdBean record = new NotiAdBean();
            record.setId(cursor.getInt(cursor.getColumnIndex("_id")));
            record.setPkgName(cursor.getString(cursor.getColumnIndex(QueryPermissions.PACKAGENAME)));
            record.setAdname(cursor.getString(cursor.getColumnIndex("adname")));
            record.setDescription(cursor.getString(cursor.getColumnIndex("description")));
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
