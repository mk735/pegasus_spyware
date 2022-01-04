package tms;

import QQPIM.LicenceCheckResult;
import QQPIM.LicenceInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.StringUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Properties;

/* access modifiers changed from: package-private */
public final class dg {
    private static final HashMap<String, String> a = new HashMap<>();
    private static final long b = (new GregorianCalendar(2016, 0, 1).getTimeInMillis() / 1000);
    private Properties c;
    private Context d;

    static {
        a.put("AresEngineManager", "aresengine");
        a.put("QScannerManager", "qscanner");
        a.put("LocationManager", "phoneservice");
        a.put("IpDialManager", "phoneservice");
        a.put("UsefulNumberManager", "phoneservice");
        a.put("NetworkManager", "network");
        a.put("TrafficCorrectionManager", "network");
        a.put("FirewallManager", "network");
        a.put("NetSettingManager", "netsetting");
        a.put("OptimizeManager", "optimize");
        a.put("UpdateManager", "update");
        a.put("UrlCheckManager", "urlcheck");
        a.put("PermissionManager", QueryPermissions.PERMISSION);
        a.put("SoftwareManager", "software");
        a.put("AntitheftManager", "antitheft");
        a.put("PowerSavingManager", "powersaving");
    }

    dg(Properties properties, Context context) {
        this.c = properties;
        this.d = context;
    }

    private String a(String str) {
        PackageInfo packageInfo;
        IOException e;
        String str2;
        CertificateException e2;
        try {
            packageInfo = this.d.getPackageManager().getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e3) {
            e3.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
        try {
            str2 = ae.c(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream)).getEncoded());
            try {
                byteArrayInputStream.close();
                return str2;
            } catch (CertificateException e4) {
                e2 = e4;
            } catch (IOException e5) {
                e = e5;
                e.printStackTrace();
                return str2;
            }
        } catch (CertificateException e6) {
            str2 = null;
            e2 = e6;
            e2.printStackTrace();
            return str2;
        } catch (IOException e7) {
            str2 = null;
            e = e7;
            e.printStackTrace();
            return str2;
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(LicenceCheckResult licenceCheckResult) {
        return ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).checkLicence(new LicenceInfo(a(this.d.getPackageName()), StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_CHANNEL))), licenceCheckResult);
    }

    public final boolean a() {
        int parseInt = Integer.parseInt(b());
        if (parseInt == 873461 || parseInt == 873789) {
            if (System.currentTimeMillis() < new GregorianCalendar(2013, 0, 30).getTimeInMillis()) {
                return true;
            }
        }
        return a(this.d.getPackageName()).equals(this.c.getProperty("signature").toUpperCase().trim());
    }

    public final boolean a(Class<? extends BaseManager> cls) {
        String str = a.get(cls.getSimpleName());
        if (str == null) {
            return true;
        }
        String property = this.c.getProperty(str);
        if (property != null) {
            return property.equals(DatabaseTables.SYSTEM_MARK);
        }
        return false;
    }

    public final String b() {
        return this.c.getProperty("lc_sdk_channel");
    }

    public final String c() {
        return this.c.getProperty("lc_sdk_pid");
    }

    public final long d() {
        return Long.parseLong(this.c.getProperty("expiry.seconds", Long.toString(b)));
    }
}
