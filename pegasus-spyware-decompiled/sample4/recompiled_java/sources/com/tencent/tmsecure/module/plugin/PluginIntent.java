package com.tencent.tmsecure.module.plugin;

import android.os.Bundle;
import com.tencent.tmsecure.common.ManagerCreator;

public final class PluginIntent {
    public IPluginInterface mPlugin;
    public int mToViewIndex;

    private PluginIntent() {
    }

    public PluginIntent(IPluginInterface iPluginInterface, int i) {
        this.mPlugin = iPluginInterface;
        this.mToViewIndex = i;
    }

    public static Bundle convertToBundle(PluginIntent pluginIntent) {
        Bundle bundle = new Bundle();
        bundle.putInt("plugin_key", pluginIntent.mPlugin.getClass().getName().hashCode());
        bundle.putInt("view_index", pluginIntent.mToViewIndex);
        return bundle;
    }

    public static PluginIntent convertToIntent(Bundle bundle) {
        PluginIntent pluginIntent = new PluginIntent();
        int i = bundle.getInt("plugin_key");
        int i2 = bundle.getInt("view_index");
        PluginEntity pluginEntityByKey = ((PluginManager) ManagerCreator.getManager(PluginManager.class)).getPluginEntityByKey(i);
        if (pluginEntityByKey == null) {
            throw new NullPointerException("Could found the plugin by the key " + i);
        }
        pluginIntent.mPlugin = pluginEntityByKey.mPluginInterface;
        pluginIntent.mToViewIndex = i2;
        return pluginIntent;
    }
}
