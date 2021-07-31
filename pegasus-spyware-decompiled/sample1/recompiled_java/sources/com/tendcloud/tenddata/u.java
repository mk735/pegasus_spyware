package com.tendcloud.tenddata;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.net.Socket;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;

/* access modifiers changed from: package-private */
public final class u {
    public static Context a = null;
    static String b = null;
    private static final String c = "pref.deviceid.key";
    private static TelephonyManager d = null;
    private static final String e = "UTF-8";
    private static final String f = "00:00:00:00:00:00";
    private static final Pattern g = Pattern.compile("^([0-9A-F]{2}:){5}([0-9A-F]{2})$");
    private static String h;

    u() {
    }

    static String A() {
        return Locale.getDefault().getCountry();
    }

    static String B() {
        return Locale.getDefault().getLanguage();
    }

    static String C() {
        DisplayMetrics displayMetrics = a.getResources().getDisplayMetrics();
        return displayMetrics != null ? displayMetrics.widthPixels + "*" + displayMetrics.heightPixels + "*" + displayMetrics.density : "";
    }

    static String D() {
        String[] strArr = {"UNKNOWN", "GPRS", "EDGE", "UMTS", v.b, "EVDO_0", "EVDO_A", "1xRTT", "HSDPA", "HSUPA", "HSPA", "IDEN", "EVDO_B", "LTE", "EHRPD", "HSPAP"};
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        int networkType = d.getNetworkType();
        return (networkType < 0 || networkType >= strArr.length) ? strArr[0] : strArr[networkType];
    }

    static m E() {
        m mVar = new m();
        String[] Q = Q();
        try {
            mVar.a = Q[0];
            mVar.b = Integer.valueOf(Q[1]).intValue();
            mVar.d = Q[2];
            mVar.c = Float.valueOf(Q[3]).floatValue();
        } catch (Exception e2) {
        }
        int[] F = F();
        mVar.g = F[0];
        mVar.h = F[1];
        int[] G = G();
        mVar.i = G[0];
        mVar.j = G[1];
        mVar.k = G[2];
        mVar.l = G[3];
        mVar.m = H();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) a.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        mVar.n = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
        mVar.o = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
        mVar.p = displayMetrics.densityDpi;
        mVar.q = Build.DISPLAY;
        mVar.r = "unknown";
        try {
            mVar.r = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, "gsm.version.baseband");
        } catch (Exception e3) {
        }
        String f2 = f();
        if (f2 != null) {
            mVar.s = f2;
        }
        String h2 = h();
        if (h2 != null) {
            mVar.t = h2;
        }
        a(mVar);
        mVar.y = o();
        mVar.A = l();
        mVar.B = g();
        return mVar;
    }

    static int[] F() {
        int[] iArr = {0, 0};
        int[] iArr2 = new int[4];
        for (int i = 0; i < 4; i++) {
            iArr2[i] = 0;
        }
        try {
            FileReader fileReader = new FileReader("/proc/meminfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            for (int i2 = 0; i2 < 4; i2++) {
                try {
                    iArr2[i2] = i(bufferedReader.readLine());
                } catch (IOException e2) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e3) {
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e4) {
                    }
                    throw th;
                }
            }
            iArr[0] = iArr2[0];
            iArr[1] = iArr2[3] + iArr2[1] + iArr2[2];
            try {
                bufferedReader.close();
                fileReader.close();
            } catch (IOException e5) {
            }
        } catch (FileNotFoundException e6) {
        }
        return iArr;
    }

    static int[] G() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        int availableBlocks = statFs.getAvailableBlocks();
        StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        return new int[]{(statFs.getBlockCount() * (statFs.getBlockSize() / 512)) / 2, ((statFs.getBlockSize() / 512) * availableBlocks) / 2, (statFs2.getBlockCount() * (statFs2.getBlockSize() / 512)) / 2, ((statFs2.getBlockSize() / 512) * statFs2.getAvailableBlocks()) / 2};
    }

    static int H() {
        Matcher matcher = Pattern.compile("\\s*([0-9]+)").matcher(j("/sys/class/power_supply/battery/full_bat"));
        if (!matcher.find()) {
            return 0;
        }
        try {
            return Integer.valueOf(matcher.toMatchResult().group(0)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    static String I() {
        if (b == null) {
            Sensor[] sensorArr = new Sensor[64];
            for (Sensor sensor : ((SensorManager) a.getSystemService("sensor")).getSensorList(-1)) {
                if (sensor.getType() < sensorArr.length && sensor.getType() >= 0) {
                    sensorArr[sensor.getType()] = sensor;
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < sensorArr.length; i++) {
                if (sensorArr[i] != null) {
                    stringBuffer.append(i).append('.').append(sensorArr[i].getVendor()).append('-').append(sensorArr[i].getName()).append('-').append(sensorArr[i].getVersion()).append('\n');
                }
            }
            b = String.valueOf(stringBuffer.toString().hashCode());
        }
        return b;
    }

    private static synchronized void J() {
        synchronized (u.class) {
            if (d == null) {
                d = (TelephonyManager) a.getSystemService("phone");
            }
        }
    }

    private static String K() {
        String str;
        String O = O();
        String M = M();
        String N = N();
        String L = L();
        String[] strArr = {O, M, N, L};
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = null;
                break;
            }
            str = strArr[i];
            if (!c(str)) {
                break;
            }
            i++;
        }
        if (c(str)) {
            str = P();
        }
        if (c(O)) {
            h(str);
        }
        if (c(M)) {
            f(str);
        }
        if (c(N)) {
            g(str);
        }
        if (c(L)) {
            e(str);
        }
        return str;
    }

    private static String L() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return d(Environment.getExternalStorageDirectory() + "/.tid" + I());
        }
        return null;
    }

    private static String M() {
        return d("/tmp/.tid");
    }

    private static String N() {
        return d("/var/.tid");
    }

    private static String O() {
        return PreferenceManager.getDefaultSharedPreferences(a).getString(c, null);
    }

    private static String P() {
        String h2 = h();
        String str = "1";
        if (c(h2)) {
            h2 = f();
            str = "0";
        }
        if (c(h2)) {
            h2 = UUID.randomUUID().toString();
            str = "2";
        }
        return str + b(h2);
    }

    private static String[] Q() {
        boolean z;
        String[] strArr = new String[4];
        for (int i = 0; i < 4; i++) {
            strArr[i] = "";
        }
        ArrayList arrayList = new ArrayList();
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        arrayList.add(readLine);
                    } else {
                        try {
                            break;
                        } catch (IOException e2) {
                            z = true;
                        } catch (FileNotFoundException e3) {
                            z = true;
                        }
                    }
                } catch (IOException e4) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                        z = false;
                    } catch (IOException e5) {
                        z = false;
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e6) {
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            fileReader.close();
            z = true;
        } catch (FileNotFoundException e7) {
            z = false;
        }
        String[] strArr2 = {"Processor\\s*:\\s*(.*)", "CPU\\s*variant\\s*:\\s*0x(.*)", "Hardware\\s*:\\s*(.*)"};
        if (z) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < 3; i2++) {
                Pattern compile = Pattern.compile(strArr2[i2]);
                for (int i3 = 0; i3 < size; i3++) {
                    Matcher matcher = compile.matcher((String) arrayList.get(i3));
                    if (matcher.find()) {
                        strArr[i2] = matcher.toMatchResult().group(1);
                    }
                }
            }
        }
        strArr[3] = j("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
        return strArr;
    }

    private static String a(Cursor cursor, String str) {
        return cursor.getString(cursor.getColumnIndex(str));
    }

    static String a(String str, String str2) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.startsWith("unknown") || lowerCase.startsWith("alps") || lowerCase.startsWith("android") || lowerCase.startsWith("sprd") || lowerCase.startsWith("spreadtrum") || lowerCase.startsWith("rockchip") || lowerCase.startsWith("wondermedia") || lowerCase.startsWith("mtk") || lowerCase.startsWith("mt65") || lowerCase.startsWith("nvidia") || lowerCase.startsWith("brcm") || lowerCase.startsWith("marvell") || str2.toLowerCase().contains(lowerCase)) {
            return null;
        }
        return str;
    }

    static void a(m mVar) {
        Cursor query;
        Uri parse = Uri.parse("content://telephony/carriers/preferapn");
        if (a.checkCallingOrSelfUriPermission(parse, 1) == 0 && (query = a.getContentResolver().query(parse, null, null, null, null)) != null && query.moveToFirst()) {
            try {
                mVar.u = a(query, "apn");
                mVar.v = a(query, "mcc");
                mVar.w = a(query, "mnc");
                String a2 = a(query, "proxy");
                if (a2 != null && !a2.trim().equals("")) {
                    mVar.x = true;
                }
            } finally {
                query.close();
            }
        }
    }

    public static boolean a() {
        if (!a("android.permission.INTERNET")) {
            return false;
        }
        if (a("android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) a.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        }
        Socket socket = null;
        try {
            Socket socket2 = new Socket(" .               ", 80);
            if (socket2 != null) {
                try {
                    socket2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            return true;
        } catch (Exception e3) {
            if (0 == 0) {
                return false;
            }
            try {
                socket.close();
                return false;
            } catch (IOException e4) {
                e4.printStackTrace();
                return false;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    socket.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    static boolean a(String str) {
        return a.checkCallingOrSelfPermission(str) == 0;
    }

    static String b(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(e));
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString(b2 & 255));
            }
            return sb.toString();
        } catch (Exception e2) {
            return null;
        }
    }

    private static void b(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists() || file.length() != ((long) str2.length())) {
                file.getParentFile().mkdirs();
                if (Build.VERSION.SDK_INT >= 9) {
                    ab.a(file);
                } else {
                    Runtime.getRuntime().exec("chmod 444 " + file.getAbsolutePath());
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.close();
            }
        } catch (Exception e2) {
        }
    }

    public static boolean b() {
        if (!a("android.permission.ACCESS_NETWORK_STATE")) {
            return false;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && 1 == activeNetworkInfo.getType() && activeNetworkInfo.isConnected();
    }

    public static boolean c() {
        return !c(Proxy.getDefaultHost());
    }

    static final boolean c(String str) {
        return str == null || "".equals(str.trim());
    }

    private static String d(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[128];
            int read = fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr, 0, read);
        } catch (Exception e2) {
            return null;
        }
    }

    public static HttpHost d() {
        return new HttpHost(Proxy.getDefaultHost(), Proxy.getDefaultPort());
    }

    public static synchronized String e() {
        String str;
        synchronized (u.class) {
            if (h != null) {
                str = h;
            } else {
                h = K();
                str = h;
            }
        }
        return str;
    }

    private static void e(String str) {
        b(Environment.getExternalStorageDirectory() + "/.tid" + I(), str);
    }

    public static String f() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getDeviceId();
    }

    private static void f(String str) {
        b("/tmp/.tid", str);
    }

    public static String g() {
        return "android_id";
    }

    private static void g(String str) {
        b("/var/.tid", str);
    }

    public static String h() {
        WifiInfo connectionInfo;
        if (a("android.permission.ACCESS_WIFI_STATE")) {
            WifiManager wifiManager = (WifiManager) a.getSystemService("wifi");
            if (wifiManager.isWifiEnabled() && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                String trim = connectionInfo.getMacAddress().toUpperCase().trim();
                return (f.equals(trim) || !g.matcher(trim).matches()) ? "" : trim;
            }
        }
        return "";
    }

    private static void h(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(a).edit();
        edit.putString(c, str);
        edit.commit();
    }

    private static int i(String str) {
        String str2 = "";
        try {
            Matcher matcher = Pattern.compile("([0-9]+)").matcher(str);
            if (matcher.find()) {
                str2 = matcher.toMatchResult().group(0);
            }
            return Integer.valueOf(str2).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    public static String i() {
        StringBuilder sb = new StringBuilder();
        if (a("android.permission.ACCESS_WIFI_STATE")) {
            WifiManager wifiManager = (WifiManager) a.getSystemService("wifi");
            if (wifiManager.isWifiEnabled()) {
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                String str = null;
                if (!(connectionInfo == null || connectionInfo.getBSSID() == null)) {
                    str = connectionInfo.getBSSID();
                    sb.append(str).append('/').append(connectionInfo.getRssi()).append(";;");
                }
                List<ScanResult> scanResults = wifiManager.getScanResults();
                if (scanResults != null) {
                    for (ScanResult scanResult : scanResults) {
                        if (scanResult.BSSID != null && !scanResult.BSSID.equals(str)) {
                            sb.append(scanResult.BSSID).append('/').append(scanResult.level).append(';');
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    static String j() {
        String trim = Build.MODEL.trim();
        String a2 = a(Build.MANUFACTURER.trim(), trim);
        if (c(a2)) {
            a2 = a(Build.BRAND.trim(), trim);
        }
        StringBuilder sb = new StringBuilder();
        if (a2 == null) {
            a2 = "";
        }
        return sb.append(a2).append(":").append(trim).toString();
    }

    private static String j(String str) {
        String str2 = "";
        try {
            FileReader fileReader = new FileReader(str);
            try {
                char[] cArr = new char[1024];
                BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                while (true) {
                    int read = bufferedReader.read(cArr, 0, 1024);
                    if (-1 == read) {
                        break;
                    }
                    str2 = str2 + new String(cArr, 0, read);
                }
                bufferedReader.close();
                fileReader.close();
            } catch (IOException e2) {
            }
        } catch (FileNotFoundException e3) {
        }
        return str2;
    }

    private static long k(String str) {
        long j = 1125899906842597L;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            j = (j * 131) + ((long) str.charAt(i));
        }
        return j;
    }

    static String k() {
        return Build.VERSION.SDK;
    }

    static String l() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getSimSerialNumber();
    }

    static String m() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getNetworkOperator();
    }

    static String n() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getSimOperator();
    }

    static String o() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getSubscriberId();
    }

    static String p() {
        if (!a("android.permission.READ_PHONE_STATE")) {
            return "";
        }
        J();
        return d.getNetworkOperatorName();
    }

    public static v q() {
        CdmaCellLocation cdmaCellLocation;
        v vVar = new v();
        if (a("android.permission.ACCESS_COARSE_LOCATION") || a("android.permission.ACCESS_FINE_LOCATION")) {
            try {
                CellLocation cellLocation = ((TelephonyManager) a.getSystemService("phone")).getCellLocation();
                if (cellLocation instanceof GsmCellLocation) {
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                    if (gsmCellLocation != null) {
                        vVar.d = gsmCellLocation.getCid();
                        vVar.e = gsmCellLocation.getLac();
                        vVar.c = "gsm";
                        if (Build.VERSION.SDK_INT >= 9) {
                            vVar.c += ab.a(gsmCellLocation);
                        }
                    }
                } else if ((cellLocation instanceof CdmaCellLocation) && (cdmaCellLocation = (CdmaCellLocation) cellLocation) != null) {
                    vVar.d = cdmaCellLocation.getBaseStationId();
                    vVar.e = cdmaCellLocation.getNetworkId();
                    vVar.c = "cdma:" + cdmaCellLocation.getSystemId() + ':' + cdmaCellLocation.getBaseStationLatitude() + ':' + cdmaCellLocation.getBaseStationLongitude();
                }
            } catch (Exception e2) {
            }
        }
        return vVar;
    }

    static List r() {
        ArrayList arrayList = new ArrayList();
        try {
            if (a("android.permission.ACCESS_FINE_LOCATION") || a("android.permission.ACCESS_COARSE_LOCATION")) {
                LocationManager locationManager = (LocationManager) a.getSystemService("location");
                for (String str : locationManager.getProviders(true)) {
                    Location lastKnownLocation = locationManager.getLastKnownLocation(str);
                    if (lastKnownLocation != null) {
                        arrayList.add(lastKnownLocation);
                    }
                    try {
                        PendingIntent broadcast = PendingIntent.getBroadcast(a, 0, new Intent(), 0);
                        locationManager.requestLocationUpdates(str, 300000, 0.0f, broadcast);
                        locationManager.removeUpdates(broadcast);
                    } catch (Exception e2) {
                    }
                }
            }
        } catch (Exception e3) {
        }
        return arrayList;
    }

    static String s() {
        try {
            return String.valueOf(a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionCode);
        } catch (Exception e2) {
            return "unknown";
        }
    }

    static String t() {
        try {
            return a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionName;
        } catch (Exception e2) {
            return "unknown";
        }
    }

    static Long[][] u() {
        List<ActivityManager.RecentTaskInfo> recentTasks;
        ActivityManager activityManager = (ActivityManager) a.getSystemService(e.g);
        PackageManager packageManager = a.getPackageManager();
        HashSet hashSet = new HashSet();
        hashSet.add(a.getPackageName());
        HashSet hashSet2 = new HashSet();
        if (a("android.permission.GET_TASKS") && (recentTasks = activityManager.getRecentTasks(10, 1)) != null) {
            for (ActivityManager.RecentTaskInfo recentTaskInfo : recentTasks) {
                ComponentName component = recentTaskInfo.baseIntent.getComponent();
                if (component != null) {
                    String packageName = component.getPackageName();
                    if (hashSet.add(packageName)) {
                        hashSet2.add(Long.valueOf(k(packageName)));
                    }
                }
            }
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        HashSet hashSet3 = new HashSet();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                String str = runningAppProcessInfo.processName;
                if (packageManager.getLaunchIntentForPackage(str) != null && !hashSet.contains(str)) {
                    hashSet3.add(Long.valueOf(k(str)));
                }
            }
        }
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
        HashSet hashSet4 = new HashSet();
        if (installedApplications != null) {
            for (ApplicationInfo applicationInfo : installedApplications) {
                if ((applicationInfo.flags & 1) <= 0 && !hashSet.contains(applicationInfo.packageName)) {
                    hashSet4.add(Long.valueOf(k(applicationInfo.packageName)));
                }
            }
        }
        Long[][] lArr = new Long[3][];
        lArr[0] = new Long[hashSet2.size()];
        lArr[0] = (Long[]) hashSet2.toArray(lArr[0]);
        lArr[1] = new Long[hashSet3.size()];
        lArr[1] = (Long[]) hashSet3.toArray(lArr[1]);
        lArr[2] = new Long[hashSet4.size()];
        lArr[2] = (Long[]) hashSet4.toArray(lArr[2]);
        return lArr;
    }

    static String v() {
        return a.getPackageName();
    }

    static long w() {
        try {
            if (Build.VERSION.SDK_INT < 9) {
                return -1;
            }
            return ab.a(a);
        } catch (Exception e2) {
            return -1;
        }
    }

    static long x() {
        try {
            if (Build.VERSION.SDK_INT < 9) {
                return -1;
            }
            return ab.b(a);
        } catch (Exception e2) {
            return -1;
        }
    }

    static long y() {
        try {
            return new File(a.getPackageManager().getApplicationInfo(a.getPackageName(), 0).sourceDir).length();
        } catch (Exception e2) {
            return -1;
        }
    }

    static String z() {
        try {
            return a.getPackageManager().getPackageInfo(a.getPackageName(), 64).signatures[0].toCharsString();
        } catch (PackageManager.NameNotFoundException e2) {
            return "";
        }
    }
}
