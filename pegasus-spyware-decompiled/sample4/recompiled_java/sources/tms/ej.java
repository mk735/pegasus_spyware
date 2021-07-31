package tms;

import android.content.pm.PackageStats;
import android.os.Debug;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import java.util.ArrayList;
import java.util.List;

public final class ej implements IMemoryHelper {
    private IMemoryHelper a;

    public ej(IMemoryHelper iMemoryHelper) {
        this.a = iMemoryHelper;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final boolean clearAllCacheData() {
        return false;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final boolean clearCacheData(String str) {
        return false;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final ArrayList<PackageStats> getAllAppPackageStats(List<String> list) {
        return this.a.getAllAppPackageStats(list);
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final PackageStats getAppPackageStats(String str) {
        return new PackageStats(str);
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final long getFreeMemery() {
        return this.a.getFreeMemery();
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final Debug.MemoryInfo[] getRamSize(String[] strArr) {
        return this.a.getRamSize(strArr);
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final long getTotalMemery() {
        return this.a.getTotalMemery();
    }
}
