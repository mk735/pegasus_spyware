package com.tencent.tmsecure.module.wupsession;

import QQPIM.ConnectType;
import QQPIM.DeviceInfo;
import QQPIM.GUIDInfo;
import QQPIM.MachineInfo;
import QQPIM.PhoneType;
import QQPIM.ProductVersion;
import QQPIM.SPhoneType;
import QQPIM.SUIKey;
import QQPIM.SUserInfo;
import QQPIM.UserInfo;
import android.content.Context;
import com.lenovo.performancecenter.LeemCenterTools;
import com.lenovo.safecenter.mmsutils.CharacterSets;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.EnvUtil;
import com.tencent.tmsecure.utils.NetworkUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.concurrent.atomic.AtomicReference;
import tms.af;
import tms.hb;

public final class WupConfig {
    public static final String HOST_URL = TMSApplication.getStrFromEnvMap(TMSApplication.CON_HOST_URL);
    public static final String KEY_GUID = "guid";
    public static String REDIRECT_URL = null;
    public static final int RQ_BROWER_CHECK = 38;
    public static final int RQ_CHECK_LICENCE = 39;
    public static final int RQ_CHECK_URL = 36;
    public static final int RQ_CHECK_URL_EX = 37;
    public static final int RQ_GET_ADS = 17;
    public static final int RQ_GET_ANALYSE_INFO = 11;
    public static final int RQ_GET_CATEGORY_LIST = 8;
    public static final int RQ_GET_CHANGE_URL = 22;
    public static final int RQ_GET_CONFIG = 23;
    public static final int RQ_GET_CONFIG_V3 = 24;
    public static final int RQ_GET_CONFIG_V3_CPT = 25;
    public static final int RQ_GET_GUID = 18;
    public static final int RQ_GET_HOT_WORD = 19;
    public static final int RQ_GET_MARK = 40;
    public static final int RQ_GET_MY_SOFT_LIST = 10;
    public static final int RQ_GET_QUERY_INFO = 33;
    public static final int RQ_GET_SOFT_INFO = 0;
    public static final int RQ_GET_SOFT_LIST = 9;
    public static final int RQ_GET_TIME = 16;
    public static final int RQ_GET_TRAFFIC_CMD = 34;
    public static final int RQ_GET_TRAFFIC_TEMPLATE = 32;
    public static final int RQ_GET_UPDATES_V2 = 12;
    public static final int RQ_GET_VIRUS_INFOS = 7;
    public static final int RQ_REPORT_CHANNEL_INFO = 5;
    public static final int RQ_REPORT_DOWN_SOFT = 14;
    public static final int RQ_REPORT_ERROR_MSG = 35;
    public static final int RQ_REPORT_FBILLEGA_REASON = 4;
    public static final int RQ_REPORT_MOBILE = 26;
    public static final int RQ_REPORT_NOTIFY_INFO = 21;
    public static final int RQ_REPORT_SMS = 28;
    public static final int RQ_REPORT_SOFT_ACTION = 20;
    public static final int RQ_REPORT_SOFT_DESC = 15;
    public static final int RQ_REPORT_SOFT_FEATURE = 30;
    public static final int RQ_REPORT_SOFT_TYPE = 1;
    public static final int RQ_REPORT_SOFT_USAGE_INFO = 31;
    public static final int RQ_REPORT_TEL = 29;
    public static final int RQ_REPORT_TIPS_RES = 13;
    public static final int RQ_REPORT_UNKNOW_SOFT_INFO = 3;
    public static final int RQ_REPORT_USER_COMMENT = 2;
    public static final int RQ_REPORT_VIRUS_LIB_UPDATE = 6;
    public static final int RQ_REPORT_WBLIST = 27;
    private static String a = null;
    public static final String gQua = ("AQQSecure_GA_2_0/011201&ADR&" + PhoneInfoUtil.getModelName() + "&V2");
    public static hb[] mWupParam = {new hb(0, "info", "getSoftInfo"), new hb(1, "info", "reportSoftType"), new hb(2, "info", "reportUserComment"), new hb(3, "info", "reportUnknowSoftInfo"), new hb(4, "info", "reportFBIllegaReason"), new hb(5, "info", "reportChannelInfo"), new hb(6, "info", "reportVirusLibUpdate"), new hb(7, "info", "getVirusInfos"), new hb(8, "info", "getCategoryList"), new hb(9, "info", "getSoftList"), new hb(10, "info", "getMySoftList"), new hb(11, "info", "getAnalyseInfo"), new hb(12, "info", "getUpdatesV2"), new hb(13, "info", "reportTipsRes"), new hb(14, "info", "reportDownSoft"), new hb(15, "info", "reportSoftDesc"), new hb(16, "info", "getTime"), new hb(17, "info", "getADs"), new hb(18, "info", "getGuid"), new hb(19, "info", "getHotWord"), new hb(20, "info", "reportSoftAction"), new hb(21, "info", "reportNotifyInfo"), new hb(22, "info", "getChangeUrl"), new hb(23, "conf", "getConfig"), new hb(24, "conf", "getConfigV3"), new hb(25, "conf", "getConfigV3CPT"), new hb(26, "conf", "reportMobile"), new hb(27, "conf", "reportWBList"), new hb(28, SofeModeMain.TS_SMS, "reportSms"), new hb(29, SofeModeMain.TS_SMS, "reportTel"), new hb(30, SofeModeMain.TS_SMS, "reportSoftFeature"), new hb(31, "report", "reportSoftUsageInfo"), new hb(32, TrafficStatsService.TRAFFIC, "getTrafficTemplate"), new hb(33, TrafficStatsService.TRAFFIC, "getQueryInfo"), new hb(34, TrafficStatsService.TRAFFIC, "getCloudOrder"), new hb(35, TrafficStatsService.TRAFFIC, "reportErrorMsg"), new hb(36, LeemCenterTools.LAST_CHECKUP_SHAREDPREFERENCE, "checkUrl"), new hb(37, LeemCenterTools.LAST_CHECKUP_SHAREDPREFERENCE, "checkUrlExt"), new hb(37, "info", "browerCheck"), new hb(39, LeemCenterTools.LAST_CHECKUP_SHAREDPREFERENCE, "getlicencedate"), new hb(40, "benchmark", "getMark")};
    private final String b = "imei";
    private final String c = "mac";
    private String d = null;
    private String e = null;
    private Context f;
    private af g;
    private PhoneType h;
    private SPhoneType i;
    private UserInfo j;
    private SUserInfo k;
    private DeviceInfo l;
    private MachineInfo m;
    private SUIKey n;

    public WupConfig(Context context) {
        this.f = context;
        this.g = new af("wup");
        if (a == null) {
            a = this.g.a(KEY_GUID, (String) null);
        }
        this.d = StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(this.f));
        this.e = StringUtil.assertNotNullString(PhoneInfoUtil.getMAC(this.f));
    }

    private DeviceInfo a() {
        if (this.l == null) {
            this.l = new DeviceInfo();
            this.l.setImei(this.d);
            this.l.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.f)));
            this.l.setMac(this.e);
            this.l.setIccid(StringUtil.assertNotNullString(PhoneInfoUtil.getICCID(this.f)));
            this.l.setAndroidid(StringUtil.assertNotNullString(PhoneInfoUtil.getAndoidId()));
            this.l.setSdkversion(SDKUtil.getSDKVersion());
            this.l.setModel(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
            this.l.setProduct(StringUtil.assertNotNullString(PhoneInfoUtil.getProductName()));
            this.l.setNetfile(StringUtil.assertNotNullString(EnvUtil.getDeviceInfoStr(this.f)));
            this.l.setLguid(a);
        } else {
            this.l.setLguid(a);
            this.l.setImei(this.d);
            this.l.setMac(this.e);
        }
        return this.l;
    }

    private int b() {
        GUIDInfo gUIDInfo;
        DeviceInfo a2 = a();
        AtomicReference<GUIDInfo> atomicReference = new AtomicReference<>();
        int guidFromServer = ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).getGuidFromServer(a2, atomicReference);
        if (guidFromServer == 0 && (gUIDInfo = atomicReference.get()) != null) {
            a = gUIDInfo.getGuid();
            if (a == null || a.equals("")) {
                return -2001;
            }
        }
        return guidFromServer;
    }

    private boolean c() {
        String assertNotNullString = StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(this.f));
        String assertNotNullString2 = StringUtil.assertNotNullString(PhoneInfoUtil.getMAC(this.f));
        this.d = this.g.a("imei", assertNotNullString);
        this.e = this.g.a("mac", assertNotNullString2);
        if (assertNotNullString.equals(this.d) && assertNotNullString2.equals(this.e)) {
            return false;
        }
        this.d = assertNotNullString;
        this.e = assertNotNullString2;
        return true;
    }

    public static String getFuncName(int i2) {
        return mWupParam[i2].c;
    }

    public static String getServantName(int i2) {
        return mWupParam[i2].b;
    }

    public final int checkGuid() {
        if (a == null || a.equals("") || c()) {
            int b2 = b();
            if (b2 != 0) {
                return b2;
            }
            this.g.a("imei", this.d, false);
            this.g.a("mac", this.e, false);
            this.g.a(KEY_GUID, a, false);
            this.g.a();
        }
        return 0;
    }

    public final MachineInfo getMachineInfo() {
        int i2 = 1;
        if (this.m == null) {
            this.m = new MachineInfo();
            this.m.setGuid(a);
            this.m.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_LC)));
            this.m.setImei(this.d);
            this.m.setSp(PhoneInfoUtil.getNetworkOperatorCode(this.f));
            this.m.setProduct(TMSApplication.getIntFromEnvMap(TMSApplication.CON_PRODUCT));
            this.m.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_CHANNEL)));
            this.m.setPhonetype(getPhoneType());
            this.m.setMachine(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
            this.m.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.f)));
            this.m.setIsbuildin(EnvUtil.isBuildIn(this.f) ? 1 : 0);
            MachineInfo machineInfo = this.m;
            if (!EnvUtil.hadsufile()) {
                i2 = 0;
            }
            machineInfo.setIsroot(i2);
        } else {
            this.m.setGuid(a);
            this.m.setImei(this.d);
        }
        return this.m;
    }

    public final PhoneType getPhoneType() {
        if (this.h == null) {
            this.h = new PhoneType();
            this.h.setPhonetype(2);
            this.h.setSubplatform(TMSApplication.getIntFromEnvMap(TMSApplication.CON_SUB_PLATFORM));
        }
        return this.h;
    }

    public final SPhoneType getSPhoneType() {
        if (this.i == null) {
            this.i = new SPhoneType();
            this.i.setPhonetype(2);
        }
        return this.i;
    }

    public final SUIKey getSUIKey() {
        if (this.n == null) {
            this.n = new SUIKey();
            this.n.setGuid(a);
            this.n.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_LC)));
            this.n.setName("SECURE");
            this.n.setVersion(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_SOFTVERSION)));
            this.n.setImei(this.d);
            this.n.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.f)));
            this.n.setType(2);
            this.n.setOsversion(StringUtil.assertNotNullString(SDKUtil.getSDKName()));
            this.n.setMachineuid(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
            this.n.setMachineconf("screen=" + PhoneInfoUtil.getScreenWidth(this.f) + CharacterSets.MIMENAME_ANY_CHARSET + PhoneInfoUtil.getScreenHeight(this.f));
            this.n.setSubplatform(TMSApplication.getIntFromEnvMap(TMSApplication.CON_SUB_PLATFORM));
            this.n.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_CHANNEL)));
            this.n.setIsbuildin(EnvUtil.isBuildIn(this.f) ? 1 : 0);
        } else {
            this.n.setImei(this.d);
        }
        return this.n;
    }

    public final SUserInfo getSUserInfo() {
        if (this.k == null) {
            this.k = new SUserInfo();
            this.k.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.f)));
            this.k.setImei(this.d);
            this.k.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_LC)));
        } else {
            this.k.setImei(this.d);
        }
        return this.k;
    }

    public final UserInfo getUserInfo() {
        int i2 = 2;
        int i3 = 1;
        if (this.j == null) {
            this.j = new UserInfo();
            this.j.setImei(this.d);
            this.j.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_LC)));
            this.j.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_CHANNEL)));
            this.j.setUa(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
            this.j.setProduct(TMSApplication.getIntFromEnvMap(TMSApplication.CON_PRODUCT));
            int intFromEnvMap = TMSApplication.getIntFromEnvMap(TMSApplication.CON_PVERSION);
            int intFromEnvMap2 = TMSApplication.getIntFromEnvMap(TMSApplication.CON_CVERSION);
            int intFromEnvMap3 = TMSApplication.getIntFromEnvMap(TMSApplication.CON_HOTFIX);
            if (intFromEnvMap == 0) {
                String[] split = TMSApplication.getStrFromEnvMap(TMSApplication.CON_SOFTVERSION).trim().split("[\\.]");
                if (split.length >= 3) {
                    intFromEnvMap = Integer.parseInt(split[0]);
                    intFromEnvMap2 = Integer.parseInt(split[1]);
                    intFromEnvMap3 = Integer.parseInt(split[2]);
                }
            }
            this.j.setVersion(new ProductVersion(intFromEnvMap, intFromEnvMap2, intFromEnvMap3));
            this.j.setGuid(a);
            this.j.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.f)));
            this.j.setCt(NetworkUtil.getNetworkType() == ConnectType.CT_WIFI ? 2 : 1);
            this.j.setIsbuildin(EnvUtil.isBuildIn(this.f) ? 1 : 0);
            UserInfo userInfo = this.j;
            if (!EnvUtil.hadsufile()) {
                i3 = 0;
            }
            userInfo.setIsroot(i3);
            this.j.setSdkversion(SDKUtil.getSDKVersion());
            this.j.setBuildno(TMSApplication.getIntFromEnvMap(TMSApplication.CON_BUILD));
        } else {
            this.j.setGuid(a);
            this.j.setImei(this.d);
            UserInfo userInfo2 = this.j;
            if (NetworkUtil.getNetworkType() != ConnectType.CT_WIFI) {
                i2 = 1;
            }
            userInfo2.setCt(i2);
        }
        return this.j;
    }
}
