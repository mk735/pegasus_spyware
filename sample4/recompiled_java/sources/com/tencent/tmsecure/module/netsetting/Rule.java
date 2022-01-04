package com.tencent.tmsecure.module.netsetting;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class Rule {
    public static final int TYPE_HOST = 2;
    public static final int TYPE_UID = 1;
    public static final String VERDICT_ACCEPT = "ACCEPT";
    public static final String VERDICT_DROP = "DROP";
    public static final String VERDICT_QUEUE = "NFQUEUE";
    public String host;
    public String hostVerdict;
    public int type;
    public int uid;
    public String uidMobileVerdict;
    public String uidWifiVerdict;

    /* access modifiers changed from: package-private */
    public ArrayList<String> a(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (str != null) {
            try {
                for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                    arrayList.add(inetAddress.getHostAddress());
                }
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }
}
