package com.tencent.tmsecure.module.plugin;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.List;
import tms.fo;

public final class PluginManager extends BaseManager {
    public static final int VERSION = 1;
    private fo a;

    public final IPluginDatabase createPluginDatabase(AbsPluginDatabaseFactor absPluginDatabaseFactor) {
        return this.a.a(absPluginDatabaseFactor);
    }

    public final List<PluginEntity> getAllPlugins() {
        return this.a.b();
    }

    public final AbsPluginControler getPluginControler() {
        return this.a.a();
    }

    public final PluginEntity getPluginEntityByKey(int i) {
        return this.a.a(i);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new fo();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void setPluginControler(AbsPluginControler absPluginControler) {
        this.a.a(absPluginControler);
    }
}
