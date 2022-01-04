package com.lenovo.performancecenter.performance;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import com.lenovo.performancecenter.LeemCenterJNITools;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import com.lenovo.performancecenter.service.object.PolicyObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;

public class PolicyTask extends TimerTask {
    private String a = "";
    private String b = "";
    private Handler c;
    protected ArrayList<PolicyObject> canKillList;
    private int d = 5;
    private HashMap<String, PolicyAppInfo> e;
    private HashMap<String, PolicyObject> f;
    private ArrayList<PolicyObject> g;
    private ArrayList<PolicyObject> h;
    private Context i;
    public boolean isRunning;
    private String j = "";

    public PolicyTask(Context context, Handler handler) {
        this.i = context;
        this.c = handler;
        this.isRunning = true;
        ActivityManager am = (ActivityManager) this.i.getSystemService("activity");
        if (!am.getRunningTasks(1).isEmpty()) {
            List<ActivityManager.RunningTaskInfo> runningTaskInfo = am.getRunningTasks(1);
            if (runningTaskInfo.size() != 0) {
                this.a = runningTaskInfo.get(0).topActivity.getPackageName();
            }
        }
        this.f = new HashMap<>();
        this.g = new ArrayList<>();
        this.canKillList = new ArrayList<>();
        this.h = new ArrayList<>();
        this.e = new HashMap<>();
    }

    public void updatePolicyData(PolicyAppInfo mUAI, boolean executePolicy) {
        PolicyObject po;
        long[] pidCpuTime = new long[1];
        if (LeemCenterJNITools.getPidCpuTime_native(new int[]{mUAI.pid}, pidCpuTime) == 0) {
            if (this.f.containsKey(mUAI.packageName)) {
                po = this.f.get(mUAI.packageName);
            } else {
                po = new PolicyObject(mUAI.pid, mUAI.packageName, mUAI.label, mUAI.processName);
                po.lastCpuTime = pidCpuTime[0];
            }
            if (mUAI.packageName.equals(this.a)) {
                if (!executePolicy) {
                    po.lastQianTaiCputime = pidCpuTime[0];
                } else if (po.lastQianTaiCputime >= 0) {
                    po.totleQianTaiCpuTime += pidCpuTime[0] - po.lastQianTaiCputime;
                }
            } else if (mUAI.packageName.equals(this.b) && po.lastQianTaiCputime >= 0) {
                po.totleQianTaiCpuTime += pidCpuTime[0] - po.lastQianTaiCputime;
            }
            if (executePolicy) {
                po.cpuTimeSpace = (pidCpuTime[0] - po.lastCpuTime) - po.totleQianTaiCpuTime;
            } else {
                po.selfRunningCount++;
                po.impLevel = mUAI.getTotleImpLevel().longValue();
            }
            this.f.put(mUAI.packageName, po);
        }
    }

    private void a() {
        synchronized (this.e) {
            for (String pkgName : this.e.keySet()) {
                if (this.f.containsKey(pkgName)) {
                    updatePolicyData(this.e.get(pkgName), true);
                    PolicyObject po = this.f.get(pkgName);
                    if (po.selfRunningCount == PolicyObject.totleRuningCount) {
                        synchronized (this.g) {
                            this.g.add(po);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        synchronized (this.canKillList) {
            PolicyObject.sortBy = false;
            synchronized (this.g) {
                a(this.g);
                Iterator<PolicyObject> it = this.g.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    PolicyObject next = it.next();
                    if (i2 <= this.d && next.impLevel > 100 && !DataLayerManager.isInSysWhiteList(next.proName, this.i)) {
                        i2++;
                        synchronized (this.canKillList) {
                            this.canKillList.add(next);
                        }
                        this.h.add(next);
                    }
                    i2 = i2;
                }
            }
            PolicyObject.sortBy = true;
            synchronized (this.g) {
                a(this.g);
                Iterator<PolicyObject> it2 = this.g.iterator();
                int i3 = 0;
                while (it2.hasNext()) {
                    PolicyObject next2 = it2.next();
                    if (!this.h.contains(next2) && i3 <= this.d && next2.cpuTimeSpace > 0 && !DataLayerManager.isInSysWhiteList(next2.proName, this.i) && next2.impLevel > 200) {
                        i3++;
                        synchronized (this.canKillList) {
                            this.canKillList.add(next2);
                        }
                    }
                    i3 = i3;
                }
            }
        }
    }

    public HashMap<String, Integer> getCanBeKilledApp() {
        a();
        HashMap<String, Integer> result = new HashMap<>();
        synchronized (this.canKillList) {
            Iterator i$ = this.canKillList.iterator();
            while (i$.hasNext()) {
                PolicyObject po = i$.next();
                result.put(po.pkgName, Integer.valueOf(po.pid));
            }
            this.canKillList.clear();
        }
        synchronized (this.g) {
            this.g.clear();
        }
        return result;
    }

    public void run() {
        int i2;
        int i3;
        synchronized (this.g) {
            this.g.clear();
        }
        synchronized (this.canKillList) {
            this.canKillList.clear();
        }
        this.h.clear();
        b();
        a();
        synchronized (this.canKillList) {
            ArrayList<PolicyObject> arrayList = this.canKillList;
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i4 = 0; i4 < size; i4++) {
                if (arrayList.get(i4) != null) {
                    iArr[i4] = arrayList.get(i4).pid;
                }
            }
            Debug.MemoryInfo[] processMemoryInfo = ((ActivityManager) this.i.getSystemService("activity")).getProcessMemoryInfo(iArr);
            if (processMemoryInfo.length > 0) {
                int length = iArr.length;
                int i5 = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    int totalPss = processMemoryInfo[i6].getTotalPss();
                    if (totalPss > 0) {
                        i5 += totalPss * 1024;
                    }
                }
                i2 = i5;
            } else {
                i2 = 0;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<PolicyObject> it = this.canKillList.iterator();
            int i7 = 0;
            while (it.hasNext()) {
                PolicyObject next = it.next();
                if (next != null) {
                    i7++;
                    arrayList2.add(next.pkgName);
                }
                i7 = i7;
            }
            try {
                RootPassage.execRootCmd(null, arrayList2, " -fs ", this.i);
            } catch (Exception e2) {
                Iterator<PolicyObject> it2 = this.canKillList.iterator();
                while (it2.hasNext()) {
                    PolicyObject next2 = it2.next();
                    if (next2 != null) {
                        ((ActivityManager) this.i.getSystemService("activity")).killBackgroundProcesses(next2.pkgName);
                        i3 = i7 + 1;
                    } else {
                        i3 = i7;
                    }
                    i7 = i3;
                }
            }
            Message obtainMessage = this.c.obtainMessage(0);
            obtainMessage.arg1 = i7;
            obtainMessage.arg2 = i2;
            this.c.sendMessage(obtainMessage);
        }
        b();
        this.f.clear();
        PolicyObject.totleRuningCount = 0;
    }

    private void a(ArrayList<PolicyObject> poList) {
        Collections.sort(poList, new Comparator<PolicyObject>() {
            /* class com.lenovo.performancecenter.performance.PolicyTask.AnonymousClass1 */

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(PolicyObject policyObject, PolicyObject policyObject2) {
                return policyObject.compareTo(policyObject2);
            }
        });
    }

    private void b() {
        synchronized (this.e) {
            this.e.clear();
            PolicyObject.totleRuningCount++;
            this.e = ScanApplicationInfo.readRunningAppInfoPolicy(this.i, this);
        }
    }

    public void release() {
        if (this.f != null) {
            this.f.clear();
        }
        if (this.g != null) {
            this.g.clear();
        }
        if (this.canKillList != null) {
            this.canKillList.clear();
        }
        if (this.h != null) {
            this.h.clear();
        }
        if (this.e != null) {
            this.e.clear();
        }
    }
}
