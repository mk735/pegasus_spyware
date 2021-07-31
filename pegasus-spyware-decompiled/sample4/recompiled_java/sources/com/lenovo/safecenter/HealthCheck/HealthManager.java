package com.lenovo.safecenter.HealthCheck;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.item.HealthAdvertiseIntercept;
import com.lenovo.safecenter.HealthCheck.item.HealthBootApp;
import com.lenovo.safecenter.HealthCheck.item.HealthClearCache;
import com.lenovo.safecenter.HealthCheck.item.HealthHarassIntercept;
import com.lenovo.safecenter.HealthCheck.item.HealthKillVirus;
import com.lenovo.safecenter.HealthCheck.item.HealthLeCloudSynForContact;
import com.lenovo.safecenter.HealthCheck.item.HealthLowMenory;
import com.lenovo.safecenter.HealthCheck.item.HealthNoSetTrafficLimit;
import com.lenovo.safecenter.HealthCheck.item.HealthProtectPrivacy;
import com.lenovo.safecenter.HealthCheck.item.HealthProtectThief;
import com.lenovo.safecenter.HealthCheck.item.HealthProtectTraffic;
import com.lenovo.safecenter.HealthCheck.item.HealthProtectVirus;
import com.lenovo.safecenter.HealthCheck.item.HealthReadPrivacyApp;
import com.lenovo.safecenter.HealthCheck.item.HealthRunningAppProcess;
import com.lenovo.safecenter.HealthCheck.item.HealthSafeInputMethod;
import com.lenovo.safecenter.HealthCheck.item.HealthSafehomepage;
import com.lenovo.safecenter.HealthCheck.item.HealthSafepaymen;
import com.lenovo.safecenter.HealthCheck.item.HealthSendSmsFromBackgroud;
import com.lenovo.safecenter.HealthCheck.item.HealthTrafficMonitor;
import com.lenovo.safecenter.HealthCheck.item.HealthWlanAutoUpdateLab;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.utils.Log;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

public class HealthManager implements HealthResultCallback {
    public static final int ACTION_HEALTH_OPTIMIZE = 1;
    public static final int ACTION_HEALTH_SCAN = 0;
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 100;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private TreeMap<Integer, BaseHealthCheck> l = null;
    private HealthCheckCallback m;
    private Context n;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;

    static /* synthetic */ void a(HealthManager x0) {
        Log.i("wu0wu", "onScanStarted...");
        ArrayList<BaseHealthCheck> arrayList = new ArrayList<>();
        for (Map.Entry<Integer, BaseHealthCheck> entry : x0.l.entrySet()) {
            BaseHealthCheck value = entry.getValue();
            if (WflUtils.isRoot() || !value.isRootItem) {
                Log.i("wu0wu", "getAllCheckItems item.mKey=" + value.mKey);
                arrayList.add(value);
            }
        }
        if (x0.p) {
            x0.j = 100;
            x0.k = x0.j / (arrayList.size() - 1);
        } else if (HealthKillVirus.isClounKillVirus(x0.n)) {
            x0.j = 100;
            x0.k = x0.j / (arrayList.size() - 1);
        } else {
            x0.j = (arrayList.size() * 4) + 100;
            x0.k = 4;
        }
        Log.i("wu0wu", "mValueProgressEveryCheck=" + x0.k);
        x0.m.onStarted(x0.j, 0);
        x0.setStatus(0);
        x0.setScore(100);
        x0.setScanProgress(0);
        x0.a(arrayList);
        x0.a(0);
    }

    static /* synthetic */ void a(HealthManager x0, ArrayList x1) {
        WflUtils.Log("i", "wu0wu", "===================Optimization.start======================");
        x0.m.onStarted(x0.j, 1);
        x0.setProgressBarIndeterminate(true);
        x0.setStatus(2);
        ArrayList<BaseHealthCheck> arrayList = new ArrayList<>();
        if (x1 == null || x1.size() == 0) {
            for (Map.Entry<Integer, BaseHealthCheck> entry : x0.l.entrySet()) {
                BaseHealthCheck value = entry.getValue();
                if (value.result != null && (value.result.weight == 1 || value.result.weight == 3)) {
                    arrayList.add(value);
                }
            }
        } else {
            for (int i2 = 0; i2 < x1.size(); i2++) {
                Log.i("wu0wu", "keys=" + x1.get(i2));
                if (!(x0.l.get(x1.get(i2)) == null || x0.l.get(x1.get(i2)).result == null)) {
                    arrayList.add(x0.l.get(x1.get(i2)));
                }
            }
        }
        x0.b(arrayList);
        x0.a(1);
        WflUtils.Log("i", "wu0wu", "===================Optimization.end======================");
    }

    public HealthManager(Context context, boolean isAidl) {
        this.n = context;
        this.p = isAidl;
        this.l = new TreeMap<>();
        HealthProtectVirus healthProtectVirus = new HealthProtectVirus(this.n, this);
        HealthAdvertiseIntercept healthAdvertiseIntercept = new HealthAdvertiseIntercept(this.n, this);
        this.l.put(Integer.valueOf(healthProtectVirus.mKey), healthProtectVirus);
        this.l.put(Integer.valueOf(healthAdvertiseIntercept.mKey), healthAdvertiseIntercept);
        if (!this.p) {
            HealthLeCloudSynForContact healthLeCloudSynForContact = new HealthLeCloudSynForContact(this.n, this);
            HealthSafehomepage healthSafehomepage = new HealthSafehomepage(this.n, this);
            HealthProtectThief healthProtectThief = new HealthProtectThief(this.n, this);
            HealthNoSetTrafficLimit healthNoSetTrafficLimit = new HealthNoSetTrafficLimit(this.n, this);
            HealthBootApp healthBootApp = new HealthBootApp(this.n, this);
            this.l.put(Integer.valueOf(healthLeCloudSynForContact.mKey), healthLeCloudSynForContact);
            this.l.put(Integer.valueOf(healthSafehomepage.mKey), healthSafehomepage);
            this.l.put(Integer.valueOf(healthProtectThief.mKey), healthProtectThief);
            this.l.put(Integer.valueOf(healthNoSetTrafficLimit.mKey), healthNoSetTrafficLimit);
            this.l.put(Integer.valueOf(healthBootApp.mKey), healthBootApp);
        }
        HealthRunningAppProcess healthRunningAppProcess = new HealthRunningAppProcess(this.n, this);
        HealthClearCache healthClearCache = new HealthClearCache(this.n, this);
        HealthProtectTraffic healthProtectTraffic = new HealthProtectTraffic(this.n, this);
        HealthSendSmsFromBackgroud healthSendSmsFromBackgroud = new HealthSendSmsFromBackgroud(this.n, this);
        HealthProtectPrivacy healthProtectPrivacy = new HealthProtectPrivacy(this.n, this);
        HealthReadPrivacyApp healthReadPrivacyApp = new HealthReadPrivacyApp(this.n, this);
        HealthHarassIntercept healthHarassIntercept = new HealthHarassIntercept(this.n, this);
        HealthTrafficMonitor healthTrafficMonitor = new HealthTrafficMonitor(this.n, this);
        HealthSafepaymen healthSafepaymen = new HealthSafepaymen(this.n, this);
        HealthSafeInputMethod healthSafeInputMethod = new HealthSafeInputMethod(this.n, this);
        HealthWlanAutoUpdateLab healthWlanAutoUpdateLab = new HealthWlanAutoUpdateLab(this.n, this);
        this.l.put(Integer.valueOf(healthRunningAppProcess.mKey), healthRunningAppProcess);
        this.l.put(Integer.valueOf(healthClearCache.mKey), healthClearCache);
        this.l.put(Integer.valueOf(healthProtectTraffic.mKey), healthProtectTraffic);
        this.l.put(Integer.valueOf(healthSendSmsFromBackgroud.mKey), healthSendSmsFromBackgroud);
        this.l.put(Integer.valueOf(healthProtectPrivacy.mKey), healthProtectPrivacy);
        this.l.put(Integer.valueOf(healthReadPrivacyApp.mKey), healthReadPrivacyApp);
        this.l.put(Integer.valueOf(healthHarassIntercept.mKey), healthHarassIntercept);
        this.l.put(Integer.valueOf(healthTrafficMonitor.mKey), healthTrafficMonitor);
        this.l.put(Integer.valueOf(healthSafepaymen.mKey), healthSafepaymen);
        this.l.put(Integer.valueOf(healthSafeInputMethod.mKey), healthSafeInputMethod);
        this.l.put(Integer.valueOf(healthWlanAutoUpdateLab.mKey), healthWlanAutoUpdateLab);
        if (!this.p) {
            HealthKillVirus healthKillVirus = new HealthKillVirus(this.n, this);
            this.l.put(Integer.valueOf(healthKillVirus.mKey), healthKillVirus);
        }
    }

    public void scan(final HealthCheckCallback scanCallback) {
        Log.i("wu0wu", "HealthManager scan ||isWorking=" + this.q);
        if (!this.q) {
            new Thread(new Runnable() {
                /* class com.lenovo.safecenter.HealthCheck.HealthManager.AnonymousClass1 */

                public final void run() {
                    HealthManager.this.q = true;
                    HealthManager.this.m = scanCallback;
                    HealthManager.a(HealthManager.this);
                    HealthManager.this.q = false;
                }
            }).start();
        }
    }

    public void optimize(final ArrayList<Integer> keys) {
        if (!this.q) {
            new Thread(new Runnable() {
                /* class com.lenovo.safecenter.HealthCheck.HealthManager.AnonymousClass2 */

                public final void run() {
                    HealthManager.this.q = true;
                    HealthManager.a(HealthManager.this, keys);
                    HealthManager.this.q = false;
                }
            }).start();
        }
    }

    @Override // com.lenovo.safecenter.HealthCheck.HealthResultCallback
    public void onOneItemProcess(HealthItemResult result) {
        this.m.onOneItemProcess(result);
    }

    @Override // com.lenovo.safecenter.HealthCheck.HealthResultCallback
    public void result(HealthItemResult result) {
        this.m.onResult(result);
    }

    public void exit() {
        if (this.g == 0 || this.g == 2) {
            this.o = true;
            return;
        }
        this.o = true;
        a();
    }

    private void a() {
        if (this.l != null) {
            if (this.l.containsKey(21)) {
                if (this.g == 0 && getScanIndex() == getAllItemSize() - 1) {
                    ((HealthKillVirus) getHealthCheckItemByKey(21)).cancelScan();
                    WflUtils.Log("d", "wu0wu", "mQScannerMananger.cancelScan()");
                }
                WflUtils.Log("d", "wu0wu", "KEY_KILL_VIRUS.clear()");
                getHealthCheckItemByKey(21).clear();
            }
            this.l.clear();
        }
    }

    public boolean containsKey(int key) {
        return this.l.containsKey(Integer.valueOf(key));
    }

    public void setItemsManual() {
        if (containsKey(2)) {
            HealthLeCloudSynForContact lecloud = (HealthLeCloudSynForContact) getHealthCheckItemByKey(2);
            if (lecloud.isShowLeCloudActivity()) {
                lecloud.manual();
            }
        }
        if (containsKey(4)) {
            HealthLowMenory lowMemory = (HealthLowMenory) getHealthCheckItemByKey(4);
            if (lowMemory.isShowLowMemoryActivity()) {
                lowMemory.manual();
            }
        }
        if (containsKey(5)) {
            HealthProtectThief thief = (HealthProtectThief) getHealthCheckItemByKey(5);
            if (thief.isShowProtectThiefActivity()) {
                thief.manual();
            }
        }
        if (containsKey(7)) {
            HealthBootApp bootApp = (HealthBootApp) getHealthCheckItemByKey(7);
            if (bootApp.isShowBootSpeedActivity()) {
                bootApp.manual();
            }
        }
    }

    public int getAllItemSize() {
        if (this.l == null) {
            return 0;
        }
        return this.l.size();
    }

    public BaseHealthCheck getHealthCheckItemByKey(int itemKey) {
        if (this.l == null) {
            return null;
        }
        return this.l.get(Integer.valueOf(itemKey));
    }

    public int getScanIndex() {
        return this.h;
    }

    public int getStatus() {
        return this.g;
    }

    public void setStatus(int status) {
        this.g = status;
        this.m.onStatusChanged(status);
    }

    public int getScore() {
        return this.f;
    }

    public void setScore(int score) {
        this.f = score;
        this.m.onScoreChanged(score);
    }

    public int getScanProgress() {
        return this.i;
    }

    public void setScanProgress(int scanProgress) {
        this.i = scanProgress;
        this.m.onProgressChanged(scanProgress);
    }

    public int getMAX_PROGRESS() {
        return this.j;
    }

    public int getValueProgressEveryCheck() {
        return this.k;
    }

    public void setProgressBarIndeterminate(boolean isIndeterminate) {
        this.m.setProgressBarIndeterminate(isIndeterminate);
    }

    public void plusOrDecrementNumItem(int viewType, boolean isPlus) {
        switch (viewType) {
            case 1:
                if (isPlus) {
                    this.a++;
                    return;
                } else {
                    this.a--;
                    return;
                }
            case 2:
                if (isPlus) {
                    this.d++;
                    return;
                } else {
                    this.d--;
                    return;
                }
            case 3:
                if (isPlus) {
                    this.b++;
                    return;
                } else {
                    this.b--;
                    return;
                }
            case 4:
                if (isPlus) {
                    this.e++;
                    return;
                } else {
                    this.e--;
                    return;
                }
            case 5:
                if (isPlus) {
                    this.c++;
                    return;
                } else {
                    this.c--;
                    return;
                }
            default:
                return;
        }
    }

    public int getNumDangerItem() {
        return this.a;
    }

    public int getNumManualItem() {
        return this.b;
    }

    public int getNumSafeItem() {
        return this.c;
    }

    public int getNumCanOptimizationItem() {
        return this.d;
    }

    public int getNumHasOptimizationItem() {
        return this.e;
    }

    public void saveHealthScoreAndCheckupTime() {
        Const.isHealthCheckNoOptimiza(false);
        WflUtils.Log("i", "wu0wu", "HealthCheckup saveHealthScoreAndCheckupTime...");
        int score = this.f;
        if (this.f > 100) {
            score = 100;
        } else if (this.f < 0) {
            score = 0;
        }
        Const.setHealthCheckupScore(score);
        Const.setHealthCheckupTime(System.currentTimeMillis());
        if (Const.isFirstHealthCheckup()) {
            Const.setFirstHealthCheckup();
        }
    }

    private void a(ArrayList<BaseHealthCheck> scanItems) {
        for (int index = 0; index < scanItems.size(); index++) {
            BaseHealthCheck checkItem = scanItems.get(index);
            this.h = index;
            WflUtils.Log("i", "wu0wu", "checkItem.key=" + checkItem.mKey);
            checkItem.scan();
            this.l.put(Integer.valueOf(checkItem.mKey), checkItem);
            try {
                Thread.sleep(300);
                if (this.o) {
                    WflUtils.Log("i", "wu0wu", "isExit scan");
                    a();
                    return;
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        if (this.f != 100) {
            setStatus(1);
        } else {
            setStatus(3);
        }
    }

    private void b(ArrayList<BaseHealthCheck> canOptimizaItems) {
        for (int index = 0; index < canOptimizaItems.size(); index++) {
            BaseHealthCheck checkItem = canOptimizaItems.get(index);
            checkItem.optimiza();
            this.l.put(Integer.valueOf(checkItem.mKey), checkItem);
            WflUtils.Log("i", "wu0wu", "optimiza checkItem.key=" + checkItem.mKey);
            if (this.g == 4) {
                WflUtils.Log("i", "wu0wu", "===================Optimization.end======================");
                return;
            } else if (this.o) {
                WflUtils.Log("i", "wu0wu", "isExit Optimization");
                a();
                return;
            } else {
                try {
                    Thread.sleep(300);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (this.f != 100) {
            setStatus(1);
        } else {
            setStatus(3);
        }
        saveHealthScoreAndCheckupTime();
    }

    private void a(int action) {
        saveHealthScoreAndCheckupTime();
        this.m.onFinished(action);
    }

    public int getSizeByWeightType(int type) {
        int count = 0;
        for (Map.Entry<Integer, BaseHealthCheck> entry : this.l.entrySet()) {
            if (entry.getValue().result.weight == type) {
                count++;
            }
        }
        return count;
    }
}
