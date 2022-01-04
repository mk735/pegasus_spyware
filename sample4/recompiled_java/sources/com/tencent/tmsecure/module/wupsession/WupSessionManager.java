package com.tencent.tmsecure.module.wupsession;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.Category;
import QQPIM.ChangeUrlReqInfo;
import QQPIM.ChangeUrlResInfo;
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
import QQPIM.RespMark;
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
import QQPIM.UrlCheckResponse;
import QQPIM.VECReportError;
import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import tms.af;
import tms.hc;

public final class WupSessionManager extends BaseManager {
    private hc a;

    public final int browerCheck(BrowserClient browserClient, BrowserUrl browserUrl, AtomicReference<BrowserResult> atomicReference) {
        return this.a.a(browserClient, browserUrl, atomicReference);
    }

    public final int checkLicence(LicenceInfo licenceInfo, LicenceCheckResult licenceCheckResult) {
        return this.a.a(licenceInfo, licenceCheckResult);
    }

    public final int checkUrl(String str, AtomicReference<UrlCheckResponse> atomicReference) {
        return this.a.a(str, atomicReference);
    }

    public final int checkUrlEx(List<String> list, AtomicReference<RspTemplate> atomicReference) {
        return this.a.b(list, atomicReference);
    }

    public final int getADs(ArrayList<ADInfo> arrayList) {
        return this.a.e(arrayList);
    }

    public final int getAnalyseInfo(List<SoftFeature> list, ArrayList<AnalyseInfo> arrayList) {
        return this.a.a(list, arrayList);
    }

    public final int getCategoryList(String str, AtomicReference<SoftServerInfo> atomicReference, ArrayList<Category> arrayList) {
        return this.a.a(str, atomicReference, arrayList);
    }

    public final int getChangeUrl(ChangeUrlReqInfo changeUrlReqInfo, AtomicReference<ChangeUrlResInfo> atomicReference) {
        return this.a.a(changeUrlReqInfo, atomicReference);
    }

    public final int getConfigV3(ArrayList<ConfInfo> arrayList, ArrayList<ConfSrc> arrayList2, AtomicReference<TipInfo> atomicReference) {
        return this.a.a(arrayList, arrayList2, atomicReference);
    }

    public final int getConfigV3CPT(ArrayList<ConfInfo> arrayList, ArrayList<ConfSrc> arrayList2, AtomicReference<TipInfo> atomicReference) {
        return this.a.b(arrayList, arrayList2, atomicReference);
    }

    public final String getGuid() {
        return new af("wup").a(WupConfig.KEY_GUID, (String) null);
    }

    public final int getGuidFromServer(DeviceInfo deviceInfo, AtomicReference<GUIDInfo> atomicReference) {
        return this.a.a(deviceInfo, atomicReference);
    }

    public final int getHotWord(HotWordReqInfo hotWordReqInfo, AtomicReference<HotWordResInfo> atomicReference) {
        return this.a.a(hotWordReqInfo, atomicReference);
    }

    public final int getMark(PhoneInfo phoneInfo, AtomicReference<RespMark> atomicReference) {
        return this.a.a(phoneInfo, atomicReference);
    }

    public final int getMySoftList(List<SoftKey> list, AtomicReference<SoftServerInfo> atomicReference, ArrayList<MySoftSimpleInfo> arrayList) {
        return this.a.a(list, atomicReference, arrayList);
    }

    public final int getOperatorDataSyncInfo(STQuery sTQuery, AtomicReference<STQueryResult> atomicReference) {
        return this.a.a(sTQuery, atomicReference);
    }

    public final int getSoftList(String str, AtomicReference<SoftServerInfo> atomicReference, ArrayList<SoftSimpleInfo> arrayList) {
        return this.a.b(str, atomicReference, arrayList);
    }

    public final int getTime(AtomicReference<ServerInfo> atomicReference) {
        return this.a.a(atomicReference);
    }

    public final int getTrafficCmd(STCloudOrderReq sTCloudOrderReq, AtomicReference<STVecCloudBak> atomicReference) {
        return this.a.a(sTCloudOrderReq, atomicReference);
    }

    public final int getTrafficTemplate(STSmsInfo sTSmsInfo, AtomicReference<STTrafficTemplate> atomicReference, AtomicReference<STRetInfo> atomicReference2) {
        return this.a.a(sTSmsInfo, atomicReference, atomicReference2);
    }

    public final int getUpdatesV2(List<ClientVersionInfo> list, AtomicReference<ServerCmdInfo> atomicReference) {
        return this.a.a(list, atomicReference);
    }

    public final int getVirusInfos(VirusClientInfo virusClientInfo, AtomicReference<VirusServerInfo> atomicReference, ArrayList<VirusInfo> arrayList) {
        return this.a.a(virusClientInfo, atomicReference, arrayList);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new hc();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final int reportChannelInfo() {
        return this.a.a();
    }

    public final int reportDownSoft(DownInfo downInfo) {
        return this.a.a(downInfo);
    }

    public final int reportFBIllegaReason(ArrayList<FBIllegaSoft> arrayList) {
        return this.a.c(arrayList);
    }

    public final int reportMobile(ArrayList<FBMobile> arrayList) {
        return this.a.f(arrayList);
    }

    public final int reportNotifyInfo(List<NotifyInfo> list) {
        return this.a.e(list);
    }

    public final int reportOperatorDataSyncErrorMsg(VECReportError vECReportError, AtomicReference<STReportBack> atomicReference) {
        return this.a.a(vECReportError, atomicReference);
    }

    public final int reportSms(List<SmsReport> list) {
        return this.a.a(list);
    }

    public final int reportSoftAction(List<SoftAction> list) {
        return this.a.d(list);
    }

    public final int reportSoftDesc(ArrayList<FBSoftDesc> arrayList) {
        return this.a.d(arrayList);
    }

    public final int reportSoftFeature(List<SoftFeature> list) {
        return this.a.c(list);
    }

    public final int reportSoftType(Map<SoftKey, MalSoftType> map) {
        return this.a.a(map);
    }

    public final int reportSoftUsageInfo(ArrayList<SUI> arrayList) {
        return this.a.h(arrayList);
    }

    public final int reportTel(List<TelReport> list) {
        return this.a.b(list);
    }

    public final int reportTipsRes(CmdInfoRes cmdInfoRes) {
        return this.a.a(cmdInfoRes);
    }

    public final int reportUnknowSoftInfo(ArrayList<UnknownSoftInfo> arrayList) {
        return this.a.b(arrayList);
    }

    public final int reportUserComment(ArrayList<CommentInfo> arrayList) {
        return this.a.a(arrayList);
    }

    public final int reportVirusLibUpdate() {
        return this.a.b();
    }

    public final int reportWBList(ArrayList<FBWBList> arrayList) {
        return this.a.g(arrayList);
    }
}
