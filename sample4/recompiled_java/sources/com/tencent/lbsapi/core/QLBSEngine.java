package com.tencent.lbsapi.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.model.QLBSCellInfo;
import com.tencent.lbsapi.model.QLBSWifiInfo;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class QLBSEngine {
    private String A = null;
    private String B = null;
    protected Runnable a = new g(this);
    protected Runnable b = new i(this);
    private Context c;
    private QLBSNotification d;
    private Handler e = null;
    private TelephonyManager f = null;
    private LocationManager g = null;
    private int h = 0;
    private LocationListener i = null;
    private WifiManager j = null;
    private BroadcastReceiver k = null;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private boolean o = true;
    private boolean p = true;
    private boolean q = false;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private ArrayList x = null;
    private ArrayList y = null;
    private ArrayList z = null;

    public QLBSEngine(Context context, QLBSNotification qLBSNotification) {
        this.c = context;
        this.d = qLBSNotification;
        u();
    }

    static /* synthetic */ void a(QLBSEngine qLBSEngine) {
        try {
            if (qLBSEngine.l) {
                List<ScanResult> scanResults = qLBSEngine.j.getScanResults();
                if (qLBSEngine.y == null) {
                    qLBSEngine.y = new ArrayList();
                } else {
                    qLBSEngine.y.clear();
                }
                if (qLBSEngine.z == null) {
                    qLBSEngine.z = new ArrayList();
                } else {
                    qLBSEngine.z.clear();
                }
                for (int i2 = 0; i2 < scanResults.size(); i2++) {
                    ScanResult scanResult = scanResults.get(i2);
                    String[] split = scanResult.BSSID.split(c.N);
                    byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
                    for (int i3 = 0; i3 < split.length; i3++) {
                        bArr[5 - i3] = (byte) Integer.parseInt(split[i3], 16);
                    }
                    ArrayList arrayList = qLBSEngine.y;
                    long j2 = (long) (bArr[0] & 255);
                    long j3 = (long) (bArr[1] & 255);
                    long j4 = (long) (bArr[2] & 255);
                    long j5 = (long) (bArr[3] & 255);
                    long j6 = (long) (bArr[4] & 255);
                    long j7 = (long) (bArr[5] & 255);
                    long j8 = j2 | (j3 << 8) | (j4 << 16) | (j5 << 24) | (j6 << 32) | (j7 << 40);
                    arrayList.add(Long.valueOf((((long) (bArr[7] & 255)) << 56) | j8 | (((long) (bArr[6] & 255)) << 48)));
                    qLBSEngine.z.add(new QLBSWifiInfo(scanResult.SSID, scanResult.BSSID, scanResult.level));
                }
                if (!qLBSEngine.o) {
                    if (qLBSEngine.u == 0 && qLBSEngine.y.size() == 0) {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(0);
                            qLBSEngine.q = false;
                        }
                        if (qLBSEngine.e != null) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        }
                    } else {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(1);
                            qLBSEngine.q = false;
                        }
                        if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        }
                    }
                } else if (!qLBSEngine.m) {
                    if (qLBSEngine.u == 0 && qLBSEngine.v == 900000000 && qLBSEngine.y.size() == 0) {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(0);
                            qLBSEngine.q = false;
                        }
                        if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        }
                    } else {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(1);
                            qLBSEngine.q = false;
                        }
                        if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        }
                    }
                }
                qLBSEngine.l = false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            qLBSEngine.l = false;
            if (!qLBSEngine.o) {
                if (qLBSEngine.u == 0) {
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(0);
                        qLBSEngine.q = false;
                    }
                    if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                    }
                }
            } else if (!qLBSEngine.m) {
                if (qLBSEngine.u == 0 && qLBSEngine.v == 900000000) {
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(0);
                        qLBSEngine.q = false;
                    }
                    if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        return;
                    }
                    return;
                }
                if (qLBSEngine.d != null) {
                    qLBSEngine.d.onLocationNotification(1);
                    qLBSEngine.q = false;
                }
                if (!(qLBSEngine.e == null || qLBSEngine.a == null)) {
                    qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                }
            }
        }
    }

    static /* synthetic */ void a(QLBSEngine qLBSEngine, Location location) {
        try {
            qLBSEngine.w = (int) (location.getLongitude() * 1000000.0d);
            qLBSEngine.v = (int) (location.getLatitude() * 1000000.0d);
            if (!qLBSEngine.q) {
                if (qLBSEngine.u != 0) {
                    qLBSEngine.r();
                }
            } else if (qLBSEngine.m) {
                qLBSEngine.g.removeUpdates(qLBSEngine.i);
                qLBSEngine.m = false;
                if (!qLBSEngine.p) {
                    if (qLBSEngine.u == 0 && qLBSEngine.v == 900000000) {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(0);
                            qLBSEngine.q = false;
                        }
                        if (qLBSEngine.e != null && qLBSEngine.a != null) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                            qLBSEngine.q = false;
                            return;
                        }
                        return;
                    }
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(1);
                        qLBSEngine.q = false;
                    }
                    if (qLBSEngine.e != null && qLBSEngine.a != null) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                    }
                } else if (qLBSEngine.l) {
                } else {
                    if (qLBSEngine.u == 0 && qLBSEngine.v == 900000000 && (qLBSEngine.y.size() == 0 || qLBSEngine.y == null)) {
                        if (qLBSEngine.d != null) {
                            qLBSEngine.d.onLocationNotification(0);
                            qLBSEngine.q = false;
                        }
                        if (qLBSEngine.e != null && qLBSEngine.a != null) {
                            qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                            return;
                        }
                        return;
                    }
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(1);
                        qLBSEngine.q = false;
                    }
                    if (qLBSEngine.e != null && qLBSEngine.a != null) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (!qLBSEngine.p) {
                if (qLBSEngine.u == 0) {
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(0);
                        qLBSEngine.q = false;
                    }
                    if (qLBSEngine.e != null && qLBSEngine.a != null) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                    }
                }
            } else if (qLBSEngine.l) {
            } else {
                if (qLBSEngine.u == 0 && (qLBSEngine.y.size() == 0 || qLBSEngine.y == null)) {
                    if (qLBSEngine.d != null) {
                        qLBSEngine.d.onLocationNotification(0);
                        qLBSEngine.q = false;
                    }
                    if (qLBSEngine.e != null && qLBSEngine.a != null) {
                        qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                        return;
                    }
                    return;
                }
                if (qLBSEngine.d != null) {
                    qLBSEngine.d.onLocationNotification(1);
                    qLBSEngine.q = false;
                }
                if (qLBSEngine.e != null && qLBSEngine.a != null) {
                    qLBSEngine.e.removeCallbacks(qLBSEngine.a);
                }
            }
        }
    }

    public static long t() {
        Calendar instance = Calendar.getInstance();
        instance.set(1970, 0, 1, 8, 0, 0);
        return (Calendar.getInstance().getTimeInMillis() - instance.getTimeInMillis()) / 1000;
    }

    private void u() {
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 900000000;
        this.w = 900000000;
        if (this.x == null) {
            this.x = new ArrayList();
        } else {
            this.x.clear();
        }
        if (this.y == null) {
            this.y = new ArrayList();
        } else {
            this.y.clear();
        }
        if (this.z == null) {
            this.z = new ArrayList();
        } else {
            this.z.clear();
        }
        this.B = null;
    }

    private void v() {
        if (this.f == null) {
            this.f = (TelephonyManager) this.c.getSystemService("phone");
        }
        if (this.f != null) {
            try {
                this.A = this.f.getDeviceId();
                if (this.A == null) {
                    this.A = "";
                }
            } catch (Exception e2) {
                this.A = "";
            }
            if (this.f.getPhoneType() == 1) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) this.f.getCellLocation();
                if (gsmCellLocation != null) {
                    this.t = gsmCellLocation.getLac();
                    this.u = gsmCellLocation.getCid();
                    if (this.t > 0 || this.u > 0) {
                        String networkOperator = this.f.getNetworkOperator();
                        if (networkOperator != null) {
                            try {
                                this.r = Integer.parseInt(networkOperator.substring(0, 3));
                                this.s = Integer.parseInt(networkOperator.substring(3));
                            } catch (Exception e3) {
                                this.r = 0;
                                this.s = 0;
                                this.t = 0;
                                this.u = 0;
                                this.B = networkOperator;
                                return;
                            }
                        }
                        List<NeighboringCellInfo> neighboringCellInfo = this.f.getNeighboringCellInfo();
                        if (neighboringCellInfo != null) {
                            for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                                this.x.add(Integer.valueOf(neighboringCellInfo2.getCid()));
                            }
                            return;
                        }
                        return;
                    }
                    this.t = 0;
                    this.u = 0;
                }
            } else if (Integer.valueOf(Build.VERSION.SDK).intValue() >= 4 && this.f.getPhoneType() == 2) {
                try {
                    Class<?> cls = Class.forName("android.telephony.cdma.CdmaCellLocation");
                    if (cls != null) {
                        cls.getConstructor(null);
                        CellLocation cellLocation = this.f.getCellLocation();
                        Method method = cls.getMethod("getSystemId", new Class[0]);
                        if (method != null) {
                            this.s = ((Integer) method.invoke(cellLocation, null)).intValue();
                        }
                        Method method2 = cls.getMethod("getNetworkId", new Class[0]);
                        if (method2 != null) {
                            this.t = ((Integer) method2.invoke(cellLocation, null)).intValue();
                        }
                        Method method3 = cls.getMethod("getBaseStationId", new Class[0]);
                        if (method3 != null) {
                            this.u = ((Integer) method3.invoke(cellLocation, null)).intValue();
                        }
                        String networkOperator2 = this.f.getNetworkOperator();
                        if (networkOperator2 != null) {
                            try {
                                this.r = Integer.parseInt(networkOperator2.substring(0, 3));
                            } catch (Exception e4) {
                                this.B = networkOperator2;
                            }
                        }
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    public void a() {
        if (this.e != null) {
            this.e.removeCallbacks(this.a);
        }
        this.q = false;
        u();
    }

    public void a(boolean z2) {
        this.o = z2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00ae, code lost:
        if (r7.g != null) goto L_0x00b0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean a(int r8) {
        /*
        // Method dump skipped, instructions count: 298
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.QLBSEngine.a(int):boolean");
    }

    public void b(boolean z2) {
        this.p = z2;
    }

    public boolean b() {
        this.h = 0;
        LocationManager locationManager = (LocationManager) this.c.getSystemService("location");
        if (locationManager == null) {
            return false;
        }
        try {
            if (locationManager.isProviderEnabled("gps")) {
                this.h = 1;
            }
        } catch (Exception e2) {
        }
        try {
            if (locationManager.isProviderEnabled("network")) {
                this.h += 2;
            }
        } catch (Exception e3) {
        }
        return this.h > 0;
    }

    public int c() {
        v();
        if (this.r == 0 && this.s == 0) {
            return -1;
        }
        if (this.s == 0 || this.s == 2 || this.s == 7) {
            return 0;
        }
        if (this.s == 1 || this.s == 6) {
            return 1;
        }
        return (this.s == 3 || this.s == 5) ? 2 : -1;
    }

    public QLBSCellInfo d() {
        v();
        return new QLBSCellInfo(h(), g(), i(), j());
    }

    public boolean e() {
        try {
            if (this.j == null) {
                this.j = (WifiManager) this.c.getSystemService(SettingUtil.WIFI);
            }
            if (this.j != null) {
                return this.j.isWifiEnabled();
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public void f() {
        if (this.k != null) {
            this.c.unregisterReceiver(this.k);
        }
        if (this.d != null) {
            this.d = null;
        }
        if (!(this.g == null || this.i == null)) {
            this.g.removeUpdates(this.i);
            this.g = null;
            this.i = null;
        }
        if (this.e != null) {
            this.e.removeCallbacks(this.a);
            this.e.removeCallbacks(this.b);
            this.e = null;
        }
    }

    public int g() {
        return this.r;
    }

    public int h() {
        return this.s;
    }

    public int i() {
        return this.t;
    }

    public int j() {
        return this.u;
    }

    public int k() {
        return this.v;
    }

    public int l() {
        return this.w;
    }

    public ArrayList m() {
        return this.y;
    }

    public ArrayList n() {
        return this.z;
    }

    public ArrayList o() {
        return this.x;
    }

    public String p() {
        return this.A == null ? "" : this.A;
    }

    public String q() {
        return this.B == null ? "" : this.B;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00b5 A[SYNTHETIC, Splitter:B:31:0x00b5] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ba A[SYNTHETIC, Splitter:B:34:0x00ba] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00cc A[SYNTHETIC, Splitter:B:43:0x00cc] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00d1 A[SYNTHETIC, Splitter:B:46:0x00d1] */
    /* JADX WARNING: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void r() {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.QLBSEngine.r():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0033 A[SYNTHETIC, Splitter:B:20:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0038 A[SYNTHETIC, Splitter:B:23:0x0038] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0052 A[SYNTHETIC, Splitter:B:33:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0057 A[SYNTHETIC, Splitter:B:36:0x0057] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.ArrayList s() {
        /*
        // Method dump skipped, instructions count: 121
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.QLBSEngine.s():java.util.ArrayList");
    }

    public String toString() {
        return "mcc=" + this.r + " mnc" + this.s + " cell=" + this.u + "  lat=" + this.v + " wifiNum=" + this.y.size();
    }
}
