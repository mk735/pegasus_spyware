package com.lenovo.safecenter.broadcast;

import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.PowerManager;
import android.provider.MultiSIMUtils;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.DoubleCardUtils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.PwdUtil;
import java.util.ArrayList;

public class sendMsgService extends Service {
    public static final String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    public static final String SENT_SMS_ACTION = "SENT_SMS_ACTION";
    static int a = 0;
    static int b = 0;
    static final Object c = new Object();
    static boolean d = false;
    static boolean e = false;
    private static ArrayList<PendingIntent> i = null;
    private static ArrayList<PendingIntent> j = null;
    private static BroadcastReceiver k = null;
    private static PowerManager.WakeLock l = null;
    private int f;
    private String g;
    private String h;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(final Intent intent, int startId) {
        super.onStart(intent, startId);
        if (intent != null) {
            this.f = intent.getIntExtra("type", 0);
            new Thread() {
                /* class com.lenovo.safecenter.broadcast.sendMsgService.AnonymousClass1 */

                public final void run() {
                    try {
                        sendMsgService.this.g = intent.getStringExtra(PushReceiver.PHONE_NUMBER);
                        sendMsgService.this.h = intent.getStringExtra(DatabaseTables.LOG_MESSAGE);
                        Log.e("test", "phoneNumber: " + sendMsgService.this.g + " smsMessage: " + sendMsgService.this.h);
                        if (sendMsgService.this.g != null && sendMsgService.this.g.length() != 0) {
                            if (sendMsgService.this.f > 0) {
                                sendMsgService.this.sendSMS(sendMsgService.this, sendMsgService.this.g, sendMsgService.this.h);
                            } else {
                                DoubleCardUtils.sendMessage(sendMsgService.this, sendMsgService.this.g, sendMsgService.this.h, false);
                            }
                            Const.isTariff = false;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }.start();
            if (this.f <= 0) {
                Log.i("test", "type <= 0");
                stopSelf();
            }
        }
    }

    public void sendSMS(final Context context, final String phoneNumber, String message) {
        Log.i("test", "in the sendSMS");
        if (MyMultiSIMUtils.isMultiSim(context)) {
            int[] states = MyMultiSIMUtils.getAllSimState(context);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                d = true;
            } else if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                e = true;
            }
            Log.d("test", "sendSMS simState0: " + states[0] + " simState1: " + states[1]);
            ArrayList<String> msgs = SmsManager.getDefault().divideMessage(message);
            i = new ArrayList<>();
            j = new ArrayList<>();
            PendingIntent sentPI = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            i.add(sentPI);
            j.add(deliverPI);
            k = new BroadcastReceiver() {
                /* class com.lenovo.safecenter.broadcast.sendMsgService.AnonymousClass2 */

                public final void onReceive(Context _context, Intent _intent) {
                    int code = getResultCode();
                    Log.d("test", "code: " + code);
                    switch (code) {
                        case -1:
                            Log.d("test", context.getString(R.string.sendsms_success));
                            _context.unregisterReceiver(sendMsgService.k);
                            sendMsgService.finishStartingService();
                            sendMsgService.this.stopSelf();
                            return;
                        case 0:
                        default:
                            return;
                        case 1:
                            Log.d("test", "SMS generic failure actions");
                            return;
                        case 2:
                            Log.d("test", "SMS radio off failure actions");
                            return;
                        case 3:
                            Log.d("test", "SMS null PDU failure actions");
                            if (sendMsgService.a <= 3) {
                                sendMsgService.this.sendSMS(phoneNumber);
                                return;
                            }
                            return;
                        case 4:
                            Log.d("test", context.getString(R.string.sendsms_no_service));
                            return;
                    }
                }
            };
            context.registerReceiver(k, new IntentFilter("SENT_SMS_ACTION"));
            if (d) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, i, j, 0);
                a++;
            } else if (e) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, i, j, 1);
                a++;
            }
        } else {
            int state = ((TelephonyManager) context.getSystemService("phone")).getSimState();
            SmsManager sms = SmsManager.getDefault();
            ArrayList<String> msgs2 = sms.divideMessage(message);
            i = new ArrayList<>();
            j = new ArrayList<>();
            PendingIntent sentPI2 = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI2 = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            i.add(sentPI2);
            j.add(deliverPI2);
            k = new BroadcastReceiver() {
                /* class com.lenovo.safecenter.broadcast.sendMsgService.AnonymousClass3 */

                public final void onReceive(Context _context, Intent _intent) {
                    int code = getResultCode();
                    Log.d("test", "code: " + code);
                    switch (code) {
                        case -1:
                            Log.d("test", context.getString(R.string.sendsms_success));
                            _context.unregisterReceiver(sendMsgService.k);
                            sendMsgService.finishStartingService();
                            sendMsgService.this.stopSelf();
                            return;
                        case 0:
                        default:
                            return;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            if (sendMsgService.b <= 3) {
                                sendMsgService.this.sendSMS(phoneNumber);
                                sendMsgService.b++;
                                return;
                            }
                            return;
                    }
                }
            };
            context.registerReceiver(k, new IntentFilter("SENT_SMS_ACTION"));
            if (state == 5) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                sms.sendMultipartTextMessage(phoneNumber, null, msgs2, i, j);
                b++;
            }
        }
    }

    public static void finishStartingService() {
        synchronized (c) {
            if (l != null) {
                l.release();
            }
        }
    }

    public static void beginStartingService(Context context) {
        synchronized (c) {
            if (l == null) {
                l = ((PowerManager) context.getSystemService("power")).newWakeLock(268435482, "StartingAlertService");
                l.setReferenceCounted(false);
            }
            l.acquire();
        }
    }

    public void sendSMS(String safeNumber) {
        Log.i("test", "sendMSG sendSMS:" + a);
        Intent it = new Intent(this, SendSmsService.class);
        it.putExtra(PushReceiver.PHONE_NUMBER, safeNumber);
        it.putExtra(DatabaseTables.LOG_MESSAGE, getString(R.string.simSerialNumber_changed) + PwdUtil.getPasswordWithJieMi(getApplicationContext()) + getString(R.string.command_content));
        startService(it);
    }

    public void onDestroy() {
        Log.i("test", "sendMsgService onDestroy");
        super.onDestroy();
    }
}
