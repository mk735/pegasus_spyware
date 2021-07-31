package com.tencent.tmsecure.module.plugin;

import android.database.sqlite.SQLiteDatabase;

public abstract class AbsPluginDatabaseFactor {
    private String a;
    private int b;

    public AbsPluginDatabaseFactor(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final String getName() {
        return this.a;
    }

    public final int getVersion() {
        return this.b;
    }

    public abstract void onCreate(IPluginDatabase iPluginDatabase, SQLiteDatabase sQLiteDatabase);

    public void onUpgrade(IPluginDatabase iPluginDatabase, SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
