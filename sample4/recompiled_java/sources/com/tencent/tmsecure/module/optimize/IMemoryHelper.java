package com.tencent.tmsecure.module.optimize;

import android.content.pm.PackageStats;
import android.os.Debug;
import java.util.ArrayList;
import java.util.List;

public interface IMemoryHelper {
    boolean clearAllCacheData();

    boolean clearCacheData(String str);

    ArrayList<PackageStats> getAllAppPackageStats(List<String> list);

    PackageStats getAppPackageStats(String str);

    long getFreeMemery();

    Debug.MemoryInfo[] getRamSize(String[] strArr);

    long getTotalMemery();
}
