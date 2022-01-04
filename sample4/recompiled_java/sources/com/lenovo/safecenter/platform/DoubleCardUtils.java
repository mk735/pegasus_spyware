package com.lenovo.safecenter.platform;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.MultiSIMUtils;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;
import com.android.internal.statusbar.IStatusBarService;
import com.lenovo.safecenter.R;
import java.util.ArrayList;

public class DoubleCardUtils {
    public static final String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    public static final String SENT_SMS_ACTION = "SENT_SMS_ACTION";
    static boolean a = false;
    static boolean b = false;
    static final Object c = new Object();
    private static ArrayList<PendingIntent> d = null;
    private static ArrayList<PendingIntent> e = null;
    private static BroadcastReceiver f = null;
    private static int g = 0;
    private static int h = 0;
    private static int i = 0;
    public static boolean info;
    public static boolean isAlarm;
    public static boolean isAll;
    public static boolean isDestroy;
    public static boolean isLocate;
    public static boolean isLocked;
    private static PowerManager.WakeLock j = null;
    public static double lat;
    public static double lon;

    static /* synthetic */ int e() {
        int i2 = h;
        h = i2 + 1;
        return i2;
    }

    static /* synthetic */ int g() {
        int i2 = i;
        i = i2 + 1;
        return i2;
    }

    static /* synthetic */ int i() {
        int i2 = g;
        g = i2 + 1;
        return i2;
    }

    public static void cleanNotifications() {
        try {
            IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar")).onClearAllNotifications();
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    public static void beginStartingService(Context context) {
        synchronized (c) {
            if (j == null) {
                j = ((PowerManager) context.getSystemService("power")).newWakeLock(268435482, "StartingAlertService");
                j.setReferenceCounted(false);
            }
            j.acquire();
        }
    }

    public static void finishStartingService() {
        synchronized (c) {
            if (j != null) {
                j.release();
            }
        }
    }

    public static void sendSMS(final Context context, final String phoneNumber, String message) {
        Log.i("test", "in the sendSMS");
        if (MyMultiSIMUtils.isMultiSim(context)) {
            int[] states = MyMultiSIMUtils.getAllSimState(context);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                a = true;
            } else if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                b = true;
            }
            Log.d("test", "sendSMS simState0: " + states[0] + " simState1: " + states[1]);
            final ArrayList<String> msgs = SmsManager.getDefault().divideMessage(message);
            d = new ArrayList<>();
            e = new ArrayList<>();
            PendingIntent sentPI = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            d.add(sentPI);
            e.add(deliverPI);
            f = new BroadcastReceiver() {
                /* class com.lenovo.safecenter.platform.DoubleCardUtils.AnonymousClass1 */

                public final void onReceive(Context _context, Intent _intent) {
                    int code = getResultCode();
                    Log.d("test", "code: " + code);
                    switch (code) {
                        case -1:
                            Log.d("test", context.getString(R.string.sendsms_success));
                            _context.unregisterReceiver(DoubleCardUtils.f);
                            DoubleCardUtils.finishStartingService();
                            return;
                        case 0:
                        default:
                            return;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            if (DoubleCardUtils.a && DoubleCardUtils.h <= 3) {
                                try {
                                    Thread.sleep(30000);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                DoubleCardUtils.beginStartingService(context);
                                try {
                                    Thread.sleep(5000);
                                } catch (InterruptedException e2) {
                                    e2.printStackTrace();
                                }
                                Log.d("test", "card1 sendSMS");
                                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, DoubleCardUtils.d, DoubleCardUtils.e, 0);
                                DoubleCardUtils.e();
                                return;
                            } else if (DoubleCardUtils.b && DoubleCardUtils.i <= 3) {
                                try {
                                    Thread.sleep(30000);
                                } catch (InterruptedException e3) {
                                    e3.printStackTrace();
                                }
                                DoubleCardUtils.beginStartingService(context);
                                try {
                                    Thread.sleep(5000);
                                } catch (InterruptedException e4) {
                                    e4.printStackTrace();
                                }
                                Log.d("test", "card2 sendSMS");
                                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, DoubleCardUtils.d, DoubleCardUtils.e, 1);
                                DoubleCardUtils.g();
                                return;
                            } else {
                                return;
                            }
                    }
                }
            };
            context.registerReceiver(f, new IntentFilter("SENT_SMS_ACTION"));
            if (a) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, d, e, 0);
                h++;
            } else if (b) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, d, e, 1);
                i++;
            }
        } else {
            int state = ((TelephonyManager) context.getSystemService("phone")).getSimState();
            final SmsManager sms = SmsManager.getDefault();
            final ArrayList<String> msgs2 = sms.divideMessage(message);
            d = new ArrayList<>();
            e = new ArrayList<>();
            PendingIntent sentPI2 = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI2 = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            d.add(sentPI2);
            e.add(deliverPI2);
            f = new BroadcastReceiver() {
                /* class com.lenovo.safecenter.platform.DoubleCardUtils.AnonymousClass2 */

                public final void onReceive(Context _context, Intent _intent) {
                    int code = getResultCode();
                    Log.d("test", "code: " + code);
                    switch (code) {
                        case -1:
                            Log.d("test", context.getString(R.string.sendsms_success));
                            _context.unregisterReceiver(DoubleCardUtils.f);
                            DoubleCardUtils.finishStartingService();
                            return;
                        case 0:
                        default:
                            return;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            if (DoubleCardUtils.g <= 3) {
                                try {
                                    Thread.sleep(60000);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                DoubleCardUtils.beginStartingService(context);
                                try {
                                    Thread.sleep(5000);
                                } catch (InterruptedException e2) {
                                    e2.printStackTrace();
                                }
                                sms.sendMultipartTextMessage(phoneNumber, null, msgs2, DoubleCardUtils.d, DoubleCardUtils.e);
                                DoubleCardUtils.i();
                                return;
                            }
                            return;
                    }
                }
            };
            context.registerReceiver(f, new IntentFilter("SENT_SMS_ACTION"));
            if (state == 5) {
                beginStartingService(context);
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                sms.sendMultipartTextMessage(phoneNumber, null, msgs2, d, e);
                g++;
            }
        }
    }

    public static void sendMessage(Context context, String phoneNumber, String message, boolean isInfo) {
        info = isInfo;
        Log.i("test", "in the sendmessage info:" + isInfo);
        if (MyMultiSIMUtils.isMultiSim(context)) {
            SmsManager sms = SmsManager.getDefault();
            PendingIntent sentPI = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            ArrayList<String> msgs = sms.divideMessage(message);
            ArrayList<PendingIntent> sentIntents = new ArrayList<>();
            sentIntents.add(sentPI);
            ArrayList<PendingIntent> deliveryIntents = new ArrayList<>();
            deliveryIntents.add(deliverPI);
            int[] states = MyMultiSIMUtils.getAllSimState(context);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 0);
            } else if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 1);
            } else {
                Toast.makeText(context, context.getString(R.string.net_notavilable), 0).show();
            }
        } else {
            int state = ((TelephonyManager) context.getSystemService("phone")).getSimState();
            SmsManager sms2 = SmsManager.getDefault();
            PendingIntent sentPI2 = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI2 = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            ArrayList<String> msgs2 = sms2.divideMessage(message);
            ArrayList<PendingIntent> sentIntents2 = new ArrayList<>();
            sentIntents2.add(sentPI2);
            ArrayList<PendingIntent> deliveryIntents2 = new ArrayList<>();
            deliveryIntents2.add(deliverPI2);
            if (state == 5) {
                sms2.sendMultipartTextMessage(phoneNumber, null, msgs2, sentIntents2, deliveryIntents2);
            } else {
                Toast.makeText(context, context.getString(R.string.net_notavilable), 0).show();
            }
        }
    }

    public static void privateSendMessage(Context context, String phoneNumber, String message, boolean isInfo, int simCardNum) {
        info = isInfo;
        Log.i("test", "in the sendmessage info:" + isInfo);
        if (MyMultiSIMUtils.isMultiSim(context)) {
            SmsManager sms = SmsManager.getDefault();
            PendingIntent sentPI = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            ArrayList<String> msgs = sms.divideMessage(message);
            ArrayList<PendingIntent> sentIntents = new ArrayList<>();
            sentIntents.add(sentPI);
            ArrayList<PendingIntent> deliveryIntents = new ArrayList<>();
            deliveryIntents.add(deliverPI);
            int[] states = MyMultiSIMUtils.getAllSimState(context);
            if (simCardNum == 0) {
                if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                    MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 0);
                } else {
                    Toast.makeText(context, context.getString(R.string.net_notavilable), 0).show();
                }
            } else if (simCardNum != 1) {
            } else {
                if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                    MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 1);
                } else {
                    Toast.makeText(context, context.getString(R.string.net_notavilable), 0).show();
                }
            }
        } else {
            int state = ((TelephonyManager) context.getSystemService("phone")).getSimState();
            SmsManager sms2 = SmsManager.getDefault();
            PendingIntent sentPI2 = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
            PendingIntent deliverPI2 = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
            ArrayList<String> msgs2 = sms2.divideMessage(message);
            ArrayList<PendingIntent> sentIntents2 = new ArrayList<>();
            sentIntents2.add(sentPI2);
            ArrayList<PendingIntent> deliveryIntents2 = new ArrayList<>();
            deliveryIntents2.add(deliverPI2);
            if (state == 5) {
                sms2.sendMultipartTextMessage(phoneNumber, null, msgs2, sentIntents2, deliveryIntents2);
            } else {
                Toast.makeText(context, context.getString(R.string.net_notavilable), 0).show();
            }
        }
    }

    public static void sendInfoMessage(Context context, String phoneNumber, String message, boolean isInfo) {
        info = isInfo;
        SmsManager sms = SmsManager.getDefault();
        PendingIntent sentPI = PendingIntent.getBroadcast(context, 0, new Intent("SENT_SMS_ACTION"), 0);
        PendingIntent deliverPI = PendingIntent.getBroadcast(context, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
        ArrayList<String> msgs = sms.divideMessage(message);
        ArrayList<PendingIntent> sentIntents = new ArrayList<>();
        sentIntents.add(sentPI);
        ArrayList<PendingIntent> deliveryIntents = new ArrayList<>();
        deliveryIntents.add(deliverPI);
        if (MyMultiSIMUtils.isMultiSim(context)) {
            int[] states = MyMultiSIMUtils.getAllSimState(context);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 0);
            } else if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                MultiSIMUtils.getDefault(context).sendMultipartTextMessage(phoneNumber, (String) null, msgs, sentIntents, deliveryIntents, 1);
            }
        } else {
            sms.sendMultipartTextMessage(phoneNumber, null, msgs, sentIntents, deliveryIntents);
        }
    }
}
