package tms;

import android.content.Context;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.netsetting.Rule;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dj extends BaseManager {
    private int a = -1;
    private boolean b = false;
    private String c;

    public final int a() {
        if (this.a != -1) {
            return this.a;
        }
        String runScript = ScriptHelper.runScript("cat /proc/net/ip_tables_names");
        String runScript2 = ScriptHelper.runScript("cat /proc/net/ip_tables_matches");
        String runScript3 = ScriptHelper.runScript("cat /proc/net/ip_tables_targets");
        if (runScript == null || runScript2 == null || runScript3 == null) {
            this.a = 0;
            return this.a;
        }
        if (!runScript.contains("filter") || !runScript2.contains("owner")) {
            this.a = 0;
        } else if (!runScript3.contains("MARK") || !new File("/proc/net/netfilter/nfnetlink_queue").exists()) {
            this.a = 1;
        } else {
            this.a = 2;
        }
        return this.a;
    }

    public final ArrayList<Rule> a(int i) {
        boolean equals;
        String runScript = ScriptHelper.runScript(this.c + " list-rules ");
        if (runScript == null) {
            return new ArrayList<>();
        }
        ArrayList<Rule> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        String[] split = runScript.toString().split("\n");
        for (String str : split) {
            String[] split2 = str.split("[ ]+");
            if (i == 2) {
                if (split2[0].equals("host")) {
                    Rule rule = new Rule();
                    rule.type = 2;
                    rule.host = split2[1];
                    rule.hostVerdict = split2[2];
                    arrayList.add(rule);
                }
            } else if (i == 1 && ((equals = split2[0].equals("mobile")) || split2[0].equals(SettingUtil.WIFI))) {
                Rule rule2 = new Rule();
                rule2.type = 1;
                rule2.uid = Integer.valueOf(split2[1]).intValue();
                if (equals) {
                    rule2.uidMobileVerdict = split2[2];
                    arrayList2.add(rule2);
                } else {
                    rule2.uidWifiVerdict = split2[2];
                    arrayList3.add(rule2);
                }
            }
        }
        if (i == 1) {
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                Rule rule3 = (Rule) it.next();
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    Rule rule4 = (Rule) it2.next();
                    if (rule3.uid == rule4.uid) {
                        rule4.uidWifiVerdict = rule3.uidWifiVerdict;
                    }
                }
            }
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public final void a(Rule rule) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(rule);
        b(arrayList);
    }

    public final void a(boolean z) {
        ScriptHelper.runScript(this.c + " set-enable " + z);
    }

    public final boolean a(List<Rule> list) {
        boolean z = true;
        if (!this.b) {
            String str = this.c;
            if (!cv.a(str)) {
                if (ScriptHelper.runScript(str + " init-chain") == null) {
                    z = false;
                }
            }
            this.b = z;
        }
        if (this.b) {
            ArrayList arrayList = new ArrayList();
            for (Rule rule : list) {
                switch (rule.type) {
                    case 1:
                        if ((rule.uidMobileVerdict != null && !rule.uidMobileVerdict.equals(Rule.VERDICT_ACCEPT)) || (rule.uidWifiVerdict != null && !rule.uidWifiVerdict.equals(Rule.VERDICT_ACCEPT))) {
                            arrayList.add(rule);
                            break;
                        }
                    case 2:
                        if (rule.hostVerdict != null && !rule.hostVerdict.equals(Rule.VERDICT_ACCEPT)) {
                            arrayList.add(rule);
                            break;
                        }
                }
            }
            b(arrayList);
        }
        return this.b;
    }

    public final void b(List<Rule> list) {
        String str = this.c;
        StringBuilder sb = new StringBuilder(str + " set-hosts ");
        StringBuilder sb2 = new StringBuilder(str + " set-uids ");
        for (Rule rule : list) {
            switch (rule.type) {
                case 1:
                    if (rule.uidMobileVerdict != null) {
                        sb2.append(" " + rule.uid + " mobile " + rule.uidMobileVerdict);
                    }
                    if (rule.uidWifiVerdict != null) {
                        sb2.append(" " + rule.uid + " wifi " + rule.uidWifiVerdict);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (rule.hostVerdict != null) {
                        sb.append(" " + rule.host + " " + rule.hostVerdict);
                        break;
                    } else {
                        break;
                    }
            }
        }
        if (ScriptHelper.runScript(sb.toString()) != null) {
            ScriptHelper.runScript(sb2.toString());
        }
    }

    public final boolean b() {
        this.b = cv.a(this.c);
        return this.b;
    }

    public final boolean c() {
        String runScript = ScriptHelper.runScript(this.c + " get-enable");
        if (runScript == null) {
            return false;
        }
        return runScript.contains("true");
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.c = v.a(context, "firewall.dat", (String) null);
    }
}
