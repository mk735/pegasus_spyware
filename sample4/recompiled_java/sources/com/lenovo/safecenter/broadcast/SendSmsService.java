package com.lenovo.safecenter.broadcast;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.provider.MultiSIMUtils;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import java.util.ArrayList;

public class SendSmsService extends Service {
    public static final String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    public static final String SENT_SMS_ACTION = "SENT_SMS_ACTION";
    static boolean a = false;
    static boolean b = false;
    static final Object c = new Object();
    private static ArrayList<PendingIntent> f = null;
    private static ArrayList<PendingIntent> g = null;
    private static PowerManager.WakeLock h = null;
    private String d;
    private String e;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(final Intent intent, int startId) {
        super.onStart(intent, startId);
        Log.i("test", "in the SendSmsService sendSMS");
        new Thread() {
            /* class com.lenovo.safecenter.broadcast.SendSmsService.AnonymousClass1 */

            public final void run() {
                SendSmsService.this.d = intent.getStringExtra(PushReceiver.PHONE_NUMBER);
                SendSmsService.this.e = intent.getStringExtra(DatabaseTables.LOG_MESSAGE);
                SendSmsService.this.sendSMS(SendSmsService.this.d, SendSmsService.this.e);
            }
        }.start();
    }

    public void sendSMS(String phoneNumber, String message) {
        Log.i("test", "in the SendSmsService sendSMS----Thread");
        if (MyMultiSIMUtils.isMultiSim(this)) {
            int[] states = MyMultiSIMUtils.getAllSimState(this);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                a = true;
            } else if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                b = true;
            }
            ArrayList<String> msgs = SmsManager.getDefault().divideMessage(message);
            f = new ArrayList<>();
            g = new ArrayList<>();
            PendingIntent sentPI = PendingIntent.getBroadcast(this, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI = PendingIntent.getBroadcast(this, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            f.add(sentPI);
            g.add(deliverPI);
            if (a) {
                Log.i("test", "sim1 ready send sms");
                try {
                    Thread.sleep(30000);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                beginStartingService(this);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
                MultiSIMUtils.getDefault(this).sendMultipartTextMessage(phoneNumber, (String) null, msgs, f, g, 0);
                sendMsgService.a++;
            } else if (b) {
                Log.i("test", "sim2 ready send sms");
                try {
                    Thread.sleep(30000);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                beginStartingService(this);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e5) {
                    e5.printStackTrace();
                }
                MultiSIMUtils.getDefault(this).sendMultipartTextMessage(phoneNumber, (String) null, msgs, f, g, 1);
                sendMsgService.a++;
            }
        } else {
            int state = ((TelephonyManager) getSystemService("phone")).getSimState();
            SmsManager sms = SmsManager.getDefault();
            ArrayList<String> msgs2 = sms.divideMessage(message);
            f = new ArrayList<>();
            g = new ArrayList<>();
            PendingIntent sentPI2 = PendingIntent.getBroadcast(this, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI2 = PendingIntent.getBroadcast(this, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            f.add(sentPI2);
            g.add(deliverPI2);
            if (state == 5) {
                try {
                    Thread.sleep(30000);
                } catch (InterruptedException e6) {
                    e6.printStackTrace();
                }
                beginStartingService(this);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e7) {
                    e7.printStackTrace();
                }
                sms.sendMultipartTextMessage(phoneNumber, null, msgs2, f, g);
                sendMsgService.b++;
            }
        }
        stopSelf();
    }

    public static void finishStartingService() {
        synchronized (c) {
            if (h != null) {
                h.release();
            }
        }
    }

    public static void beginStartingService(Context context) {
        synchronized (c) {
            if (h == null) {
                h = ((PowerManager) context.getSystemService("power")).newWakeLock(268435482, "StartingAlertService");
                h.setReferenceCounted(false);
            }
            h.acquire();
        }
    }

    public void onDestroy() {
        Log.i("test", "SendSmsService onDestroy");
        super.onDestroy();
    }
}
