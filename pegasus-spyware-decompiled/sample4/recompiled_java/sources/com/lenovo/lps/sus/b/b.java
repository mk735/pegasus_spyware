package com.lenovo.lps.sus.b;

import java.util.HashMap;
import java.util.Map;

public enum b {
    SUS_STARTUPDATE_EVENT(0),
    SUS_UPDATE_PROMPT_EVENT(1),
    SUS_INSTALLAPK_EVENT(2),
    SUS_REQNEWAPPVERSION_RESPONE_EVENT(3),
    SUS_USER_REQUPDATE_EVENT(4),
    SUS_USER_CHANGESETTINGS_EVENT(5),
    SUS_QUERY_EXCEPTION_EVENT(6),
    SUS_DOWNLOAD_EXCEPTION_EVENT(7),
    SUS_TESTSUSSERVER_EVENT(8),
    SUS_FINISH_EVENT(9),
    SUS_UPDATE_USERACTION_EVENT(10),
    SUS_REPORT_SILENCEINSTALLRESULT_EVENT(11),
    SUS_NOTIFICATION_INSTALL_EVENT(12);
    
    static Map o = new HashMap();
    int n;

    private b(int i) {
        this.n = i;
    }

    public static int a(b bVar) {
        if (o.size() == 0) {
            c();
        }
        return bVar.ordinal();
    }

    public static b a(int i) {
        if (o.size() == 0) {
            c();
        }
        return (b) o.get(Integer.valueOf(i));
    }

    private static void c() {
        b[] b = b();
        for (b bVar : b) {
            o.put(Integer.valueOf(bVar.a()), bVar);
        }
    }

    public final int a() {
        return this.n;
    }
}
