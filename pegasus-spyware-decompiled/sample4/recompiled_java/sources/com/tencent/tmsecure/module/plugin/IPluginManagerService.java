package com.tencent.tmsecure.module.plugin;

import android.os.IInterface;
import java.util.List;

public interface IPluginManagerService extends IInterface {
    List<PluginEntity> getAllPlugins();
}
