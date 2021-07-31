package tms;

import QQPIM.NetInterfaceTypeInfo;
import QQPIM.NetInterfaceTypeInfoList;
import android.content.Context;
import android.text.TextUtils;
import com.lenovo.lps.sus.c.c;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.update.UpdateConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* access modifiers changed from: package-private */
public final class db {
    private static String e = "upload_config_des";
    private final String a = "MOBILE";
    private final String b = "WIFI";
    private final String c = "EXCLUDE";
    private final String d = UpdateConfig.TRAFFIC_MONITOR_CONFIG_NAME;
    private final List<String> f = new ArrayList();
    private final List<String> g = new ArrayList();
    private final ArrayList<String> h = new ArrayList<>();
    private af i;
    private String j;
    private Context k = TMSApplication.getApplicaionContext();
    private int l = 0;

    public db(String str) {
        this.j = str;
        this.i = new af("NetInterfaceManager");
    }

    private String a(ArrayList<String> arrayList) {
        if (this.l == 0 || arrayList.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (this.l == 17) {
            sb.append("[WFGG]: ");
        } else if (this.l == 1) {
            sb.append("[2G3G]: ");
        } else if (this.l == 16) {
            sb.append("[WIFI]: ");
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            sb.append(arrayList.get(i2));
            if (i2 < arrayList.size() - 1) {
                sb.append(", ");
            } else {
                sb.append(c.O);
            }
        }
        return sb.toString();
    }

    private static boolean a(List<String> list, String str) {
        for (String str2 : list) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x007f A[SYNTHETIC, Splitter:B:24:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0088 A[SYNTHETIC, Splitter:B:30:0x0088] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private QQPIM.NetInterfaceTypeInfoList b() {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.db.b():QQPIM.NetInterfaceTypeInfoList");
    }

    public final void a() {
        NetInterfaceTypeInfoList b2 = b();
        if (b2 != null) {
            Iterator<NetInterfaceTypeInfo> it = b2.vctInterfaceInfos.iterator();
            while (it.hasNext()) {
                NetInterfaceTypeInfo next = it.next();
                if ("MOBILE".equalsIgnoreCase(next.typeName)) {
                    this.f.clear();
                    this.f.addAll(next.keySet);
                } else if ("WIFI".equalsIgnoreCase(next.typeName)) {
                    this.g.clear();
                    this.g.addAll(next.keySet);
                } else if ("EXCLUDE".equalsIgnoreCase(next.typeName)) {
                    this.h.clear();
                    this.h.addAll(next.keySet);
                }
            }
        }
        String[] b3 = v.b(new File(this.j));
        int length = b3 != null ? b3.length : 0;
        ArrayList<String> arrayList = new ArrayList<>();
        this.l = 17;
        for (int i2 = 2; i2 < length; i2++) {
            String lowerCase = b3[i2].trim().trim().split("[: ]+")[0].trim().toLowerCase();
            if (!a(this.h, lowerCase)) {
                if (a(this.f, lowerCase)) {
                    this.l &= -2;
                } else if (a(this.g, lowerCase)) {
                    this.l &= -17;
                } else {
                    arrayList.add(lowerCase);
                }
            }
        }
        String a2 = a(arrayList);
        if (!TextUtils.isEmpty(a2)) {
            this.i.a(e, a2, true);
        }
    }

    public final boolean a(String str) {
        return a(this.f, str);
    }

    public final boolean b(String str) {
        return a(this.g, str);
    }
}
