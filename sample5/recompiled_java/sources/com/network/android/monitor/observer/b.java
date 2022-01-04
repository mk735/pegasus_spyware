package com.network.android.monitor.observer;

import android.content.ContentResolver;
import android.database.Cursor;
import com.network.a.a;

final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ContentResolver f87a;
    final /* synthetic */ a b;

    b(a aVar, ContentResolver contentResolver) {
        this.b = aVar;
        this.f87a = contentResolver;
    }

    public final void run() {
        String str;
        Cursor a2 = a.a(this.f87a);
        try {
            com.network.android.c.a.a.a("AndroidCalendarWatcher Map Calendar start:" + a2.getCount());
            if (a2 == null) {
                if (a2 == null || a2.isClosed()) {
                    str = "AndroidCalendarWatcher  readCalendar finally - cursor was closed";
                    com.network.android.c.a.a.b(str);
                    return;
                }
                a2.close();
            }
            if (a2.getCount() > 0) {
                int i = 0;
                while (a2.moveToNext()) {
                    int i2 = i + 1;
                    try {
                        if (i2 % 100 == 0) {
                            com.network.android.c.a.a.a("AndroidCalendarWatcher readCalendar  start sleep chank: " + i2);
                            Thread.sleep(3);
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        a.a(a2, stringBuffer);
                        String string = a2.getString(4);
                        int i3 = a2.getInt(7);
                        com.network.android.c.a.a.a("AndroidCalendarWatcher Map Calendar position:" + a2.getPosition() + " isDeleted: " + i3);
                        if (i3 == 0) {
                            this.b.h.put(string, Integer.valueOf(stringBuffer.toString().hashCode()));
                        }
                        i = i2;
                    } catch (Throwable th) {
                        com.network.android.c.a.a.a("AndroidCalendarWatcher  start postDelayed Exception- " + th.getMessage(), th);
                        i = i2;
                    }
                }
            }
            com.network.android.c.a.a.a("AndroidCalendarWatcher  Map Calendar end");
            this.b.i = true;
            if (a2 == null || a2.isClosed()) {
                str = "AndroidCalendarWatcher  readCalendar finally - cursor was closed";
                com.network.android.c.a.a.b(str);
                return;
            }
            a2.close();
        } catch (Throwable th2) {
            if (a2 == null || a2.isClosed()) {
                com.network.android.c.a.a.b("AndroidCalendarWatcher  readCalendar finally - cursor was closed");
            } else {
                a2.close();
            }
            throw th2;
        }
    }
}
