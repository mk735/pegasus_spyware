package tms;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class ec extends SQLiteOpenHelper {
    final /* synthetic */ dz a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ec(dz dzVar, Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.a = dzVar;
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        dz.b(this.a).onCreate(this.a, sQLiteDatabase);
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        dz.b(this.a).onUpgrade(this.a, sQLiteDatabase, i, i2);
    }
}
