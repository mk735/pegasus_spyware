package tms;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.Category;
import QQPIM.ChangeUrlReqInfo;
import QQPIM.ChangeUrlResInfo;
import QQPIM.ChannelInfo;
import QQPIM.ClientVersionInfo;
import QQPIM.CmdInfoRes;
import QQPIM.CommentInfo;
import QQPIM.ConfInfo;
import QQPIM.ConfSrc;
import QQPIM.DeviceInfo;
import QQPIM.DownInfo;
import QQPIM.FBIllegaSoft;
import QQPIM.FBMobile;
import QQPIM.FBSoftDesc;
import QQPIM.FBWBList;
import QQPIM.GUIDInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.HotWordResInfo;
import QQPIM.LicenceCheckResult;
import QQPIM.LicenceInfo;
import QQPIM.MalSoftType;
import QQPIM.MySoftSimpleInfo;
import QQPIM.NotifyInfo;
import QQPIM.PhoneInfo;
import QQPIM.RequestTemplate;
import QQPIM.RespMark;
import QQPIM.RetInfo;
import QQPIM.RspTemplate;
import QQPIM.STCloudOrderReq;
import QQPIM.STQuery;
import QQPIM.STQueryResult;
import QQPIM.STReportBack;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import QQPIM.STVecCloudBak;
import QQPIM.SUI;
import QQPIM.ServerCmdInfo;
import QQPIM.ServerInfo;
import QQPIM.SmsReport;
import QQPIM.SoftAction;
import QQPIM.SoftFeature;
import QQPIM.SoftKey;
import QQPIM.SoftServerInfo;
import QQPIM.SoftSimpleInfo;
import QQPIM.TelReport;
import QQPIM.TipInfo;
import QQPIM.UnknownSoftInfo;
import QQPIM.UrlCheckRequest;
import QQPIM.UrlCheckResponse;
import QQPIM.VECReportError;
import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.jce.wup.UniPacket;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupConfig;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public final class hc extends BaseManager {
    public static String a = "WupSessionManagerImpl";
    private Context b;
    private WupConfig c;
    private boolean d;

    private int a(UniPacket uniPacket, UniPacket uniPacket2, int i) {
        uniPacket.setRequestId(i);
        uniPacket.setServantName(WupConfig.getServantName(i));
        uniPacket.setFuncName(WupConfig.getFuncName(i));
        uniPacket.setEncodeName(b.a);
        uniPacket2.setEncodeName(b.a);
        return this.c.checkGuid();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008b, code lost:
        r2.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0094, code lost:
        com.tencent.tmsecure.common.TMSApplication.reportChannelInfo();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00be, code lost:
        r4.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00fd, code lost:
        r4.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x010a, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x010b, code lost:
        r2 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x011a, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x011e, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x011f, code lost:
        r2 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0121, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0122, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x012b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x012c, code lost:
        r1 = r0;
        r2 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:?, code lost:
        return r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0092 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x011a A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:4:0x0017] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0121 A[ExcHandler: IllegalArgumentException (r0v19 'e' java.lang.IllegalArgumentException A[CUSTOM_DECLARE]), Splitter:B:4:0x0017] */
    /* JADX WARNING: Removed duplicated region for block: B:90:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int a(com.qq.jce.wup.UniPacket r9, com.qq.jce.wup.UniPacket r10, boolean r11) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.hc.a(com.qq.jce.wup.UniPacket, com.qq.jce.wup.UniPacket, boolean):int");
    }

    private static ChannelInfo a(Context context) {
        ChannelInfo channelInfo = new ChannelInfo();
        channelInfo.setId(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap(TMSApplication.CON_CHANNEL)));
        channelInfo.setProduct(TMSApplication.getIntFromEnvMap(TMSApplication.CON_PRODUCT));
        PackageManager packageManager = context.getPackageManager();
        channelInfo.setIsbuildin(0);
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 8192);
            if (!(applicationInfo == null || (applicationInfo.flags & 1) == 0)) {
                channelInfo.setIsbuildin(1);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e2) {
        }
        SoftwareManager softwareManager = (SoftwareManager) ManagerCreator.getManager(SoftwareManager.class);
        ArrayList<SoftKey> arrayList = new ArrayList<>();
        for (String str : new String[]{"com.tencent.qqpimsecure", "com.tencent.qq", "com.qzone", "com.tencent.qqphonebook", "com.tencent.mtt", "com.tencent.WBlog", "com.tencent.qqgame.hallinstaller.hall"}) {
            AppEntity appInfo = softwareManager.getAppInfo(str, 25);
            if (appInfo != null) {
                Boolean bool = (Boolean) appInfo.get(AppEntity.KEY_IS_SYSTEM_BOOL);
                Integer num = (Integer) appInfo.get(AppEntity.KEY_VERSION_CODE_INT);
                SoftKey softKey = new SoftKey();
                softKey.setUid(StringUtil.assertNotNullString((String) appInfo.get(AppEntity.KEY_SIGNATURE_MD5_STR)));
                softKey.setSoftname(StringUtil.assertNotNullString((String) appInfo.get("pkgName")));
                softKey.setName(StringUtil.assertNotNullString((String) appInfo.get("appName")));
                softKey.setIsbuildin((bool == null || !bool.booleanValue()) ? 0 : 1);
                softKey.setVersion(StringUtil.assertNotNullString((String) appInfo.get("version")));
                softKey.setVersioncode(num == null ? 0 : num.intValue());
                softKey.setProducttime("");
                softKey.setCert(StringUtil.assertNotNullString((String) appInfo.get(AppEntity.KEY_SIGNATURE_MD5_STR)));
                arrayList.add(softKey);
            }
        }
        channelInfo.setChecksoft(arrayList);
        return channelInfo;
    }

    public final int a() {
        this.d = true;
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 5);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("channelinfo", a(this.b));
        int a3 = a(uniPacket, uniPacket2, true);
        this.d = false;
        return a3;
    }

    public final int a(BrowserClient browserClient, BrowserUrl browserUrl, AtomicReference<BrowserResult> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 38);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("client", browserClient);
        uniPacket.put("url", browserUrl);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        BrowserResult browserResult = (BrowserResult) uniPacket2.getByClass(QueryPermissions.RECOMMENDEDACTION, new BrowserResult());
        if (browserResult != null) {
            atomicReference.set(browserResult);
        }
        return 0;
    }

    public final int a(ChangeUrlReqInfo changeUrlReqInfo, AtomicReference<ChangeUrlResInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 22);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("urlreqinfo", changeUrlReqInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ChangeUrlResInfo changeUrlResInfo = (ChangeUrlResInfo) uniPacket2.getByClass("urlresinfo", new ChangeUrlResInfo());
        if (changeUrlResInfo != null) {
            atomicReference.set(changeUrlResInfo);
        }
        return 0;
    }

    public final int a(CmdInfoRes cmdInfoRes) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 13);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("cmdinfores", cmdInfoRes);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int a(DeviceInfo deviceInfo, AtomicReference<GUIDInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        uniPacket.setRequestId(18);
        uniPacket.setServantName(WupConfig.getServantName(18));
        uniPacket.setFuncName(WupConfig.getFuncName(18));
        uniPacket.setEncodeName(b.a);
        uniPacket2.setEncodeName(b.a);
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("deviceinfo", deviceInfo);
        int a2 = a(uniPacket, uniPacket2, false);
        if (a2 != 0) {
            return a2;
        }
        GUIDInfo gUIDInfo = (GUIDInfo) uniPacket2.getByClass("guidinfo", new GUIDInfo());
        if (gUIDInfo != null) {
            atomicReference.set(gUIDInfo);
        }
        return 0;
    }

    public final int a(DownInfo downInfo) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 14);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("downinfo", downInfo);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int a(HotWordReqInfo hotWordReqInfo, AtomicReference<HotWordResInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 19);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("hotwordreq", hotWordReqInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        HotWordResInfo hotWordResInfo = (HotWordResInfo) uniPacket2.getByClass("hotwordres", new HotWordResInfo());
        if (hotWordResInfo != null) {
            atomicReference.set(hotWordResInfo);
        }
        return 0;
    }

    public final int a(LicenceInfo licenceInfo, LicenceCheckResult licenceCheckResult) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 39);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("licinfo", licenceInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        RetInfo retInfo = (RetInfo) uniPacket2.getByClass("outinfo", new RetInfo());
        if (retInfo == null) {
            return -2;
        }
        licenceCheckResult.value = retInfo;
        Integer num = (Integer) uniPacket2.getByClass("", 0);
        if (num == null) {
            return -2;
        }
        return num.intValue();
    }

    public final int a(PhoneInfo phoneInfo, AtomicReference<RespMark> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 40);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("phoneinfo", phoneInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        RespMark respMark = (RespMark) uniPacket2.getByClass("respmark", new RespMark());
        if (respMark != null) {
            atomicReference.set(respMark);
        }
        return 0;
    }

    public final int a(STCloudOrderReq sTCloudOrderReq, AtomicReference<STVecCloudBak> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 34);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("cloudreq", sTCloudOrderReq);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        STVecCloudBak sTVecCloudBak = (STVecCloudBak) uniPacket2.getByClass("cloudrsp", new STVecCloudBak());
        if (sTVecCloudBak != null) {
            atomicReference.set(sTVecCloudBak);
        }
        return 0;
    }

    public final int a(STQuery sTQuery, AtomicReference<STQueryResult> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 33);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("queryParam", sTQuery);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        STQueryResult sTQueryResult = (STQueryResult) uniPacket2.getByClass("queryresult", new STQueryResult());
        if (sTQueryResult != null) {
            atomicReference.set(sTQueryResult);
        }
        return 0;
    }

    public final int a(STSmsInfo sTSmsInfo, AtomicReference<STTrafficTemplate> atomicReference, AtomicReference<STRetInfo> atomicReference2) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 32);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("smsinfo", sTSmsInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        STTrafficTemplate sTTrafficTemplate = (STTrafficTemplate) uniPacket2.getByClass("traffictemplate", new STTrafficTemplate());
        if (sTTrafficTemplate != null) {
            atomicReference.set(sTTrafficTemplate);
        }
        STRetInfo sTRetInfo = (STRetInfo) uniPacket2.getByClass("stretinfo", new STRetInfo());
        if (atomicReference2 != null) {
            atomicReference2.set(sTRetInfo);
        }
        return 0;
    }

    public final int a(VECReportError vECReportError, AtomicReference<STReportBack> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 35);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("reportmsg", vECReportError);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        STReportBack sTReportBack = (STReportBack) uniPacket2.getByClass("reportback", new STReportBack());
        if (sTReportBack != null) {
            atomicReference.set(sTReportBack);
        }
        return 0;
    }

    public final int a(VirusClientInfo virusClientInfo, AtomicReference<VirusServerInfo> atomicReference, ArrayList<VirusInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 7);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("clientinfo", virusClientInfo);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        VirusServerInfo virusServerInfo = (VirusServerInfo) uniPacket2.getByClass("serverinfo", new VirusServerInfo());
        if (virusServerInfo != null) {
            atomicReference.set(virusServerInfo);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new VirusInfo());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("virusinfos", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int a(String str, AtomicReference<UrlCheckResponse> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 36);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        UrlCheckRequest urlCheckRequest = new UrlCheckRequest();
        urlCheckRequest.url = str;
        uniPacket.put("checkrequest", urlCheckRequest);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        UrlCheckResponse urlCheckResponse = (UrlCheckResponse) uniPacket2.getByClass("checkresponse", new UrlCheckResponse());
        if (urlCheckResponse != null) {
            atomicReference.set(urlCheckResponse);
        }
        return 0;
    }

    public final int a(String str, AtomicReference<SoftServerInfo> atomicReference, ArrayList<Category> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 8);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("request", str);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        SoftServerInfo softServerInfo = (SoftServerInfo) uniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (softServerInfo != null) {
            atomicReference.set(softServerInfo);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Category());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("categorys", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int a(ArrayList<CommentInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 2);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("usercommentinfo", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.util.concurrent.atomic.AtomicReference<QQPIM.TipInfo> */
    /* JADX WARN: Multi-variable type inference failed */
    public final int a(ArrayList<ConfInfo> arrayList, ArrayList<ConfSrc> arrayList2, AtomicReference<TipInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 24);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("machineinfo", this.c.getMachineInfo());
        uniPacket.put("vecinfo", arrayList);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new ConfSrc());
        ArrayList arrayList4 = (ArrayList) uniPacket2.getByClass("vecsrc", arrayList3);
        if (arrayList4 != null) {
            arrayList2.clear();
            arrayList2.addAll(arrayList4);
        }
        if (atomicReference != 0) {
            atomicReference.set(uniPacket2.getByClass("tipinfo", new TipInfo()));
        }
        return 0;
    }

    public final int a(List<SmsReport> list) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 28);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getSPhoneType());
        uniPacket.put("userinfo", this.c.getSUserInfo());
        uniPacket.put("vecSmsReport", list);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int a(List<SoftFeature> list, ArrayList<AnalyseInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 11);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecSoftFeature", list);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new AnalyseInfo());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("vecAnalyseInfo", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int a(List<ClientVersionInfo> list, AtomicReference<ServerCmdInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 12);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecclient", list);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ServerCmdInfo serverCmdInfo = (ServerCmdInfo) uniPacket2.getByClass("cmdinfo", new ServerCmdInfo());
        if (serverCmdInfo != null) {
            atomicReference.set(serverCmdInfo);
        }
        return 0;
    }

    public final int a(List<SoftKey> list, AtomicReference<SoftServerInfo> atomicReference, ArrayList<MySoftSimpleInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 10);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecsoftkey", list);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        SoftServerInfo softServerInfo = (SoftServerInfo) uniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (softServerInfo != null) {
            atomicReference.set(softServerInfo);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MySoftSimpleInfo());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("softs", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int a(Map<SoftKey, MalSoftType> map) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 1);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("malsofttype", map);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int a(AtomicReference<ServerInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 16);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ServerInfo serverInfo = (ServerInfo) uniPacket2.getByClass("serverinfo", new ServerInfo());
        if (serverInfo != null) {
            atomicReference.set(serverInfo);
        }
        return 0;
    }

    public final int b() {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 6);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int b(String str, AtomicReference<SoftServerInfo> atomicReference, ArrayList<SoftSimpleInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 9);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("request", str);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        SoftServerInfo softServerInfo = (SoftServerInfo) uniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (softServerInfo != null) {
            atomicReference.set(softServerInfo);
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new SoftSimpleInfo());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("softs", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int b(ArrayList<UnknownSoftInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 3);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecunknownsoftinfo", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.util.concurrent.atomic.AtomicReference<QQPIM.TipInfo> */
    /* JADX WARN: Multi-variable type inference failed */
    public final int b(ArrayList<ConfInfo> arrayList, ArrayList<ConfSrc> arrayList2, AtomicReference<TipInfo> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 25);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecinfo", arrayList);
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new ConfSrc());
        ArrayList arrayList4 = (ArrayList) uniPacket2.getByClass("vecsrc", arrayList3);
        if (arrayList4 != null) {
            arrayList2.clear();
            arrayList2.addAll(arrayList4);
        }
        if (atomicReference != 0) {
            atomicReference.set(uniPacket2.getByClass("tipinfo", new TipInfo()));
        }
        return 0;
    }

    public final int b(List<TelReport> list) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 29);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getSPhoneType());
        uniPacket.put("userinfo", this.c.getSUserInfo());
        uniPacket.put("vecTelReport", list);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int b(List<String> list, AtomicReference<RspTemplate> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 37);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new UrlCheckRequest(list.get(i), null, 0));
        }
        uniPacket.put("reqtemp", new RequestTemplate(arrayList));
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        RspTemplate rspTemplate = (RspTemplate) uniPacket2.getByClass("rsptemp", new RspTemplate());
        if (rspTemplate != null) {
            atomicReference.set(rspTemplate);
        }
        return 0;
    }

    public final int c(ArrayList<FBIllegaSoft> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 4);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecillsoft", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int c(List<SoftFeature> list) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 30);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getSPhoneType());
        uniPacket.put("userinfo", this.c.getSUserInfo());
        uniPacket.put("vecSoftFeature", list);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int d(ArrayList<FBSoftDesc> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 15);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecsoftdesc", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int d(List<SoftAction> list) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 20);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecsoftaction", list);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int e(ArrayList<ADInfo> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 17);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        int a3 = a(uniPacket, uniPacket2, false);
        if (a3 != 0) {
            return a3;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new ADInfo());
        ArrayList arrayList3 = (ArrayList) uniPacket2.getByClass("ads", arrayList2);
        if (arrayList3 != null) {
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
        return 0;
    }

    public final int e(List<NotifyInfo> list) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 21);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("phonetype", this.c.getPhoneType());
        uniPacket.put("userinfo", this.c.getUserInfo());
        uniPacket.put("vecnotifyinfo", list);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int f(ArrayList<FBMobile> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 26);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("machineinfo", this.c.getMachineInfo());
        uniPacket.put("vecfb", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    public final int g(ArrayList<FBWBList> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 27);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("machineinfo", this.c.getMachineInfo());
        uniPacket.put("vecwblist", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    public final int h(ArrayList<SUI> arrayList) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        int a2 = a(uniPacket, uniPacket2, 31);
        if (a2 != 0) {
            return a2;
        }
        uniPacket.put("suikey", this.c.getSUIKey());
        uniPacket.put("vecsui", arrayList);
        int a3 = a(uniPacket, uniPacket2, true);
        if (a3 == 0) {
            return 0;
        }
        return a3;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.c = new WupConfig(context);
    }
}
