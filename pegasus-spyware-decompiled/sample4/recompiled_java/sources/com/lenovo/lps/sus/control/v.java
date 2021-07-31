package com.lenovo.lps.sus.control;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.SUS;
import com.lenovo.lps.sus.SUSListener;
import com.lenovo.lps.sus.b.a;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.b.c;
import com.lenovo.lps.sus.b.d;
import com.lenovo.lps.sus.b.e;
import com.lenovo.lps.sus.c.i;
import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.json.JSONException;
import org.json.JSONObject;

public class v {
    private static an X = null;
    public static String a = null;
    private static /* synthetic */ int[] aa;
    private static /* synthetic */ int[] ab;
    public static boolean b = true;
    private String A = null;
    private boolean B = true;
    private boolean C = true;
    private boolean D = false;
    private String E = null;
    private z F = null;
    private String G = null;
    private ah H = null;
    private String I = null;
    private File J = null;
    private String K = null;
    private long L = 0;
    private String M = null;
    private SUSListener N = null;
    private SUSListener O = null;
    private String P = null;
    private long Q = 0;
    private long R = 0;
    private int S = 0;
    private int T = 0;
    private int U = 100;
    private long V = 0;
    private long W = 0;
    private ap Y = ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_USERSETTINGS;
    private ai Z = ai.SUS_CUSTOM_DOWNLOADMANAGER_NOTIFICATION;
    private Context c = null;
    private Handler d = null;
    private am e = null;
    private c f = null;
    private int g = 0;
    private String h = null;
    private String i = null;
    private String j = null;
    private String k = null;
    private String l = null;
    private String m = null;
    private String n = null;
    private String o = null;
    private String p = null;
    private String q = null;
    private String r = null;
    private String s = null;
    private String t = null;
    private String u = null;
    private String v = null;
    private String w = null;
    private String x = null;
    private String y = null;
    private String z = null;

    public v(Context context) {
        if (com.lenovo.lps.sus.c.c.w()) {
            this.c = context;
            i.a(com.lenovo.lps.sus.c.c.b, "use activity's context,context=" + context);
        } else {
            this.c = context.getApplicationContext();
            i.a(com.lenovo.lps.sus.c.c.b, "use ApplicationContext,myApplicationContext=" + this.c);
        }
        this.d = new f(this);
        this.e = new am(this.c, this.d);
        i.a(com.lenovo.lps.sus.c.c.b, "mySUSUIHandler=" + this.e);
    }

    public static String a(a aVar) {
        if (aVar == null) {
            return "{\"RES\":\"NOTFOUND\"}";
        }
        if (!com.lenovo.lps.sus.c.c.S.equals(aVar.h())) {
            return com.lenovo.lps.sus.c.c.T.equals(aVar.h()) ? "{\"RES\":\"LATESTVERSION\"}" : com.lenovo.lps.sus.c.c.U.equals(aVar.h()) ? "{\"RES\":\"NOTFOUND\"}" : "{\"RES\":\"NOTFOUND\"}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("{\"RES\":\"");
        sb.append(com.lenovo.lps.sus.c.c.S);
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"ChannelKey\":\"");
        String str = "null";
        if (!"Common".equals(aVar.i())) {
            str = aVar.i();
        }
        sb.append(URLEncoder.encode(str));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"VerCode\":\"");
        sb.append(URLEncoder.encode(aVar.d()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"VerName\":\"");
        sb.append(URLEncoder.encode(aVar.b()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"DownloadURL\":\"");
        sb.append(URLEncoder.encode(aVar.e()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"Size\":\"");
        sb.append(URLEncoder.encode(String.valueOf(aVar.f())));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"UpdateDesc\":\"");
        sb.append(URLEncoder.encode(aVar.g()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"FileName\":\"");
        sb.append(URLEncoder.encode(aVar.j()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"ForceUpdate\":\"");
        sb.append(URLEncoder.encode(aVar.k()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(",\"CustKey\":\"");
        sb.append(URLEncoder.encode(aVar.l()));
        sb.append(com.lenovo.lps.sus.c.c.M);
        sb.append(com.lenovo.lps.sus.c.c.Q);
        return sb.toString();
    }

    public static void b(String str) {
        a = str;
    }

    public static String n() {
        return a;
    }

    public static String o() {
        return "{\"RES\":\"NOTFOUND\"}";
    }

    public static String p() {
        return "{\"RES\":\"LATESTVERSION\"}";
    }

    public static String q() {
        return "{\"RES\":\"EXCEPTION\"}";
    }

    private static /* synthetic */ int[] v() {
        int[] iArr = aa;
        if (iArr == null) {
            iArr = new int[ap.a().length];
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYAPPKEY_CUSTINPUT_NOUSERSETTINGS.ordinal()] = 6;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTDM2ACTIVITY__NOUSERSETTINGS.ordinal()] = 7;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS_AUTOINSTALL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS_CUSTCONF.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_QUERYALLVER.ordinal()] = 9;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_QUERYLATESTVER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_IGNOREUSERSETTINGS.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_USERSETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_DOWNLOAD_BYURL.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_INSTALLAPP.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[ap.SUS_UPDATETRANSATION_TYPE_TESTSUSSERVER.ordinal()] = 12;
            } catch (NoSuchFieldError e13) {
            }
            aa = iArr;
        }
        return iArr;
    }

    private static /* synthetic */ int[] w() {
        int[] iArr = ab;
        if (iArr == null) {
            iArr = new int[b.b().length];
            try {
                iArr[b.SUS_DOWNLOAD_EXCEPTION_EVENT.ordinal()] = 8;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[b.SUS_FINISH_EVENT.ordinal()] = 10;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[b.SUS_INSTALLAPK_EVENT.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[b.SUS_NOTIFICATION_INSTALL_EVENT.ordinal()] = 13;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[b.SUS_QUERY_EXCEPTION_EVENT.ordinal()] = 7;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[b.SUS_REPORT_SILENCEINSTALLRESULT_EVENT.ordinal()] = 12;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[b.SUS_REQNEWAPPVERSION_RESPONE_EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[b.SUS_STARTUPDATE_EVENT.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[b.SUS_TESTSUSSERVER_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[b.SUS_UPDATE_PROMPT_EVENT.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[b.SUS_UPDATE_USERACTION_EVENT.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[b.SUS_USER_CHANGESETTINGS_EVENT.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[b.SUS_USER_REQUPDATE_EVENT.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            ab = iArr;
        }
        return iArr;
    }

    public void a() {
        i.a(com.lenovo.lps.sus.c.c.b, "UpdateTransaction finish entry");
        if (this.e != null) {
            i.a(com.lenovo.lps.sus.c.c.b, "UpdateTransaction call mySUSUIHandler finish");
            this.e.a();
            this.e = null;
        }
        this.c = null;
        this.d = null;
        this.P = null;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.W = 0;
        this.V = 0;
        i.a(com.lenovo.lps.sus.c.c.b, "UpdateTransaction finish end");
    }

    public void a(int i2, int i3) {
        if (this.c != null) {
            if (this.f == null) {
                this.f = new c();
            }
            this.f.a(i2);
            this.f.b(i3);
            SharedPreferences.Editor edit = this.c.getSharedPreferences(com.lenovo.lps.sus.c.c.ad, 0).edit();
            edit.putInt(com.lenovo.lps.sus.c.c.ae, this.f.a());
            edit.putInt(com.lenovo.lps.sus.c.c.af, i3);
            edit.commit();
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public void a(Message message) {
        String b2;
        String b3;
        String b4;
        String b5;
        String n2;
        boolean a2;
        String b6;
        boolean z2;
        boolean z3 = false;
        if (message != null && this.c != null) {
            switch (w()[b.a(message.what).ordinal()]) {
                case 1:
                    c();
                    return;
                case 2:
                    i.a(com.lenovo.lps.sus.c.c.b, "SUS_UPDATE_PROMPT_MSG mySUSUIHandler=" + this.e);
                    switch (v()[this.Y.ordinal()]) {
                        case 3:
                        case 6:
                        case 7:
                            z2 = false;
                            break;
                        case 4:
                            if (!this.B) {
                                ae.b();
                                return;
                            }
                            z2 = false;
                            break;
                        case 5:
                            Message message2 = new Message();
                            if (this.d != null) {
                                message.what = b.a(b.SUS_USER_REQUPDATE_EVENT);
                                message.obj = 0;
                                this.d.sendMessage(message2);
                                z2 = true;
                                break;
                            }
                            z2 = true;
                            break;
                        case 8:
                        case 9:
                            ae.b();
                            return;
                        default:
                            z2 = true;
                            break;
                    }
                    if (this.e != null) {
                        h();
                        if (this.f != null) {
                            if (com.lenovo.lps.sus.c.c.d()) {
                                z3 = z2;
                            }
                            this.e.a((a) message.obj, this.f.b(), z3);
                            return;
                        }
                        return;
                    }
                    return;
                case 3:
                    if (ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS_CUSTCONF != this.Y || this.C) {
                        String str = (String) message.obj;
                        if (str == null || (str != null && str.length() <= 0)) {
                            ae.b();
                            return;
                        }
                        i.a(com.lenovo.lps.sus.c.c.b, "handle SUS_INSTALLAPK_EVENT,file=" + str);
                        f();
                        this.H = new ah(this.G);
                        if (this.H != null) {
                            this.H.start();
                        } else {
                            i.b(com.lenovo.lps.sus.c.c.b, "mySUSResInfoThread == null!");
                        }
                        this.G = null;
                        if (ap.SUS_UPDATETRANSATION_TYPE_DOWNLOAD_BYURL == this.Y) {
                            if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b5 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_DOWNLOADCOMPLETE")) != null && b5.length() > 0) {
                                Toast.makeText(this.c, b5, 1).show();
                            }
                            this.O = this.N;
                            ae.b();
                            if (this.O != null) {
                                this.O.onUpdateNotification(EventType.SUS_DOWNLOADCOMPLETE, str);
                            }
                            this.O = null;
                            return;
                        }
                        if (ap.SUS_UPDATETRANSATION_TYPE_INSTALLAPP != this.Y) {
                            if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b4 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_DOWNLOADCOMPLETE")) != null && b4.length() > 0) {
                                Toast.makeText(this.c, b4, 1).show();
                            }
                            if (this.N != null) {
                                this.N.onUpdateNotification(EventType.SUS_DOWNLOADCOMPLETE, str);
                            }
                        }
                        if (this.D && str != null && com.lenovo.lps.sus.c.c.y() > 0) {
                            i.a(com.lenovo.lps.sus.c.c.b, "chmod 777,filename=" + str);
                            com.lenovo.lps.sus.c.c.a("777", str);
                        }
                        if (new File(str).exists()) {
                            com.lenovo.lps.sus.c.c.a(this.c, str, this.q, this.d, this.N, com.lenovo.lps.sus.c.c.y(), false);
                        }
                        ae.b();
                        return;
                    }
                    ae.b();
                    return;
                case 4:
                    a((String) message.obj);
                    return;
                case 5:
                    int intValue = (message == null || message.obj == null) ? 0 : ((Integer) message.obj).intValue();
                    if (intValue == 0) {
                        this.V = System.currentTimeMillis();
                    }
                    this.D = false;
                    if (this.P != null) {
                        String str2 = this.P;
                        a2 = com.lenovo.lps.sus.c.c.a(this.Q, this.L, this.R);
                        n2 = str2;
                    } else {
                        n2 = com.lenovo.lps.sus.c.c.n(this.c);
                        this.D = com.lenovo.lps.sus.c.c.g();
                        com.lenovo.lps.sus.c.c.a(n2, this.K, this.D);
                        a2 = com.lenovo.lps.sus.c.c.a(this.L);
                        if (!a2) {
                            com.lenovo.lps.sus.c.c.e(n2);
                            a2 = com.lenovo.lps.sus.c.c.a(this.L);
                        }
                    }
                    i.a(com.lenovo.lps.sus.c.c.b, "downloadpath=" + n2);
                    if (!a2) {
                        if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b6 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_INSUFFICIENTSTORAGESPACE")) != null && b6.length() > 0) {
                            Toast.makeText(this.c, b6, 1).show();
                        }
                        this.O = this.N;
                        ae.b();
                        if (this.O != null) {
                            this.O.onUpdateNotification(EventType.SUS_FAIL_INSUFFICIENTSTORAGESPACE, "insufficient storage space");
                            this.O = null;
                        }
                        i.a(com.lenovo.lps.sus.c.c.b, "INSUFFICIENTSTORAGESPACE");
                        return;
                    }
                    this.J = new File(n2);
                    if (this.J != null && !this.J.exists()) {
                        this.J.mkdirs();
                    }
                    if (this.J == null || (this.J != null && !this.J.exists())) {
                        i.a(com.lenovo.lps.sus.c.c.b, "The folder isn't exit! path=" + n2);
                        this.O = this.N;
                        ae.b();
                        if (this.O != null) {
                            this.O.onUpdateNotification(EventType.SUS_FAIL_DOWNOLADFOLDER_FOLDER_NOTEXIST, "The download folder does not exist.");
                            this.O = null;
                        }
                        i.a(com.lenovo.lps.sus.c.c.b, "The download folder does not exist.");
                        return;
                    }
                    b(n2);
                    if (!(this.N == null || this.U == this.T)) {
                        this.T = this.U;
                        this.N.onUpdateNotification(EventType.SUS_DOWNLOADSTART, "Start the downloading");
                    }
                    if (this.e == null || this.I == null || n2 == null || this.K == null || this.L <= 0) {
                        i.a(com.lenovo.lps.sus.c.c.b, "updateHandler exception.");
                        ae.b();
                        return;
                    }
                    this.e.a(intValue, this.I, n2, this.K, this.L, this.Z);
                    return;
                case 6:
                    a(Integer.valueOf(message.arg1).intValue(), ((Integer) message.obj).intValue());
                    return;
                case 7:
                    if (com.lenovo.lps.sus.c.c.w()) {
                        am.c();
                    } else if (com.lenovo.lps.sus.c.c.v()) {
                        SUSCustdefNotificationActivity.b();
                    } else {
                        SUSNotificationActivity.a();
                    }
                    if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b3 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_UPDATE_EXCEPTION")) != null && b3.length() > 0) {
                        Toast.makeText(this.c, b3, 1).show();
                    }
                    this.O = this.N;
                    ae.b();
                    if (this.O != null) {
                        this.O.onUpdateNotification(EventType.SUS_QUERY_RESP, com.lenovo.lps.sus.c.c.V);
                        this.O = null;
                        return;
                    }
                    return;
                case 8:
                    boolean booleanValue = ((Boolean) message.obj).booleanValue();
                    if (this.S >= 2 || booleanValue) {
                        if (com.lenovo.lps.sus.c.c.w()) {
                            am.c();
                        } else if (com.lenovo.lps.sus.c.c.v()) {
                            SUSCustdefNotificationActivity.b();
                        } else {
                            SUSNotificationActivity.a();
                        }
                        if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b2 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_UPDATE_EXCEPTION")) != null && b2.length() > 0) {
                            Toast.makeText(this.c, b2, 1).show();
                        }
                        Message message3 = new Message();
                        if (this.d != null) {
                            message3.what = b.a(b.SUS_FINISH_EVENT);
                            this.d.sendMessageDelayed(message3, 300);
                        }
                        this.O = this.N;
                        if (this.O != null && !booleanValue) {
                            this.O.onUpdateNotification(EventType.SUS_FAIL_DOWNLOAD_EXCEPTION, null);
                            this.O = null;
                            return;
                        }
                        return;
                    }
                    this.S++;
                    if (this.c != null) {
                        if (1 == this.S) {
                            if (System.currentTimeMillis() - this.V > 4000) {
                                if (!com.lenovo.lps.sus.c.c.u() && !ae.f() && !ae.g()) {
                                    com.lenovo.lps.sus.c.c.e(true);
                                }
                                this.W = System.currentTimeMillis();
                            }
                        } else if (2 == this.S && (((this.W > 0 && System.currentTimeMillis() - this.W > 9000) || (0 == this.W && System.currentTimeMillis() - this.V > 6000)) && !com.lenovo.lps.sus.c.c.u() && !ae.f() && !ae.g())) {
                            com.lenovo.lps.sus.c.c.e(true);
                        }
                    }
                    Message message4 = new Message();
                    if (this.d != null) {
                        message4.what = b.a(b.SUS_USER_REQUPDATE_EVENT);
                        message4.obj = Integer.valueOf(this.S);
                        this.d.sendMessage(message4);
                        return;
                    }
                    return;
                case 9:
                    this.O = this.N;
                    ae.b();
                    if (this.O != null) {
                        String str3 = (String) message.obj;
                        if (str3 == null || str3.length() <= 0) {
                            str3 = "FAIL";
                        }
                        this.O.onUpdateNotification(EventType.SUS_TESTSERVER_RESP, str3);
                    }
                    this.O = null;
                    return;
                case 10:
                    ae.b();
                    return;
                case 11:
                    EventType eventType = (EventType) message.obj;
                    this.O = this.N;
                    if (eventType != null) {
                        if (EventType.SUS_UPDATEPROMPT_USER_CONFIRM.equals(eventType)) {
                            if (this.O != null) {
                                this.O.onUpdateNotification(EventType.SUS_UPDATEPROMPT_USER_CONFIRM, "user click the confirm button!");
                            }
                            Message message5 = new Message();
                            if (this.d != null) {
                                message5.what = b.a(b.SUS_USER_REQUPDATE_EVENT);
                                this.d.sendMessage(message5);
                            } else {
                                i.a(com.lenovo.lps.sus.c.c.b, "SUSPromptActivity popupPromptionDialog PositiveButton myMSGHandler=null");
                            }
                        } else if (EventType.SUS_UPDATEPROMPT_USER_CANCEL.equals(eventType)) {
                            ae.b();
                            if (this.O != null) {
                                this.O.onUpdateNotification(EventType.SUS_UPDATEPROMPT_USER_CONFIRM, "user click the cancel button!");
                            }
                        }
                    }
                    this.O = null;
                    return;
                case 12:
                default:
                    return;
                case 13:
                    com.lenovo.lps.sus.c.c.d(this.c, (String) message.obj);
                    return;
            }
        }
    }

    public void a(EventType eventType) {
        Message message = new Message();
        if (this.d != null && eventType != null) {
            message.what = b.a(b.SUS_UPDATE_USERACTION_EVENT);
            message.obj = eventType;
            this.d.sendMessage(message);
        }
    }

    public void a(SUSListener sUSListener) {
        this.N = sUSListener;
    }

    public void a(ap apVar, e eVar) {
        i.a(com.lenovo.lps.sus.c.c.b, "startUpdateTransaction!");
        this.Y = apVar;
        this.Z = ai.SUS_CUSTOM_DOWNLOADMANAGER_NOTIFICATION;
        this.S = 0;
        this.U++;
        if (this.U > 10000) {
            this.U = 1;
        }
        this.T = 0;
        this.W = 0;
        this.V = 0;
        switch (v()[this.Y.ordinal()]) {
            case 1:
            case 2:
            case 7:
                if (!d()) {
                    System.out.println("getappinfo fail!");
                    i.b(com.lenovo.lps.sus.c.c.b, "getappinfo fail!");
                    ae.b();
                    return;
                }
                break;
            case 3:
            case 4:
            case 5:
                this.q = eVar.a;
                this.g = Integer.valueOf(eVar.b).intValue();
                this.k = eVar.c;
                this.B = eVar.d;
                this.C = eVar.e;
                break;
            case 6:
                this.j = eVar.a;
                this.g = Integer.valueOf(eVar.b).intValue();
                this.k = eVar.c;
                break;
            case 8:
            case 9:
                this.q = eVar.a;
                this.g = Integer.valueOf(eVar.b).intValue();
                this.k = eVar.c;
                break;
            case 10:
                this.I = eVar.a;
                this.K = eVar.b;
                this.L = Long.valueOf(eVar.c).longValue();
                Message message = new Message();
                if (this.d != null) {
                    message.what = b.a(b.SUS_USER_REQUPDATE_EVENT);
                    message.obj = 0;
                    this.d.sendMessage(message);
                    return;
                }
                return;
            case 11:
                String str = eVar.a;
                Message message2 = new Message();
                if (this.d != null) {
                    message2.what = b.a(b.SUS_INSTALLAPK_EVENT);
                    message2.obj = str;
                    this.d.sendMessage(message2);
                    return;
                }
                return;
            case 12:
                r();
                return;
        }
        e();
        g();
        Message message3 = new Message();
        if (this.d != null) {
            message3.what = b.a(b.SUS_STARTUPDATE_EVENT);
            this.d.sendMessage(message3);
        }
        com.lenovo.lps.sus.c.a.a(this.c, this.q, String.valueOf(this.g), this.k);
        switch (v()[this.Y.ordinal()]) {
            case 1:
            case 7:
            default:
                return;
            case 2:
                com.lenovo.lps.sus.c.a.b();
                return;
        }
    }

    public void a(z zVar) {
        this.F = zVar;
    }

    public void a(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean z2;
        String b2;
        String b3;
        if (str == null || ((str != null && str.length() <= 0) || (str != null && !str.startsWith(com.lenovo.lps.sus.c.c.R)))) {
            ae.b();
            return;
        }
        i.a(com.lenovo.lps.sus.c.c.b, "responeStr = " + str);
        String substring = str.substring(com.lenovo.lps.sus.c.c.R.length());
        if (substring == null || (substring != null && substring.length() <= 0)) {
            ae.b();
            return;
        }
        boolean z3 = false;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = com.lenovo.lps.sus.c.c.aA;
        try {
            JSONObject jSONObject = new JSONObject(substring).getJSONObject(com.lenovo.lps.sus.c.c.x);
            if (jSONObject != null) {
                str10 = jSONObject.getString(com.lenovo.lps.sus.c.c.L);
            }
            if (com.lenovo.lps.sus.c.c.S.equals(str10)) {
                String string = jSONObject.getString(com.lenovo.lps.sus.c.c.C);
                String string2 = jSONObject.getString(com.lenovo.lps.sus.c.c.D);
                String string3 = jSONObject.getString(com.lenovo.lps.sus.c.c.E);
                String string4 = jSONObject.getString(com.lenovo.lps.sus.c.c.G);
                String string5 = jSONObject.getString(com.lenovo.lps.sus.c.c.H);
                String string6 = jSONObject.getString(com.lenovo.lps.sus.c.c.I);
                String string7 = jSONObject.getString(com.lenovo.lps.sus.c.c.B);
                String string8 = jSONObject.getString(com.lenovo.lps.sus.c.c.A);
                try {
                    str8 = jSONObject.getString(com.lenovo.lps.sus.c.c.J);
                } catch (JSONException e2) {
                }
                try {
                    str9 = jSONObject.getString(com.lenovo.lps.sus.c.c.K);
                } catch (JSONException e3) {
                }
                try {
                    str11 = jSONObject.getString(com.lenovo.lps.sus.c.c.F);
                } catch (JSONException e4) {
                }
                if (str11 != null && str11.length() > 0) {
                    if ("it_si_noprompt".equals(str11)) {
                        SUS.silentUpdateEnable();
                        com.lenovo.lps.sus.c.c.b(1);
                    } else if ("it_si_notification".equals(str11)) {
                        SUS.silentUpdateEnable();
                        com.lenovo.lps.sus.c.c.b(2);
                    } else if ("it_si_normal".equals(str11)) {
                        SUS.silentUpdateEnable();
                        com.lenovo.lps.sus.c.c.b(3);
                    } else if ("it_sdk_autocheck".equals(str11)) {
                        SUS.silentUpdateEnable();
                        com.lenovo.lps.sus.c.c.b(4);
                    }
                }
                if (string4 == null || string4.length() <= 0 || !com.lenovo.lps.sus.c.c.f(string4)) {
                    z3 = true;
                } else {
                    this.L = Long.valueOf(string4).longValue();
                }
                if (string == null || string.length() <= 0 || !com.lenovo.lps.sus.c.c.f(string)) {
                    z3 = true;
                }
                if (string8 == null || string8.length() <= 0 || !com.lenovo.lps.sus.c.c.f(string8)) {
                    z3 = true;
                } else {
                    this.l = string8;
                }
                if (str8 == null || str8.length() <= 0 || !com.lenovo.lps.sus.c.c.f(str8)) {
                    z3 = true;
                } else {
                    this.M = str8;
                }
                if (string2 == null || string2.length() < 0 || string3 == null || string3.length() <= 0 || string5 == null || string5.length() < 0 || string6 == null || string6.length() < 0 || str9 == null || str9.length() < 0 || str10 == null || str10.length() <= 0 || string7 == null || string7.length() <= 0) {
                    z3 = true;
                }
                this.I = URLDecoder.decode(string3);
                this.K = URLDecoder.decode(string6);
                String decode = URLDecoder.decode(string);
                str7 = URLDecoder.decode(string2);
                String decode2 = URLDecoder.decode(string5);
                String decode3 = URLDecoder.decode(str10);
                String decode4 = URLDecoder.decode(str9);
                String decode5 = URLDecoder.decode(string7);
                this.n = decode;
                this.o = str7;
                this.p = decode5;
                if (this.M != null && this.M.length() > 0 && com.lenovo.lps.sus.c.c.f(this.M)) {
                    if (com.lenovo.lps.sus.c.c.aK.equals(Integer.valueOf(Integer.valueOf(this.M).intValue() & com.lenovo.lps.sus.c.c.aK.intValue()))) {
                        com.lenovo.lps.sus.c.a.a(this.c, true);
                    } else {
                        com.lenovo.lps.sus.c.a.a(this.c, false);
                    }
                }
                if (this.M == null || this.M.length() <= 0 || !com.lenovo.lps.sus.c.c.f(this.M)) {
                    str2 = decode5;
                    str3 = decode3;
                    str4 = decode4;
                    str5 = decode2;
                    str6 = decode;
                    z2 = z3;
                } else if (com.lenovo.lps.sus.c.c.aJ.equals(Integer.valueOf(Integer.valueOf(this.M).intValue() & com.lenovo.lps.sus.c.c.aJ.intValue()))) {
                    str12 = com.lenovo.lps.sus.c.c.ay;
                    str2 = decode5;
                    str3 = decode3;
                    str4 = decode4;
                    str5 = decode2;
                    str6 = decode;
                    z2 = z3;
                } else {
                    str12 = com.lenovo.lps.sus.c.c.aA;
                    str2 = decode5;
                    str3 = decode3;
                    str4 = decode4;
                    str5 = decode2;
                    str6 = decode;
                    z2 = z3;
                }
            } else if (com.lenovo.lps.sus.c.c.T.equals(str10) || com.lenovo.lps.sus.c.c.U.equals(str10) || com.lenovo.lps.sus.c.c.V.equals(str10)) {
                str2 = null;
                str3 = str10;
                str4 = null;
                str5 = null;
                str6 = null;
                z2 = false;
            } else {
                str2 = null;
                str3 = str10;
                str4 = null;
                str5 = null;
                str6 = null;
                z2 = true;
            }
        } catch (JSONException e5) {
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
            z2 = true;
        }
        if (z2) {
            com.lenovo.lps.sus.c.a.a("ParamException:" + str);
            this.O = this.N;
            ae.b();
            if (this.O != null) {
                this.O.onUpdateNotification(EventType.SUS_QUERY_RESP, q());
                this.O = null;
                return;
            }
            return;
        }
        a aVar = new a(String.valueOf(this.g), this.h, str6, str7, this.I, Long.valueOf(this.L), str5, str3, str2, this.K, str12, str4);
        if (com.lenovo.lps.sus.c.c.S.equals(aVar.h())) {
            d h2 = h();
            int intValue = Integer.valueOf(str6).intValue();
            switch (v()[this.Y.ordinal()]) {
                case 1:
                    if (d.UPDATEACTION_NEWVERPROMPT == h2 && intValue <= i() && com.lenovo.lps.sus.c.c.d()) {
                        com.lenovo.lps.sus.c.a.a();
                        ae.b();
                        return;
                    }
            }
            if (d.UPDATEACTION_NEWVERPROMPT == h2 && intValue > i()) {
                a(d.UPDATEACTION_NORMAL.ordinal(), 0);
            }
        }
        if (this.N != null) {
            this.N.onUpdateNotification(EventType.SUS_QUERY_RESP, a(aVar));
        }
        switch (v()[this.Y.ordinal()]) {
            case 8:
            case 9:
                this.O = this.N;
                ae.b();
                return;
            default:
                if (com.lenovo.lps.sus.c.c.S.equals(aVar.h())) {
                    com.lenovo.lps.sus.c.a.c();
                    if (com.lenovo.lps.sus.c.c.x() || ae.g()) {
                        i.a(com.lenovo.lps.sus.c.c.b, "SilentInstall sendEvent SUS_UPDATEPROMPT_USER_CONFIRM");
                        a(EventType.SUS_UPDATEPROMPT_USER_CONFIRM);
                        return;
                    }
                    Message message = new Message();
                    if (this.d != null) {
                        message.what = b.a(b.SUS_UPDATE_PROMPT_EVENT);
                        message.obj = aVar;
                        this.d.sendMessage(message);
                        return;
                    }
                    return;
                } else if (com.lenovo.lps.sus.c.c.T.equals(aVar.h())) {
                    if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b3 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_LATESTVERSION")) != null && b3.length() > 0) {
                        Toast.makeText(this.c, b3, 1).show();
                    }
                    i.a(com.lenovo.lps.sus.c.c.b, com.lenovo.lps.sus.c.c.T);
                    ae.b();
                    return;
                } else {
                    if (com.lenovo.lps.sus.c.c.c() && !ae.f() && !ae.g() && this.c != null && (b2 = com.lenovo.lps.sus.c.c.b(this.c, "SUS_MSG_NOTFOUND")) != null && b2.length() > 0) {
                        Toast.makeText(this.c, b2, 1).show();
                    }
                    i.a(com.lenovo.lps.sus.c.c.b, com.lenovo.lps.sus.c.c.U);
                    ae.b();
                    return;
                }
        }
    }

    public void a(String str, long j2, long j3) {
        this.P = str;
        this.Q = j2;
        this.R = j3;
    }

    public void b() {
        if (this.J != null && this.J.exists() && this.K != null) {
            File file = new File(String.valueOf(this.J.toString()) + CookieSpec.PATH_DELIM + this.K);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public void c() {
        this.F = new z(this.d, this.E);
        if (this.F != null) {
            this.F.start();
        } else {
            i.b(com.lenovo.lps.sus.c.c.b, "myReqNewAppVersionThread == null!");
        }
    }

    public boolean d() {
        if (this.c == null) {
            i.b(com.lenovo.lps.sus.c.c.b, " null == myApplicationContext ");
            return false;
        }
        this.g = com.lenovo.lps.sus.c.c.e(this.c);
        if (this.g < 0) {
            System.out.println("VersionCode fail!");
            i.b(com.lenovo.lps.sus.c.c.b, "VersionCode fail!");
            return false;
        }
        this.h = com.lenovo.lps.sus.c.c.f(this.c);
        if (this.h == null || (this.h != null && this.h.length() == 0)) {
            System.out.println("VersionName is null!");
        }
        this.j = com.lenovo.lps.sus.c.c.a(this.c);
        if (this.j != null) {
            this.j.length();
        }
        this.q = com.lenovo.lps.sus.c.c.g(this.c);
        if (this.q == null || this.q.length() == 0) {
            System.out.println("PackageName fail!");
            i.b(com.lenovo.lps.sus.c.c.b, "PackageName fail!");
            return false;
        }
        String c2 = com.lenovo.lps.sus.c.c.c(this.c);
        this.k = com.lenovo.lps.sus.c.c.b(this.c);
        if (this.k == null || (this.k != null && this.k.length() == 0)) {
            this.k = c2;
        }
        if (this.k != null && this.k.length() > 0) {
            this.k = this.k.toLowerCase();
        }
        this.i = com.lenovo.lps.sus.c.c.h(this.c);
        if (this.i != null && this.i.length() != 0) {
            return true;
        }
        System.out.println("AppName fail!");
        i.b(com.lenovo.lps.sus.c.c.b, "AppName fail!");
        return false;
    }

    public boolean e() {
        this.z = com.lenovo.lps.sus.c.c.p(this.c);
        this.s = com.lenovo.lps.sus.c.c.q(this.c);
        this.t = com.lenovo.lps.sus.c.c.r(this.c);
        this.u = com.lenovo.lps.sus.c.c.l();
        this.v = com.lenovo.lps.sus.c.c.n();
        this.w = com.lenovo.lps.sus.c.c.o();
        this.x = com.lenovo.lps.sus.c.c.p();
        this.y = com.lenovo.lps.sus.c.c.q();
        this.A = com.lenovo.lps.sus.c.c.r();
        return true;
    }

    public String f() {
        this.G = com.lenovo.lps.sus.c.c.a(this.l, this.q, String.valueOf(this.n), this.o, this.p, null, null, null, null);
        return this.G;
    }

    public String g() {
        switch (v()[this.Y.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
                this.E = com.lenovo.lps.sus.c.c.a(2, this.i, this.q, String.valueOf(this.g), this.h, this.k, this.r, this.z, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.A);
                break;
            case 6:
                this.E = com.lenovo.lps.sus.c.c.b(1, this.i, this.j, String.valueOf(this.g), this.h, this.k, this.r, this.z, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.A);
                break;
            case 12:
                this.E = com.lenovo.lps.sus.c.c.W;
                break;
        }
        if (this.E == null || this.E.length() == 0) {
            System.out.println("ReqKey fail!");
            i.b(com.lenovo.lps.sus.c.c.b, "ReqKey fail!");
            return null;
        }
        i.a(com.lenovo.lps.sus.c.c.b, "myReqKey=" + this.E);
        return this.E;
    }

    public d h() {
        if (this.f == null) {
            this.f = new c();
            if (this.c != null) {
                SharedPreferences sharedPreferences = this.c.getSharedPreferences(com.lenovo.lps.sus.c.c.ad, 0);
                int i2 = sharedPreferences.getInt(com.lenovo.lps.sus.c.c.ae, 0);
                int i3 = sharedPreferences.getInt(com.lenovo.lps.sus.c.c.af, 0);
                this.f.a(i2);
                this.f.b(i3);
            }
        }
        return this.f.b();
    }

    public int i() {
        if (this.f == null) {
            return 0;
        }
        return this.f.c();
    }

    public String j() {
        return this.E;
    }

    public int k() {
        return this.g;
    }

    public String l() {
        return this.i;
    }

    public z m() {
        return this.F;
    }

    public void r() {
        X = new an(this.d);
        if (X != null) {
            X.start();
        } else {
            i.b(com.lenovo.lps.sus.c.c.b, "startTestSUSServerThread == null!");
        }
    }

    public boolean s() {
        if (this.c == null) {
            return false;
        }
        return new Date().after(new Date(this.c.getSharedPreferences(com.lenovo.lps.sus.c.c.ah, 0).getLong(com.lenovo.lps.sus.c.c.ai, 0) + 86400000));
    }

    public void t() {
        SharedPreferences.Editor edit = this.c.getSharedPreferences(com.lenovo.lps.sus.c.c.ah, 0).edit();
        edit.putLong(com.lenovo.lps.sus.c.c.ai, new Date().getTime());
        edit.commit();
    }

    public Context u() {
        return this.c;
    }
}
