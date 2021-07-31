package tms;

import QQPIM.STMatchRule;
import QQPIM.STQueryInfo;
import com.lenovo.safecenter.net.support.Utils;
import com.tencent.tccdb.MatchRule;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class dd {
    af a = new af("operator_data_sync_setting");
    private final String b = "LAST_SYNC_TASK_EXECUTE_TIME";
    private final String c = "LAST_SYNC_TASK_EXECUTE_RESULT";
    private final String d = "LAST_OPERATOR_DATA_SYNC_TIME";
    private final String e = "ZFT_OPERATOR_CONFIG_UPDATE_TIME";
    private final String f = "OPERATOR_CONFIG_UPDATE_TIME";
    private final String g = "OPERATOR_CONFIG_UPDATE_RESURRECTION_TIME";
    private final String h = "MATCH_RULE_UPDATE_TIME";
    private final String i = "CURRENT_IMSI";
    private final String j = "SAMPLE_COLLECTED";
    private final String k = Utils.PROVINCE;
    private final String l = Utils.CITY;
    private final String m = Utils.CARRY;
    private final String n = Utils.BRAND;

    public final TrafficCorrectionConfig a() {
        return new TrafficCorrectionConfig(this.a.a(Utils.PROVINCE, ""), this.a.a(Utils.CITY, ""), this.a.a(Utils.CARRY, ""), this.a.a(Utils.BRAND, ""));
    }

    public final List<MatchRule> a(int i2) {
        ArrayList arrayList = new ArrayList();
        String a2 = this.a.a("MATCH_RULE" + i2, "");
        if (a2 != null && !"".equals(a2)) {
            String[] split = a2.split("#ITEM#");
            for (String str : split) {
                String[] split2 = str.split("#COLUMN#");
                if (split2 != null && split2.length == 4) {
                    arrayList.add(new MatchRule(Integer.valueOf(split2[0]).intValue(), Integer.valueOf(split2[1]).intValue(), split2[2], split2[3]));
                }
            }
        }
        return arrayList;
    }

    public final void a(long j2) {
        this.a.a("MATCH_RULE_UPDATE_TIME", j2, true);
    }

    public final void a(List<STMatchRule> list) {
        HashMap hashMap = new HashMap();
        for (STMatchRule sTMatchRule : list) {
            String str = (String) hashMap.get("MATCH_RULE" + sTMatchRule.type);
            hashMap.put("MATCH_RULE" + sTMatchRule.type, str == null ? sTMatchRule.unit + "#COLUMN#" + sTMatchRule.type + "#COLUMN#" + sTMatchRule.prefix + "#COLUMN#" + sTMatchRule.postfix : str + "#ITEM#" + sTMatchRule.unit + "#COLUMN#" + sTMatchRule.type + "#COLUMN#" + sTMatchRule.prefix + "#COLUMN#" + sTMatchRule.postfix);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            this.a.a((String) entry.getKey(), (String) entry.getValue(), false);
        }
        this.a.a();
    }

    public final List<STQueryInfo> b(int i2) {
        ArrayList arrayList = new ArrayList();
        String a2 = this.a.a("QUERY_INFO" + i2, "");
        if (a2 != null && !"".equals(a2)) {
            String[] split = a2.split("#ITEM#");
            for (String str : split) {
                String[] split2 = str.split("#COLUMN#");
                if (split2 != null && split2.length == 3) {
                    arrayList.add(new STQueryInfo(Integer.valueOf(split2[0]).intValue(), split2[1], split2[2]));
                }
            }
        }
        return arrayList;
    }

    public final void b(List<STQueryInfo> list) {
        HashMap hashMap = new HashMap();
        for (STQueryInfo sTQueryInfo : list) {
            String str = (String) hashMap.get("QUERY_INFO" + sTQueryInfo.getNQuerytype());
            hashMap.put("QUERY_INFO" + sTQueryInfo.getNQuerytype(), str == null ? sTQueryInfo.getNQuerytype() + "#COLUMN#" + sTQueryInfo.getStrPort() + "#COLUMN#" + sTQueryInfo.getStrCode() : str + "#ITEM#" + sTQueryInfo.getNQuerytype() + "#COLUMN#" + sTQueryInfo.getStrPort() + "#COLUMN#" + sTQueryInfo.getStrCode());
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            this.a.a((String) entry.getKey(), (String) entry.getValue(), false);
        }
        this.a.a();
    }
}
