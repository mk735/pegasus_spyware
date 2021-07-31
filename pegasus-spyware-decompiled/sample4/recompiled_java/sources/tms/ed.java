package tms;

import com.tencent.tmsecure.module.optimize.CpuHelperImpl;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;

public class ed implements ScriptHelper.Callback {
    final /* synthetic */ CpuHelperImpl a;

    public ed(CpuHelperImpl cpuHelperImpl) {
        this.a = cpuHelperImpl;
    }

    @Override // com.tencent.tmsecure.utils.ScriptHelper.Callback
    public void onFinish(int i) {
        if (i == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("chmod 666 /sys/devices/system/cpu/kernel_max");
            arrayList.add("chmod 666 /sys/devices/system/cpu/online");
            arrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/");
            arrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*");
            arrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/");
            arrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/stats/*");
        }
    }
}
