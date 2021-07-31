package tms;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.util.DisplayMetrics;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareUseageInfo;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.Logcat;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class gl extends BaseManager {
    private PackageManager a = null;
    private Context b = null;
    private SharedPreferences.Editor c;
    private SharedPreferences d;
    private fb e;
    private CertificateFactory f = null;

    private static int a(int i) {
        int i2 = 0;
        if ((i & 16) != 0) {
            i2 = 64;
        }
        return (i & 32) != 0 ? i2 | 4096 : i2;
    }

    private Certificate a(Signature signature) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(signature.toByteArray());
        try {
            X509Certificate x509Certificate = (X509Certificate) this.f.generateCertificate(byteArrayInputStream);
            try {
                byteArrayInputStream.close();
                return x509Certificate;
            } catch (IOException e2) {
                e2.printStackTrace();
                return x509Certificate;
            }
        } catch (CertificateException e3) {
            e3.printStackTrace();
            try {
                byteArrayInputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return null;
        } catch (Exception e5) {
            e5.printStackTrace();
            try {
                byteArrayInputStream.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            return null;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            throw th;
        }
    }

    private void a(PackageInfo packageInfo, AppEntity appEntity, int i) {
        X509Certificate x509Certificate;
        String str;
        if (packageInfo != null && appEntity != null) {
            if ((i & 1) != 0) {
                appEntity.put("pkgName", packageInfo.applicationInfo.packageName);
                appEntity.put("appName", packageInfo.applicationInfo.loadLabel(this.a));
                appEntity.put(AppEntity.KEY_IS_SYSTEM_BOOL, Boolean.valueOf((packageInfo.applicationInfo.flags & 1) != 0));
            }
            if ((i & 2) != 0) {
                appEntity.put("pkgName", packageInfo.applicationInfo.packageName);
                appEntity.put(AppEntity.KEY_IS_SYSTEM_BOOL, Boolean.valueOf((packageInfo.applicationInfo.flags & 1) != 0));
            }
            if ((i & 4) != 0) {
                appEntity.put(AppEntity.KEY_ICON_DRAWABLE, packageInfo.applicationInfo.loadIcon(this.a));
            }
            if ((i & 8) != 0) {
                appEntity.put("version", packageInfo.versionName);
                appEntity.put(AppEntity.KEY_VERSION_CODE_INT, Integer.valueOf(packageInfo.versionCode));
                File file = new File(packageInfo.applicationInfo.sourceDir);
                appEntity.put(AppEntity.KEY_SIZE_LONG, Long.valueOf(file.length()));
                appEntity.put(AppEntity.KEY_LAST_MODIFIED_LONG, Long.valueOf(file.lastModified()));
            }
            if (!((i & 16) == 0 || packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length < 1 || (x509Certificate = (X509Certificate) a(packageInfo.signatures[0])) == null)) {
                try {
                    str = ae.c(x509Certificate.getEncoded());
                } catch (CertificateEncodingException e2) {
                    e2.printStackTrace();
                    str = null;
                }
                appEntity.put(AppEntity.KEY_SIGNATURE_MD5_STR, str);
            }
            if ((i & 32) != 0) {
                appEntity.put(AppEntity.KEY_PERMISSION_STR_ARRAY, packageInfo.requestedPermissions);
            }
            if ((i & 64) != 0) {
                appEntity.put(AppEntity.KEY_APK_PATH_STR, packageInfo.applicationInfo.sourceDir);
                appEntity.put(AppEntity.KEY_IS_APK_BOOL, false);
            }
        }
    }

    private ArrayList<AppEntity> b(File file, String[] strArr, boolean z, int i, boolean z2) {
        AppEntity appEntity;
        if (file == null) {
            return new ArrayList<>();
        }
        ArrayList arrayList = new ArrayList();
        if (strArr != null) {
            for (String str : strArr) {
                arrayList.add(str);
            }
        }
        List<String> a2 = v.a(file, arrayList, z2);
        if (a2 == null) {
            return new ArrayList<>();
        }
        ArrayList<AppEntity> arrayList2 = new ArrayList<>();
        for (String str2 : a2) {
            if (str2 != null && !str2.equals("")) {
                AppEntity c2 = c(str2, i);
                if (c2 != null || !z) {
                    appEntity = c2;
                } else {
                    AppEntity appEntity2 = new AppEntity();
                    File file2 = new File(str2);
                    String name = file2.getName();
                    if (name != null && !name.equals("")) {
                        name = name.substring(0, name.length() - 4);
                    }
                    appEntity2.put("appName", name);
                    appEntity2.put(AppEntity.KEY_SIZE_LONG, Long.valueOf(file2.length()));
                    appEntity2.put(AppEntity.KEY_APK_PATH_STR, str2);
                    appEntity2.put(AppEntity.KEY_IS_APK_BOOL, true);
                    appEntity = appEntity2;
                }
                if (appEntity != null) {
                    arrayList2.add(appEntity);
                }
            }
        }
        return arrayList2;
    }

    private PackageInfo d(String str, int i) {
        try {
            return this.a.getPackageInfo(str, i);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("SoftwareManagerImpl", str + " can't be found");
            return null;
        }
    }

    private static Date k(String str) {
        Date date = new Date();
        try {
            String[] split = str.split("[- :.]");
            int intValue = Integer.valueOf(split[1]).intValue();
            int intValue2 = Integer.valueOf(split[2]).intValue();
            int intValue3 = Integer.valueOf(split[3]).intValue();
            int intValue4 = Integer.valueOf(split[4]).intValue();
            date.setMonth(Integer.valueOf(split[0]).intValue() - 1);
            date.setDate(intValue);
            date.setHours(intValue2);
            date.setMinutes(intValue3);
            date.setSeconds(intValue4);
            return date;
        } catch (NumberFormatException e2) {
            return null;
        }
    }

    public final int a(String str, int i) {
        PackageInfo d2 = d(str, 0);
        if (d2 == null) {
            return -1;
        }
        if (i == d2.versionCode) {
            return 0;
        }
        if (i < d2.versionCode) {
            return i == 0 ? -2 : 2;
        }
        return 1;
    }

    public final AppEntity a(AppEntity appEntity, int i) {
        PackageInfo d2 = d((String) appEntity.get("pkgName"), a(i));
        if (d2 == null) {
            return null;
        }
        a(d2, appEntity, i);
        return appEntity;
    }

    public final ArrayList<AppEntity> a(int i, int i2) {
        List<PackageInfo> installedPackages = this.a.getInstalledPackages(a(i));
        ArrayList<AppEntity> arrayList = new ArrayList<>();
        for (PackageInfo packageInfo : installedPackages) {
            boolean z = (packageInfo.applicationInfo.flags & 1) != 0;
            String str = packageInfo.applicationInfo.packageName;
            if ((z || i2 != 1) && ((!z || i2 != 0) && !str.equals(this.b.getPackageName()))) {
                AppEntity appEntity = new AppEntity();
                a(packageInfo, appEntity, i);
                arrayList.add(appEntity);
            }
        }
        return arrayList;
    }

    public final ArrayList<AppEntity> a(int i, int i2, boolean z) {
        List<PackageInfo> installedPackages = this.a.getInstalledPackages(a(i));
        ArrayList<AppEntity> arrayList = new ArrayList<>();
        for (PackageInfo packageInfo : installedPackages) {
            if ((i2 & 1) != 0 && ey.a(packageInfo, z)) {
                AppEntity appEntity = new AppEntity();
                a(packageInfo, appEntity, i);
                arrayList.add(appEntity);
            }
            if ((i2 & 2) != 0 && ey.a(packageInfo)) {
                AppEntity appEntity2 = new AppEntity();
                a(packageInfo, appEntity2, i);
                arrayList.add(appEntity2);
            }
        }
        return arrayList;
    }

    public final ArrayList<AppEntity> a(File file, String[] strArr, boolean z, int i) {
        return b(file, strArr, z, i, true);
    }

    public final ArrayList<AppEntity> a(File file, String[] strArr, boolean z, int i, boolean z2) {
        return b(file, strArr, z, i, z2);
    }

    public final ArrayList<SoftwareUseageInfo> a(List<String> list) {
        ArrayList<SoftwareUseageInfo> arrayList = new ArrayList<>();
        for (String str : list) {
            SoftwareUseageInfo i = i(str);
            if (i != null) {
                arrayList.add(i);
            }
        }
        return arrayList;
    }

    public final ArrayList<AppEntity> a(String[] strArr, boolean z, int i) {
        ArrayList<AppEntity> arrayList = new ArrayList<>();
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        return (externalStorageDirectory == null || !externalStorageDirectory.exists()) ? arrayList : a(externalStorageDirectory, strArr, z, i);
    }

    public final void a() {
        this.c.clear();
    }

    public final void a(File file) {
        if (file == null || !file.exists()) {
            throw new RuntimeException("the apkfile dosn't exist.");
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        this.b.startActivity(intent);
    }

    public final void a(String str, Activity activity, int i) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        if (i >= 0) {
            activity.startActivityForResult(intent, 2);
        } else {
            activity.startActivity(intent);
        }
    }

    public final boolean a(String str) {
        return d(str, 0) != null;
    }

    public final boolean a(String str, boolean z) {
        PackageInfo d2 = d(str, 0);
        if (d2 != null) {
            return ey.a(d2, z);
        }
        return false;
    }

    public final AppEntity b(AppEntity appEntity, int i) {
        Signature[] signatureArr;
        X509Certificate x509Certificate;
        Object obj;
        try {
            String str = (String) appEntity.get(AppEntity.KEY_APK_PATH_STR);
            PackageInfo packageArchiveInfo = this.a.getPackageArchiveInfo(str, a(i));
            if (packageArchiveInfo == null) {
                return null;
            }
            List<Object> a2 = (i & 4) != 0 ? m.a(this.b, str, true) : (i & 1) != 0 ? m.a(this.b, str, false) : null;
            if ((i & 1) != 0) {
                appEntity.put("pkgName", packageArchiveInfo.packageName);
                appEntity.put(AppEntity.KEY_IS_SYSTEM_BOOL, new Boolean(false));
                if (a2 == null || a2.size() <= 0 || a2.get(0) == null) {
                    appEntity.put("appName", this.a.getApplicationLabel(packageArchiveInfo.applicationInfo));
                } else {
                    appEntity.put("appName", a2.get(0));
                }
            }
            if ((i & 2) != 0) {
                appEntity.put("pkgName", packageArchiveInfo.packageName);
                appEntity.put(AppEntity.KEY_IS_SYSTEM_BOOL, new Boolean(false));
            }
            if ((i & 4) != 0) {
                if (a2 == null || a2.size() <= 1 || a2.get(1) == null) {
                    appEntity.put(AppEntity.KEY_ICON_DRAWABLE, this.a.getApplicationIcon(packageArchiveInfo.applicationInfo));
                } else {
                    appEntity.put(AppEntity.KEY_ICON_DRAWABLE, a2.get(1));
                }
            }
            if ((i & 8) != 0) {
                appEntity.put("version", packageArchiveInfo.versionName);
                appEntity.put(AppEntity.KEY_VERSION_CODE_INT, Integer.valueOf(packageArchiveInfo.versionCode));
                File file = new File(str);
                appEntity.put(AppEntity.KEY_SIZE_LONG, Long.valueOf(file.length()));
                appEntity.put(AppEntity.KEY_LAST_MODIFIED_LONG, Long.valueOf(file.lastModified()));
            }
            if ((i & 64) != 0) {
                appEntity.put(AppEntity.KEY_APK_PATH_STR, str);
                appEntity.put(AppEntity.KEY_IS_APK_BOOL, true);
            }
            if ((i & 16) != 0) {
                try {
                    Object a3 = ah.a("android.content.pm.PackageParser", new Object[]{str});
                    File file2 = new File(str);
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    displayMetrics.setToDefaults();
                    Object a4 = ah.a(a3, "parsePackage", new Object[]{file2, str, displayMetrics, 0});
                    if (a4 != null) {
                        ah.a(a3, "collectCertificates", new Object[]{a4, 0});
                        signatureArr = (Signature[]) ah.a(a4, "mSignatures");
                        if (!(signatureArr == null || signatureArr.length < 1 || (x509Certificate = (X509Certificate) a(signatureArr[0])) == null)) {
                            obj = ae.c(x509Certificate.getEncoded());
                            appEntity.put(AppEntity.KEY_SIGNATURE_MD5_STR, obj);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                signatureArr = null;
                try {
                    obj = ae.c(x509Certificate.getEncoded());
                } catch (CertificateEncodingException e3) {
                    e3.printStackTrace();
                    obj = null;
                }
                appEntity.put(AppEntity.KEY_SIGNATURE_MD5_STR, obj);
            }
            if ((i & 32) != 0) {
                appEntity.put(AppEntity.KEY_PERMISSION_STR_ARRAY, packageArchiveInfo.requestedPermissions);
            }
            return appEntity;
        } catch (Exception e4) {
            return null;
        }
    }

    public final AppEntity b(String str, int i) {
        AppEntity appEntity = new AppEntity();
        appEntity.put("pkgName", str);
        return a(appEntity, i);
    }

    public final synchronized void b() {
        ArrayList<String> filter = Logcat.filter("ActivityManager", null, "Starting", "START");
        HashMap hashMap = new HashMap();
        for (String str : filter) {
            int indexOf = str.indexOf("cmp=") + 4;
            int indexOf2 = str.indexOf(47, indexOf);
            if (k(str.substring(0, 18)) != null) {
                String substring = str.substring(indexOf, indexOf2);
                if (hashMap.containsKey(substring)) {
                    hashMap.put(substring, Integer.valueOf(((Integer) hashMap.get(substring)).intValue() + 1));
                } else {
                    hashMap.put(substring, 1);
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        for (String str2 : hashMap.keySet()) {
            if (hashMap2.containsKey(str2)) {
                hashMap2.get(str2);
            } else {
                SoftwareUseageInfo i = i(str2);
                if (i == null) {
                    i = new SoftwareUseageInfo(str2, new Date(), new Date(), 1);
                } else {
                    i.mUseCount++;
                }
                hashMap2.put(str2, i);
            }
        }
        for (Map.Entry entry : hashMap2.entrySet()) {
            this.c.putString((String) entry.getKey(), SoftwareUseageInfo.getString((SoftwareUseageInfo) entry.getValue()));
        }
        this.c.commit();
        Logcat.clear();
    }

    public final void b(String str, Activity activity, int i) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        if (i >= 0) {
            activity.startActivityForResult(intent, i);
        } else {
            activity.startActivity(intent);
        }
    }

    public final boolean b(String str) {
        boolean z = true;
        if (!v.h(str)) {
            return false;
        }
        if (ScriptHelper.providerSupportPmRelative()) {
            return ScriptHelper.provider().e(str);
        }
        if (!ScriptHelper.isSystemUid() && ScriptHelper.canRunAtRoot() != 0) {
            return false;
        }
        if (ScriptHelper.runScriptIfSystemUidOrAsRoot("pm install -r " + str) != 0) {
            z = false;
        }
        return z;
    }

    public final AppEntity c(String str, int i) {
        AppEntity appEntity = new AppEntity();
        appEntity.put(AppEntity.KEY_APK_PATH_STR, str);
        return b(appEntity, i);
    }

    public final boolean c(String str) {
        boolean z = true;
        if (ScriptHelper.providerSupportPmRelative()) {
            return ScriptHelper.provider().f(str);
        }
        if (!ScriptHelper.isSystemUid() && ScriptHelper.canRunAtRoot() != 0) {
            return false;
        }
        if (this.e.a(str)) {
            this.e.b(str);
        }
        if (ScriptHelper.runScriptIfSystemUidOrAsRoot("pm uninstall " + str) != 0) {
            z = false;
        }
        return z;
    }

    public final void d(String str) {
        Intent intent = new Intent();
        int i = Build.VERSION.SDK_INT;
        intent.addFlags(268435456);
        if (i >= 9) {
            try {
                intent.setAction((String) ah.a("android.provider.Settings", "ACTION_APPLICATION_DETAILS_SETTINGS"));
                intent.setData(Uri.fromParts("package", str, null));
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        } else {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("pkg", str);
            intent.putExtra("com.android.settings.ApplicationPkgName", str);
        }
        this.b.startActivity(intent);
    }

    public final boolean e(String str) {
        try {
            Intent launchIntentForPackage = this.a.getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(270532608);
                this.b.startActivity(launchIntentForPackage);
                return true;
            }
            Log.e("SoftwareManagerImpl", str + " is not a visualble application");
            return false;
        } catch (Exception e2) {
            Log.i("SoftwareManagerImpl", e2);
            return false;
        }
    }

    public final boolean f(String str) {
        PackageInfo d2 = d(str, 0);
        if (d2 != null) {
            return ey.a(d2.applicationInfo);
        }
        return false;
    }

    public final boolean g(String str) throws PackageManager.NameNotFoundException {
        return ey.a(str);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 2;
    }

    public final boolean h(String str) throws PackageManager.NameNotFoundException {
        return ey.b(str);
    }

    public final SoftwareUseageInfo i(String str) {
        String string = this.d.getString(str, null);
        if (string != null) {
            return SoftwareUseageInfo.fromString(string);
        }
        return null;
    }

    public final boolean j(String str) {
        return this.e.a(str);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.d = this.b.getSharedPreferences("SoftwareManagerImpl", 0);
        this.c = this.d.edit();
        this.e = new fb();
        this.a = context.getPackageManager();
        try {
            this.f = CertificateFactory.getInstance("X.509");
        } catch (CertificateException e2) {
            Log.i("SoftwareManagerImpl", e2.getLocalizedMessage());
        }
    }
}
