package tms;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import com.lenovo.lps.sus.c.c;
import com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor;
import com.tencent.tmsecure.module.plugin.IPluginDatabase;

/* access modifiers changed from: package-private */
public final class dz implements IPluginDatabase {
    private AbsPluginDatabaseFactor a;
    private Handler b;
    private SQLiteOpenHelper c;
    private Runnable d = new eb(this);

    public dz(Context context, AbsPluginDatabaseFactor absPluginDatabaseFactor) {
        this.a = absPluginDatabaseFactor;
        this.b = new Handler(context.getApplicationContext().getMainLooper());
        this.c = new ec(this, context, this.a.getName(), this.a.getVersion());
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final void close() {
        this.b.removeCallbacks(this.d);
        this.b.postDelayed(this.d, c.ap);
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final int delete(String str, String str2, String[] strArr) {
        int delete;
        synchronized (this.a) {
            delete = this.c.getWritableDatabase().delete(str, str2, strArr);
        }
        return delete;
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final boolean deleteTable(String str) {
        synchronized (this.a) {
            this.c.getWritableDatabase().delete(str, null, null);
        }
        return true;
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final void execSQL(String str) {
        synchronized (this.a) {
            this.c.getWritableDatabase().execSQL(str);
        }
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final void execTransaction(Runnable runnable) {
        synchronized (this.a) {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                runnable.run();
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
                close();
            }
        }
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final long insert(String str, String str2, ContentValues contentValues) {
        long insert;
        synchronized (this.a) {
            insert = this.c.getWritableDatabase().insert(str, str2, contentValues);
        }
        return insert;
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        Cursor query;
        synchronized (this.a) {
            query = this.c.getWritableDatabase().query(str, strArr, str2, strArr2, str3, str4, str5);
        }
        return query;
    }

    @Override // com.tencent.tmsecure.module.plugin.IPluginDatabase
    public final int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        int update;
        synchronized (this.a) {
            update = this.c.getWritableDatabase().update(str, contentValues, str2, strArr);
        }
        return update;
    }
}
