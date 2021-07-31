package com.tencent.tmsecure.module.optimize;

import android.content.Context;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import tms.ed;
import tms.v;

public class CpuHelperImpl implements ICpuHelper {
    private static final String a = "/sys/devices/system/cpu/cpu0/cpufreq/";
    private static final String b = "/sys/devices/system/cpu/cpu0/cpufreq/stats/";
    private static final String c = "cpuinfo_max_freq";
    private static final String d = "cpuinfo_min_freq";
    private static final String e = "scaling_available_governors";
    private static final String f = "scaling_governor";
    private static final String g = "scaling_max_freq";
    private static final String h = "scaling_min_freq";
    private static final String i = "scaling_cur_freq";
    private static final String j = "scaling_available_frequencies";
    private static final String k = "scaling_setspeed";
    private static final String l = "time_in_state";
    private static final String m = "/sys/devices/system/cpu/";
    private static final String n = "kernel_max";
    private static final String o = "online";
    private static final String p = "present";
    private static final String q = "possible";
    private int r = 0;
    private String[] s;
    private int[] t;
    private int u;
    private int v;
    private int w;

    public CpuHelperImpl(Context context) {
        if (!ScriptHelper.providerSupportCpuRelative()) {
            ScriptHelper.canRunAtRoot(new ed(this));
        }
    }

    private static PriorityQueue<Integer> a(String str) {
        PriorityQueue<Integer> priorityQueue = new PriorityQueue<>();
        String[] split = str.split(",");
        if (split != null) {
            for (String str2 : split) {
                String[] split2 = str2.split("-");
                if (split2 != null) {
                    if (split2.length == 1) {
                        priorityQueue.add(Integer.valueOf(Integer.parseInt(split2[0])));
                    } else if (split2.length == 2) {
                        int parseInt = Integer.parseInt(split2[1]);
                        for (int parseInt2 = Integer.parseInt(split2[0]); parseInt2 <= parseInt; parseInt2++) {
                            priorityQueue.add(Integer.valueOf(parseInt2));
                        }
                    }
                }
            }
        }
        return priorityQueue;
    }

    private boolean a(int i2) {
        for (int i3 : getScalingAvaliableFrequencies()) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    private int[] a() {
        boolean z;
        int cpuInfoMinFreq = getCpuInfoMinFreq();
        int cpuInfoMaxFreq = getCpuInfoMaxFreq();
        int scalingCurFreq = getScalingCurFreq();
        if (cpuInfoMinFreq == 0 || cpuInfoMaxFreq == 0 || scalingCurFreq == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(Integer.valueOf(cpuInfoMinFreq));
        arrayList.add(Integer.valueOf(cpuInfoMaxFreq));
        if (!(scalingCurFreq == cpuInfoMinFreq || scalingCurFreq == cpuInfoMaxFreq)) {
            arrayList.add(Integer.valueOf(scalingCurFreq));
        }
        String scalingGovernor = getScalingGovernor();
        if (!"userspace".equals(scalingGovernor) && getScalingAvaliableGovernors() != null && b("userspace")) {
            setScalingGovernor("userspace");
        }
        if ("userspace".equals(getScalingGovernor())) {
            boolean z2 = true;
            int i2 = (cpuInfoMaxFreq + cpuInfoMinFreq) / 2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= 3) {
                    break;
                }
                setScalingFreq(i2, false);
                int scalingCurFreq2 = getScalingCurFreq();
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((Integer) it.next()).intValue() == scalingCurFreq2) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    arrayList.add(Integer.valueOf(scalingCurFreq2));
                }
                if (z2) {
                    z2 = false;
                    i2 = (cpuInfoMaxFreq + scalingCurFreq2) / 2;
                    i3 = i4;
                } else {
                    z2 = true;
                    i2 = (cpuInfoMinFreq + scalingCurFreq2) / 2;
                    i3 = i4;
                }
            }
            setScalingGovernor(scalingGovernor);
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i5 = 0; i5 < size; i5++) {
            iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
        }
        return iArr;
    }

    private static int b() {
        PriorityQueue<Integer> a2 = a(v.i("/sys/devices/system/cpu/present").trim());
        int i2 = 0;
        Iterator<Integer> it = a(v.i("/sys/devices/system/cpu/possible").trim()).iterator();
        while (it.hasNext()) {
            i2 = a2.contains(Integer.valueOf(it.next().intValue())) ? i2 + 1 : i2;
        }
        return i2;
    }

    private boolean b(String str) {
        String[] scalingAvaliableGovernors = getScalingAvaliableGovernors();
        if (scalingAvaliableGovernors == null || scalingAvaliableGovernors.length == 0) {
            return false;
        }
        for (String str2 : scalingAvaliableGovernors) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getAvailableCpus() {
        if (this.r <= 0) {
            this.r = b();
        }
        return this.r;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getCpuInfoMaxFreq() {
        if (this.u == 0) {
            if (ScriptHelper.providerSupportCpuRelative()) {
                this.u = ScriptHelper.provider().b(1);
            } else {
                String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").trim();
                if (trim != null && trim.length() > 0) {
                    this.u = Integer.valueOf(trim).intValue();
                }
            }
        }
        return this.u;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getCpuInfoMinFreq() {
        if (this.v == 0) {
            if (ScriptHelper.providerSupportCpuRelative()) {
                this.v = ScriptHelper.provider().b(0);
            } else {
                String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").trim();
                if (trim != null && trim.length() > 0) {
                    this.v = Integer.valueOf(trim).intValue();
                }
            }
        }
        return this.v;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getKernelMax() {
        String trim;
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().f();
        }
        if (this.w == 0 && (trim = v.i("/sys/devices/system/cpu/kernel_max").trim()) != null && trim.length() > 0) {
            this.w = Integer.valueOf(trim).intValue() + 1;
        }
        return this.w;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public String[] getOnlineCpus() {
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().c(2);
        }
        String trim = v.i("/sys/devices/system/cpu/online").trim();
        if (trim == null || trim.length() <= 0) {
            return null;
        }
        int indexOf = trim.indexOf("-");
        while (indexOf != -1) {
            int parseInt = Integer.parseInt(trim.substring(indexOf + 1, indexOf + 2));
            int parseInt2 = Integer.parseInt(trim.substring(indexOf - 1, indexOf));
            StringBuffer stringBuffer = new StringBuffer(parseInt2 + ",");
            int i2 = parseInt2;
            while (true) {
                i2++;
                if (i2 >= parseInt) {
                    break;
                }
                stringBuffer.append(i2 + ",");
            }
            stringBuffer.append(parseInt);
            trim = trim.replaceFirst(parseInt2 + "-" + parseInt, stringBuffer.toString());
            indexOf = trim.indexOf("-");
        }
        return trim.split(",");
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public synchronized int[] getScalingAvaliableFrequencies() {
        int[] iArr;
        int i2 = 0;
        synchronized (this) {
            if (this.t == null) {
                if (ScriptHelper.providerSupportCpuRelative()) {
                    String[] c2 = ScriptHelper.provider().c(1);
                    this.t = new int[c2.length];
                    while (i2 < c2.length) {
                        this.t[i2] = Integer.valueOf(c2[i2]).intValue();
                        i2++;
                    }
                } else {
                    String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies").trim();
                    if (trim.length() > 0) {
                        String[] split = trim.split(" ");
                        this.t = new int[split.length];
                        while (i2 < split.length) {
                            this.t[i2] = Integer.valueOf(split[i2]).intValue();
                            i2++;
                        }
                    } else {
                        String[] j2 = v.j("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
                        if (j2 == null || j2.length <= 0) {
                            this.t = a();
                        } else {
                            this.t = new int[j2.length];
                            while (i2 < j2.length) {
                                this.t[i2] = Integer.valueOf(j2[i2].split(" ")[0]).intValue();
                                i2++;
                            }
                        }
                    }
                }
            }
            iArr = this.t;
        }
        return iArr;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public synchronized String[] getScalingAvaliableGovernors() {
        if (this.s == null) {
            if (ScriptHelper.providerSupportCpuRelative()) {
                this.s = ScriptHelper.provider().c(0);
            } else {
                String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors").trim();
                if (trim != null && trim.length() > 0) {
                    this.s = trim.split(" ");
                }
            }
        }
        return this.s;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getScalingCurFreq() {
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().b(2);
        }
        String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq").trim();
        if (trim == null || trim.length() == 0) {
            return 0;
        }
        return Integer.valueOf(trim).intValue();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public String getScalingGovernor() {
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().e();
        }
        String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
        if (trim == null || trim.length() == 0) {
            return null;
        }
        return trim;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getScalingMaxFreq() {
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().b(4);
        }
        String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq").trim();
        if (trim == null || trim.length() == 0) {
            return 0;
        }
        return Integer.valueOf(trim).intValue();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public int getScalingMinFreq() {
        if (ScriptHelper.providerSupportCpuRelative()) {
            return ScriptHelper.provider().b(3);
        }
        String trim = v.i("/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq").trim();
        if (trim == null || trim.length() == 0) {
            return 0;
        }
        return Integer.valueOf(trim).intValue();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public void setScalingFreq(int i2) throws IllegalArgumentException {
        setScalingFreq(i2, true);
    }

    public void setScalingFreq(int i2, boolean z) throws IllegalArgumentException {
        if (ScriptHelper.providerSupportCpuRelative()) {
            ScriptHelper.provider().a(2, i2, z);
            return;
        }
        if (z) {
            if (!a(i2)) {
                throw new IllegalArgumentException("the freq is not available!");
            } else if (i2 < getScalingMinFreq() || i2 > getScalingMaxFreq()) {
                throw new IllegalArgumentException("the freq should not be smaller than the min freq and not be larger than the max freq!");
            }
        }
        ScriptHelper.runScriptAsRoot("echo " + i2 + " > " + a + k);
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public synchronized void setScalingGovernor(String str) throws IllegalArgumentException {
        if (ScriptHelper.providerSupportCpuRelative()) {
            ScriptHelper.provider().a(str);
        } else {
            if (this.s == null) {
                getScalingAvaliableGovernors();
            }
            if (!b(str)) {
                throw new IllegalArgumentException("the governor is unavailable!");
            }
            ScriptHelper.runScriptAsRoot("echo " + str + " > " + a + f);
        }
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public void setScalingMaxFreq(int i2) throws IllegalArgumentException {
        if (ScriptHelper.providerSupportCpuRelative()) {
            ScriptHelper.provider().a(4, i2, true);
        } else if (!a(i2)) {
            throw new IllegalArgumentException("the max freq is not available!");
        } else if (i2 < getScalingMinFreq()) {
            throw new IllegalArgumentException("the max freq can not be smaller than the min freq!");
        } else {
            ScriptHelper.runScriptAsRoot("echo " + i2 + " > " + a + g);
        }
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public void setScalingMinFreq(int i2) throws IllegalArgumentException {
        if (ScriptHelper.providerSupportCpuRelative()) {
            ScriptHelper.provider().a(3, i2, true);
        } else if (!a(i2)) {
            throw new IllegalArgumentException("the min freq is not available!");
        } else if (i2 > getScalingMaxFreq()) {
            throw new IllegalArgumentException("the min freq can not be larger than the max freq!");
        } else {
            ScriptHelper.runScriptAsRoot("echo " + i2 + " > " + a + h);
        }
    }
}
