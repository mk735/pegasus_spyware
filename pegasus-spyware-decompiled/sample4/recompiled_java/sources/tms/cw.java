package tms;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.TrafficEntity;
import com.tencent.tmsecure.module.tools.PackageChangedManager;

/* access modifiers changed from: package-private */
public final class cw {
    private Context a = TMSApplication.getApplicaionContext();
    private SharedPreferences b = this.a.getSharedPreferences("traffic_xml", 0);
    private SharedPreferences.Editor c = this.b.edit();
    private de d = new de();

    public cw() {
        ((PackageChangedManager) ManagerCreator.getManager(PackageChangedManager.class)).addListener(new cx(this));
    }

    private int f(String str) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.a.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            return applicationInfo.uid;
        }
        return -1;
    }

    public final TrafficEntity a(String str) {
        int f = f(str);
        String string = this.b.getString(str, null);
        if (f == -1 || string == null || "EMPTY".equals(string)) {
            return null;
        }
        return TrafficEntity.fromString(string);
    }

    public final void a(String[] strArr) {
        for (String str : strArr) {
            int f = f(str);
            TrafficEntity a2 = a(str);
            if (f == -1 || a2 == null) {
                this.c.putString(str, "EMPTY");
            } else {
                a2.mLastUpValue = this.d.b(f);
                a2.mLastDownValue = this.d.a(f);
                a2.mMobileDownValue = 0;
                a2.mMobileUpValue = 0;
                a2.mWIFIDownValue = 0;
                a2.mWIFIUpValue = 0;
                this.c.putString(str, TrafficEntity.toString(a2));
            }
        }
        this.c.commit();
    }

    public final void a(String[] strArr, boolean z) {
        boolean z2;
        TrafficEntity trafficEntity;
        String str = ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).isWifiActive() ? SettingUtil.WIFI : "mobile";
        String string = this.b.getString("last_connection_type", null);
        if (string == null) {
            string = str;
        } else if (str.equals(string) && !z) {
            return;
        }
        for (String str2 : strArr) {
            TrafficEntity a2 = a(str2);
            int f = f(str2);
            if (a2 != null || f == -1) {
                z2 = false;
                trafficEntity = a2;
            } else {
                TrafficEntity trafficEntity2 = new TrafficEntity();
                trafficEntity2.mPkg = str2;
                z2 = true;
                trafficEntity = trafficEntity2;
            }
            if (trafficEntity != null) {
                String string2 = string == null ? this.b.getString("last_connection_type", null) : string;
                long b2 = this.d.b(f);
                long a3 = this.d.a(f);
                if (z2) {
                    trafficEntity.mLastDownValue = a3;
                    trafficEntity.mLastUpValue = b2;
                }
                if (b2 == -1 && (trafficEntity.mMobileUpValue > 0 || trafficEntity.mWIFIUpValue > 0)) {
                    b2 = 0;
                }
                if (a3 == -1 && (trafficEntity.mMobileDownValue > 0 || trafficEntity.mWIFIDownValue > 0)) {
                    a3 = 0;
                }
                long j = b2 - trafficEntity.mLastUpValue;
                long j2 = a3 - trafficEntity.mLastDownValue;
                if (j < 0) {
                    j = b2;
                }
                if (j2 < 0) {
                    j2 = b2;
                }
                if (b2 == -1 || a3 == -1) {
                    trafficEntity.mMobileDownValue = 0;
                    trafficEntity.mMobileUpValue = 0;
                    trafficEntity.mWIFIDownValue = 0;
                    trafficEntity.mWIFIUpValue = 0;
                } else if (string2.equals("mobile")) {
                    trafficEntity.mMobileDownValue = j2 + trafficEntity.mMobileDownValue;
                    trafficEntity.mMobileUpValue += j;
                } else if (string2.equals(SettingUtil.WIFI)) {
                    trafficEntity.mWIFIDownValue = j2 + trafficEntity.mWIFIDownValue;
                    trafficEntity.mWIFIUpValue += j;
                }
                trafficEntity.mLastUpValue = b2;
                trafficEntity.mLastDownValue = a3;
                this.c.putString(str2, TrafficEntity.toString(trafficEntity));
            }
        }
        this.c.putString("last_connection_type", str);
        this.c.commit();
    }

    public final boolean a() {
        return this.d.a();
    }

    public final long b(String str) {
        TrafficEntity a2 = a(str);
        if (a2 != null) {
            return a2.mMobileDownValue;
        }
        return -1;
    }

    public final long c(String str) {
        TrafficEntity a2 = a(str);
        if (a2 != null) {
            return a2.mMobileUpValue;
        }
        return -1;
    }

    public final long d(String str) {
        TrafficEntity a2 = a(str);
        if (a2 != null) {
            return a2.mWIFIDownValue;
        }
        return -1;
    }

    public final long e(String str) {
        TrafficEntity a2 = a(str);
        if (a2 != null) {
            return a2.mWIFIUpValue;
        }
        return -1;
    }
}
