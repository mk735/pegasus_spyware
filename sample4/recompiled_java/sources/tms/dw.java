package tms;

import QQPIM.ECloudCMDID;
import QQPIM.EModelID;
import QQPIM.EQueryType;
import QQPIM.ETrafficTemplateType;
import QQPIM.STMatchRule;
import QQPIM.STQuery;
import QQPIM.STQueryInfo;
import QQPIM.STQueryResult;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import android.content.Context;
import android.util.Log;
import com.lenovo.safecenter.net.support.Utils;
import com.tencent.tccdb.MatchRule;
import com.tencent.tccdb.Ret;
import com.tencent.tccdb.SmsInfo;
import com.tencent.tccdb.SmsParser;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.CorrectionDataInfo;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionResult;
import com.tencent.tmsecure.module.wupsession.WupConfig;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class dw extends BaseManager {
    dd a;
    Context b;
    WupSessionManager c;

    private int a(SmsEntity smsEntity) {
        STTrafficTemplate sTTrafficTemplate;
        List<STQueryInfo> b2 = this.a.b(EQueryType.E_QUERY_TRAFFIC.value());
        StringBuffer stringBuffer = new StringBuffer();
        for (STQueryInfo sTQueryInfo : b2) {
            if (stringBuffer.length() == 0) {
                stringBuffer.append(sTQueryInfo.strCode);
            } else {
                stringBuffer.append("|").append(sTQueryInfo.strCode);
            }
        }
        TrafficCorrectionConfig a2 = this.a.a();
        STSmsInfo sTSmsInfo = new STSmsInfo((int) (System.currentTimeMillis() / 1000), smsEntity.phonenum, smsEntity.getBody(), a(a2.mProvinceId, true), a(a2.mBrandId, false), stringBuffer.toString(), 10000, 0, "", 0, false);
        AtomicReference<STTrafficTemplate> atomicReference = new AtomicReference<>();
        AtomicReference<STRetInfo> atomicReference2 = new AtomicReference<>();
        int trafficTemplate = this.c.getTrafficTemplate(sTSmsInfo, atomicReference, atomicReference2);
        if (!(trafficTemplate == 2 || trafficTemplate == 1 || trafficTemplate == 0)) {
            return ErrorCode.ERR_TC_RULE_UPDATED_FIALED;
        }
        if (!(atomicReference2.get() == null || (sTTrafficTemplate = atomicReference.get()) == null || sTTrafficTemplate.getMatchRules() == null)) {
            ArrayList<STMatchRule> matchRules = sTTrafficTemplate.getMatchRules();
            if (matchRules.size() <= 0) {
                return ErrorCode.ERR_TC_RULE_MISSED;
            }
            dd ddVar = this.a;
            ddVar.a.a("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value(), "", false);
            ddVar.a.a("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value(), "", false);
            ddVar.a.a();
            this.a.a(matchRules);
        }
        this.a.a(System.currentTimeMillis());
        return 0;
    }

    private boolean a(TrafficCorrectionResult trafficCorrectionResult, List<MatchRule> list, SmsEntity smsEntity, boolean z) {
        boolean z2 = false;
        if (list != null && list.size() > 0) {
            SmsInfo smsInfo = new SmsInfo(smsEntity.phonenum, smsEntity.getBody());
            AtomicReference atomicReference = new AtomicReference();
            if (z) {
                Iterator<MatchRule> it = list.iterator();
                int i = 0;
                boolean z3 = false;
                while (true) {
                    if (!it.hasNext()) {
                        z2 = z3;
                        break;
                    }
                    if (SmsParser.getNumberEntrance(this.b, smsInfo, it.next(), atomicReference) != 0) {
                        break;
                    }
                    i = ((Ret) atomicReference.get()).number + i;
                    z3 = true;
                }
                Log.i("TrafficCorrectionManagerImpl", "Used " + i + " kb");
                if (z2 && trafficCorrectionResult != null) {
                    trafficCorrectionResult.mUsedTrafficInKb = i;
                    trafficCorrectionResult.mLeftTrafficInKb = -1;
                }
            } else {
                Iterator<MatchRule> it2 = list.iterator();
                int i2 = 0;
                boolean z4 = false;
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = z4;
                        break;
                    }
                    if (SmsParser.getNumberEntrance(this.b, smsInfo, it2.next(), atomicReference) != 0) {
                        break;
                    }
                    i2 = ((Ret) atomicReference.get()).number + i2;
                    z4 = true;
                }
                Log.i("TrafficCorrectionManagerImpl", "Left " + i2 + " kb");
                if (trafficCorrectionResult != null) {
                    trafficCorrectionResult.mUsedTrafficInKb = -1;
                    trafficCorrectionResult.mLeftTrafficInKb = i2;
                }
            }
        }
        return z2;
    }

    public final int a(TrafficCorrectionConfig trafficCorrectionConfig) {
        if (trafficCorrectionConfig == null) {
            return -6;
        }
        String str = trafficCorrectionConfig.mProvinceId;
        String str2 = trafficCorrectionConfig.mCityId;
        String str3 = trafficCorrectionConfig.mCarryId;
        String str4 = trafficCorrectionConfig.mBrandId;
        dd ddVar = this.a;
        TrafficCorrectionConfig trafficCorrectionConfig2 = new TrafficCorrectionConfig(str, str2, str3, str4);
        ddVar.a.a(Utils.PROVINCE, trafficCorrectionConfig2.mProvinceId != null ? trafficCorrectionConfig2.mProvinceId : "", false);
        ddVar.a.a(Utils.CITY, trafficCorrectionConfig2.mCityId != null ? trafficCorrectionConfig2.mCityId : "", false);
        ddVar.a.a(Utils.CARRY, trafficCorrectionConfig2.mCarryId != null ? trafficCorrectionConfig2.mCarryId : "", false);
        ddVar.a.a(Utils.BRAND, trafficCorrectionConfig2.mBrandId != null ? trafficCorrectionConfig2.mBrandId : "", false);
        ddVar.a.a();
        this.a.a(0L);
        TrafficCorrectionConfig a2 = this.a.a();
        String str5 = a2.mProvinceId;
        String str6 = a2.mCarryId;
        String str7 = a2.mBrandId;
        if (str5 == null || str6 == null || str7 == null) {
            return -57;
        }
        STQuery sTQuery = new STQuery(str5, str6, str7, 2);
        AtomicReference<STQueryResult> atomicReference = new AtomicReference<>();
        int operatorDataSyncInfo = this.c.getOperatorDataSyncInfo(sTQuery, atomicReference);
        if (operatorDataSyncInfo != 2 && operatorDataSyncInfo != 1 && operatorDataSyncInfo != 0) {
            return operatorDataSyncInfo;
        }
        ArrayList<STQueryInfo> queryinfo = atomicReference.get().getQueryinfo();
        if (queryinfo != null && queryinfo.size() > 0) {
            dd ddVar2 = this.a;
            ddVar2.a.a("QUERY_INFO" + EQueryType.E_QUERY_TRAFFIC.value(), "", false);
            ddVar2.a.a("QUERY_INFO" + EQueryType.E_QUERY_MONEY.value(), "", false);
            ddVar2.a.a();
            this.a.b(queryinfo);
        }
        this.a.a.a("OPERATOR_CONFIG_UPDATE_TIME", System.currentTimeMillis(), true);
        return 0;
    }

    public final int a(TrafficCorrectionResult trafficCorrectionResult, String str, String str2) {
        boolean z;
        boolean z2;
        List<MatchRule> a2;
        if (trafficCorrectionResult == null || str == null || str2 == null) {
            return -6;
        }
        SmsEntity smsEntity = new SmsEntity();
        smsEntity.phonenum = str;
        smsEntity.body = str2;
        SmsInfo smsInfo = new SmsInfo(smsEntity.phonenum, smsEntity.getBody());
        AtomicReference atomicReference = new AtomicReference();
        if (SmsParser.getWrongSmsType(this.b, smsInfo, atomicReference) != 0) {
            Log.i("TrafficCorrectionManagerImpl", ((Ret) atomicReference.get()).sms);
            return -103;
        }
        if (System.currentTimeMillis() - this.a.a.a("MATCH_RULE_UPDATE_TIME", 0L) > 604800000) {
            Log.i("TrafficCorrectionManagerImpl", "updateMatchRule 1 result = " + a(smsEntity));
            z = true;
        } else {
            z = false;
        }
        do {
            List<MatchRule> a3 = this.a.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value());
            boolean a4 = (a3 == null || a3.size() <= 0) ? false : a(trafficCorrectionResult, a3, smsEntity, true);
            if (!a4 && (a2 = this.a.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value())) != null && a2.size() > 0) {
                a4 = a(trafficCorrectionResult, a2, smsEntity, false);
            }
            if (a4 || z) {
                z2 = false;
                continue;
            } else {
                int a5 = a(smsEntity);
                Log.i("TrafficCorrectionManagerImpl", "updateMatchRule 2 result = " + a5);
                z2 = a5 == 0;
                z = true;
                continue;
            }
        } while (z2);
        return 0;
    }

    public final int a(ArrayList<CorrectionDataInfo> arrayList) {
        if (arrayList == null) {
            return -6;
        }
        List<STQueryInfo> b2 = this.a.b(EQueryType.E_QUERY_TRAFFIC.value());
        if (b2 == null || b2.size() == 0) {
            return -104;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MM");
        for (STQueryInfo sTQueryInfo : b2) {
            String strPort = sTQueryInfo.getStrPort();
            String strCode = sTQueryInfo.getStrCode();
            if (strCode != null && !"".equals(strCode) && strPort != null && !"".equals(strPort)) {
                if (strCode.contains("[MONTH]") || strCode.contains("[YEAR]")) {
                    Date date = new Date();
                    strCode = strCode.replace("[MONTH]", simpleDateFormat2.format(date)).replace("[YEAR]", simpleDateFormat.format(date));
                }
                arrayList.add(new CorrectionDataInfo(strPort, strCode));
            }
        }
        return 0;
    }

    public final TrafficCorrectionConfig a() {
        return this.a.a();
    }

    public final String a(String str, boolean z) {
        if (z) {
            switch (Integer.valueOf(str).intValue()) {
                case 10:
                    return "北京";
                case 20:
                    return "广东";
                case 21:
                    return "上海";
                case 22:
                    return "天津";
                case 23:
                    return "重庆";
                case 24:
                    return "辽宁";
                case 25:
                    return "江苏";
                case 27:
                    return "湖北";
                case 28:
                    return "四川";
                case WupConfig.RQ_REPORT_TEL:
                    return "陕西";
                case ECloudCMDID._ECCID_RecommendSoft:
                    return "河北";
                case 351:
                    return "山西";
                case 371:
                    return "河南";
                case 431:
                    return "吉林";
                case 451:
                    return "黑龙江";
                case 471:
                    return "内蒙古";
                case 531:
                    return "山东";
                case 551:
                    return "安徽";
                case 571:
                    return "浙江";
                case 591:
                    return "福建";
                case 731:
                    return "湖南";
                case 771:
                    return "广西";
                case 791:
                    return "江西";
                case 851:
                    return "贵州";
                case 871:
                    return "云南";
                case 891:
                    return "西藏";
                case 898:
                    return "海南";
                case 931:
                    return "甘肃";
                case 951:
                    return "宁夏";
                case 971:
                    return "青海";
                case 991:
                    return "新疆";
                default:
                    return str;
            }
        } else {
            switch (Integer.valueOf(str).intValue()) {
                case 10000:
                    return "QUAN_QIU_TONG";
                case EModelID._EMID_Secure_Begin:
                    return "DONG_GAN";
                case EModelID._EMID_QQPim_Begin:
                    return "SHEN_ZHOU_XING";
                case EModelID._EMID_PowerManager_Begin:
                    return "UNICOM_2G";
                case 60000:
                    return "CHINA_TELECOM";
                case 70000:
                    return "UNICOM_3G";
                default:
                    return str;
            }
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 2;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.a = new dd();
        this.c = (WupSessionManager) ManagerCreator.getManager(WupSessionManager.class);
    }
}
