package com.lenovo.performancecenter.service.object;

public class PolicyObject {
    public static final String Describe = "com.lenovo.performancecenter.service.object.PolicyObject";
    public static boolean sortBy;
    public static int totleRuningCount;
    public long cpuTimeSpace = -1;
    public long impLevel;
    public String label;
    public long lastCpuTime;
    public long lastQianTaiCputime = -1;
    public int pid;
    public String pkgName;
    public String proName;
    public int selfRunningCount;
    public long totleQianTaiCpuTime;

    public PolicyObject(int pid2, String pkgName2, String label2, String proName2) {
        this.pid = pid2;
        this.pkgName = pkgName2;
        this.label = label2;
        this.proName = proName2;
    }

    public int hashCode() {
        return this.pkgName.hashCode();
    }

    public boolean equals(Object o) {
        if (this.pkgName.equals(((PolicyObject) o).pkgName)) {
            return true;
        }
        return false;
    }

    public int compareTo(PolicyObject obj) {
        if (sortBy) {
            if (this.cpuTimeSpace > obj.cpuTimeSpace) {
                return -1;
            }
            return this.cpuTimeSpace < obj.cpuTimeSpace ? 1 : 0;
        } else if (this.impLevel <= obj.impLevel) {
            return this.impLevel < obj.impLevel ? 1 : 0;
        } else {
            return -1;
        }
    }
}
