package com.tencent.tmsecure.module.plugin;

import com.tencent.tmsecure.common.BaseEntity;

public class PluginEntity extends BaseEntity {
    private int a = -1;
    public String mPluginFilePath;
    public IPluginInterface mPluginInterface;
    public String mPluginName;
    public String mPluginPkgName;
    public int mPluginVerion;

    public boolean equals(Object obj) {
        return (obj instanceof PluginEntity) && getKey() == ((PluginEntity) obj).getKey();
    }

    public int getKey() {
        if (this.a == -1) {
            this.a = this.mPluginInterface.getClass().getName().hashCode();
        }
        return this.a;
    }

    public int hashCode() {
        return getKey() + 48;
    }
}
