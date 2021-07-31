package com.lenovo.safecenter.adapter;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.lenovo.safecenter.support.SafePaymentApp;
import java.util.ArrayList;
import java.util.List;

public class DaoImpl implements Dao {
    DbAdapter a;
    SQLiteDatabase b;
    List<SafePaymentApp> c;
    SafePaymentApp d;

    public DaoImpl(DbAdapter adapter) {
        this.a = adapter;
    }

    public void insterForNet(String app_name, String app_packagename, String app_md5) {
        this.d = queryByPackageNameForSafeApp(app_packagename);
        try {
            if (this.d == null) {
                if (this.b == null) {
                    this.b = this.a.open();
                } else if (!this.b.isOpen()) {
                    this.b = this.a.open();
                }
                ContentValues values = new ContentValues();
                values.put(DbAdapter.APP_NAME, app_name);
                values.put(DbAdapter.APP_PACKAGENAME, app_packagename);
                values.put(DbAdapter.APP_MD5, app_md5);
                values.put(DbAdapter.APP_FILE_SIZE, "");
                values.put(DbAdapter.APP_SHA1, "");
                this.b.insert(DbAdapter.TABLE_NAME_SAFEAPP, null, values);
                this.a.close();
                return;
            }
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            ContentValues values2 = new ContentValues();
            values2.put(DbAdapter.APP_MD5, this.d.getApp_md5() + "," + app_md5);
            this.b.update(DbAdapter.TABLE_NAME_SAFEAPP, values2, "app_packagename=?", new String[]{app_packagename});
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void insterForSafeApp(String app_name, String app_packagename, String app_md5, String app_file_size, String app_sha1) {
        try {
            if (queryByPackageNameForSafeApp(app_packagename) == null) {
                if (this.b == null) {
                    this.b = this.a.open();
                } else if (!this.b.isOpen()) {
                    this.b = this.a.open();
                }
                ContentValues values = new ContentValues();
                values.put(DbAdapter.APP_NAME, app_name);
                values.put(DbAdapter.APP_PACKAGENAME, app_packagename);
                values.put(DbAdapter.APP_MD5, app_md5);
                values.put(DbAdapter.APP_FILE_SIZE, app_file_size);
                values.put(DbAdapter.APP_SHA1, app_sha1);
                this.b.insert(DbAdapter.TABLE_NAME_SAFEAPP, null, values);
                this.a.close();
            }
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    public void updataMD5ByPackageName(String app_packagename, String MD5) {
        try {
            if (queryByPackageNameForSafeApp(app_packagename) != null) {
                if (this.b == null) {
                    this.b = this.a.open();
                } else if (!this.b.isOpen()) {
                    this.b = this.a.open();
                }
                ContentValues values = new ContentValues();
                values.put(DbAdapter.APP_MD5, MD5);
                this.b.update(DbAdapter.TABLE_NAME_SAFEAPP, values, "app_packagename=?", new String[]{app_packagename});
                this.a.close();
            }
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void deleByPackageNameForSafeApp(String app_packagename) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            this.b.delete(DbAdapter.TABLE_NAME_SAFEAPP, "app_packagename=?", new String[]{app_packagename});
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public List<SafePaymentApp> queryAllForSafeApp() {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_SAFEAPP, null, null, null, null, null, null);
            this.c = new ArrayList();
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToNext();
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_sha1(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_SHA1)));
                this.c.add(this.d);
            }
            cursor.close();
            this.a.close();
            return this.c;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return new ArrayList();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public SafePaymentApp queryByPackageNameForSafeApp(String app_packagename) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_SAFEAPP, null, "app_packagename=? ", new String[]{app_packagename}, null, null, null);
            if (cursor.moveToNext()) {
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_sha1(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_SHA1)));
                cursor.close();
                this.a.close();
                return this.d;
            }
            cursor.close();
            this.a.close();
            return null;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return null;
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public SafePaymentApp queryByAppNameForSafeApp(String app_name) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_SAFEAPP, null, " app_name=?", new String[]{app_name}, null, null, null);
            if (cursor.moveToNext()) {
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_sha1(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_SHA1)));
                cursor.close();
                this.a.close();
                return this.d;
            }
            cursor.close();
            this.a.close();
            return null;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return null;
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void insterForUserApp(String app_name, String app_packagename, String app_md5, String app_file_size, String app_state, String app_protection) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            if (this.b.isDbLockedByOtherThreads()) {
                this.a.close();
                Log.e("ydp", "lock!!!");
                return;
            }
            ContentValues values = new ContentValues();
            values.put(DbAdapter.APP_NAME, app_name);
            values.put(DbAdapter.APP_PACKAGENAME, app_packagename);
            values.put(DbAdapter.APP_MD5, app_md5);
            values.put(DbAdapter.APP_FILE_SIZE, app_file_size);
            values.put(DbAdapter.APP_STATE, app_state);
            values.put(DbAdapter.APP_PROTECTION, app_protection);
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_USERAPP, null, "app_packagename=?", new String[]{app_packagename}, null, null, null);
            try {
                if (cursor.getCount() > 0) {
                    this.b.update(DbAdapter.TABLE_NAME_USERAPP, values, "app_packagename=?", new String[]{app_packagename});
                } else {
                    this.b.insert(DbAdapter.TABLE_NAME_USERAPP, null, values);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            cursor.close();
            this.a.close();
        } catch (Exception e2) {
            Log.i("ydp", "db error:-->" + e2.getMessage());
            e2.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void deleByPackageNameForUserApp(String app_packagename) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            this.b.delete(DbAdapter.TABLE_NAME_USERAPP, "app_packagename=?", new String[]{app_packagename});
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void updataProtectionByPackageName(String app_packagename, String app_protection) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            ContentValues values = new ContentValues();
            values.put(DbAdapter.APP_PROTECTION, app_protection);
            this.b.update(DbAdapter.TABLE_NAME_USERAPP, values, "app_packagename=?", new String[]{app_packagename});
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void updataStateByPackageName(String app_packagename, String app_state) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            ContentValues values = new ContentValues();
            values.put(DbAdapter.APP_STATE, app_state);
            this.b.update(DbAdapter.TABLE_NAME_USERAPP, values, "app_packagename=?", new String[]{app_packagename});
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public void updataStateAll(String app_state) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            ContentValues values = new ContentValues();
            values.put(DbAdapter.APP_STATE, app_state);
            this.b.update(DbAdapter.TABLE_NAME_USERAPP, values, null, null);
            this.a.close();
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public List<SafePaymentApp> queryAllForUserApp() {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_USERAPP, null, null, null, null, null, null);
            this.c = new ArrayList();
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToNext();
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_state(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_STATE)));
                this.d.setApp_protection(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PROTECTION)));
                this.c.add(this.d);
            }
            cursor.close();
            this.a.close();
            return this.c;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return new ArrayList();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public SafePaymentApp queryByPackageNameForUserApp(String app_packagename) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            if (this.b.isDbLockedByOtherThreads()) {
                this.a.close();
                Log.e("ydp", "lock!!!");
                return new SafePaymentApp();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_USERAPP, null, "app_packagename=? ", new String[]{app_packagename}, null, null, null);
            try {
                if (cursor.moveToNext()) {
                    this.d = new SafePaymentApp();
                    this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                    this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                    this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                    this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                    this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                    this.d.setApp_state(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_STATE)));
                    this.d.setApp_protection(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PROTECTION)));
                    cursor.close();
                    this.a.close();
                    return this.d;
                }
                cursor.close();
                this.a.close();
                return null;
            } catch (IllegalStateException e) {
                Log.i("ydp", "db error:-->" + e.getMessage());
                e.getStackTrace();
                cursor.close();
                this.a.close();
                return null;
            }
        } catch (Exception e2) {
            Log.i("ydp", "db error:-->" + e2.getMessage());
            e2.getStackTrace();
            return new SafePaymentApp();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public SafePaymentApp queryByAppNameForUserApp(String app_name) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_USERAPP, null, " app_name LIKE ? OR ? LIKE '%'+app_name+'%'", new String[]{"%" + app_name + "%", app_name}, null, null, null);
            if (cursor.moveToNext()) {
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_state(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_STATE)));
                this.d.setApp_protection(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PROTECTION)));
                cursor.close();
                this.a.close();
                return this.d;
            }
            cursor.close();
            this.a.close();
            return null;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return new SafePaymentApp();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public List<SafePaymentApp> queryByStateForUserApp(String app_state) {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_USERAPP, null, "app_state=?", new String[]{app_state}, null, null, null);
            this.d = new SafePaymentApp();
            this.c = new ArrayList();
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToNext();
                this.d = new SafePaymentApp();
                this.d.setId(cursor.getInt(cursor.getColumnIndexOrThrow("_id")));
                this.d.setApp_name(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_NAME)));
                this.d.setApp_md5(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_MD5)));
                this.d.setApp_packagename(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PACKAGENAME)));
                this.d.setApp_file_size(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_FILE_SIZE)));
                this.d.setApp_state(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_STATE)));
                this.d.setApp_protection(cursor.getString(cursor.getColumnIndexOrThrow(DbAdapter.APP_PROTECTION)));
                this.c.add(this.d);
            }
            cursor.close();
            this.a.close();
            return this.c;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return new ArrayList();
        }
    }

    @Override // com.lenovo.safecenter.adapter.Dao
    public int queryCount() {
        try {
            if (this.b == null) {
                this.b = this.a.open();
            } else if (!this.b.isOpen()) {
                this.b = this.a.open();
            }
            Cursor cursor = this.b.query(DbAdapter.TABLE_NAME_SAFEAPP, null, null, null, null, null, null);
            int count = cursor.getCount();
            cursor.close();
            this.a.close();
            return count;
        } catch (Exception e) {
            Log.i("ydp", "db error:-->" + e.getMessage());
            e.getStackTrace();
            return 99;
        }
    }
}
