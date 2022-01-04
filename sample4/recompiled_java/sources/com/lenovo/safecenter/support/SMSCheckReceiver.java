package com.lenovo.safecenter.support;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.Settings;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.MainTab.SMSNotifyActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.lenovo.safecenter.lenovoAntiSpam.domain.ContractHelpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SmsCheckUtils;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.net.support.Utils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.safemode.WhiteSms;
import com.lenovo.safecenter.safemode.WhiteSmsShowByNumber;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.Constant;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.cookie.CookiePolicy;

public class SMSCheckReceiver extends BroadcastReceiver {
    MediaPlayer a;
    private boolean b = false;
    private int c;
    private String d;
    private String e;
    private SharedPreferences f;
    private String g;
    private String h;
    private String i;
    private boolean j;
    private Context k;
    private Handler l = new Handler() {
        /* class com.lenovo.safecenter.support.SMSCheckReceiver.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    MyMultiSIMUtils.isLocked = true;
                    PreferenceManager.getDefaultSharedPreferences(SMSCheckReceiver.this.k).edit().putBoolean("locked", MyMultiSIMUtils.isLocked).commit();
                    MyUtils.lockedScreen(SMSCheckReceiver.this.k, (String) msg.obj);
                    return;
                case 2:
                    Log.d("test1", "kill : ");
                    new Thread() {
                        /* class com.lenovo.safecenter.support.SMSCheckReceiver.AnonymousClass1.AnonymousClass1 */

                        public final void run() {
                            List<ActivityManager.RunningAppProcessInfo> list = ((ActivityManager) SMSCheckReceiver.this.k.getSystemService("activity")).getRunningAppProcesses();
                            for (int i = 0; i < list.size(); i++) {
                                String pkg = list.get(i).pkgList[0];
                                if (pkg.equals("com.tencent.qqphonebook")) {
                                    Log.d("test1", "kill : " + pkg);
                                    CMDHelper.exeCmd(SMSCheckReceiver.this.k, "" + "kill " + list.get(i).pid + " &\n");
                                    return;
                                }
                            }
                        }
                    }.start();
                    return;
                case 3:
                    Log.i("TrafficCorrectCenter", "touch delau handler msg 3");
                    TrafficStatsService.setPluginPhoneNumberData(NetConstant.ERROR, SMSCheckReceiver.this.k);
                    return;
                default:
                    return;
            }
        }
    };

    /* JADX DEBUG: Multi-variable search result rejected for r29v0, resolved type: android.content.Intent */
    /* JADX DEBUG: Multi-variable search result rejected for r24v0, resolved type: java.lang.Object[] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1, types: [java.lang.Object[], java.io.Serializable] */
    public void onReceive(Context context, Intent intent) {
        boolean z;
        SmsMessage message;
        Log.i("con", "begin" + intent.getAction());
        Log.i("test", "SMSCheckReceiver onReceive");
        this.b = false;
        this.k = context;
        if (MyUtils.isLocked) {
            this.l.sendMessageDelayed(this.l.obtainMessage(2), 500);
        }
        StringBuilder msg = new StringBuilder();
        Object[] objArr = (Object[]) intent.getExtras().get("pdus");
        int len$ = objArr.length;
        for (int i$ = 0; i$ < len$; i$++) {
            Object[] objArr2 = objArr[i$];
            if (objArr2 != 0) {
                try {
                    Object bpdu = (byte[]) objArr2;
                    if (intent.getStringExtra("format") != null) {
                        Log.i("test", "sms format");
                        message = SmsMessage.createFromPdu(bpdu, intent.getStringExtra("format"));
                    } else {
                        message = SmsMessage.createFromPdu(bpdu);
                    }
                    this.d = message.getOriginatingAddress();
                    msg.append(message.getMessageBody());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
        this.e = msg.toString();
        Log.i("con", "begin" + intent.getAction());
        Log.i("test", "SMSCheckReceiver content" + this.e);
        SecurityService.beginTime = System.currentTimeMillis();
        if (this.d != null) {
            SharedPreferences sp = context.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
            String phoneNumber = sp.getString("phoneNumber", CookiePolicy.DEFAULT);
            Log.i("TrafficCorrectCenter", "@@phoneNumber = " + phoneNumber);
            if (this.d.equals(phoneNumber)) {
                Log.i("TrafficCorrectCenter", "touch send" + phoneNumber);
                Intent trafficCorrect = new Intent();
                trafficCorrect.setAction(NetConstant.RECEIVE_SMS_ACTION);
                if (intent.getStringExtra("format") != null) {
                    trafficCorrect.putExtra("format", intent.getStringExtra("format"));
                }
                trafficCorrect.putExtra("pdus", (Serializable) objArr);
                context.sendBroadcast(trafficCorrect);
                if ("10000".equals(phoneNumber) || "10001".equals(phoneNumber)) {
                    this.l.sendMessageDelayed(this.l.obtainMessage(3), NetConstant.SLEEP_SECONDS_TEN);
                } else {
                    sp.edit().putString("phoneNumber", NetConstant.ERROR).commit();
                }
                abortBroadcast();
                Log.i("TrafficCorrectCenter", "touch send @@!!!! editer" + sp.getString("phoneNumber", CookiePolicy.DEFAULT));
            }
            Contract con = DataHelpUtils.getContractModel(context, this.d);
            Log.i("con", con + "con====abortBroadcast();content+=" + this.e + "==" + this.d);
            String str = this.e;
            Log.i("test", "SMSCheckReceiver parseSMS");
            this.f = context.getSharedPreferences("antitheft", 0);
            this.g = PwdUtil.getPasswordWithJieMi(this.k);
            this.j = false;
            this.h = intent.getAction();
            this.i = Const.getSafeMail();
            SharedPreferences.Editor edit = this.f.edit();
            if (str.contains(context.getString(R.string.from_lesecurity))) {
                Log.e("ydp", "in fdhz!!!!!!!!!!!!!!");
                z = false;
            } else {
                if (this.g.length() != 0 && this.f.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false)) {
                    if ("".equals(Const.getSafeMail())) {
                        this.j = false;
                    } else {
                        this.j = true;
                    }
                    if (str.equalsIgnoreCase(this.g + "#ALL") || str.equalsIgnoreCase(this.g + "＃ALL")) {
                        abortBroadcast();
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        MyMultiSIMUtils.isAll = true;
                        edit.putBoolean("all", MyMultiSIMUtils.isAll).commit();
                        MyMultiSIMUtils.aganistTheftHandle(this.k, this.d, this.g, this.j, this.i, this.l);
                        z = false;
                    } else if (str.equalsIgnoreCase(this.g + "#XH") || str.equalsIgnoreCase(this.g + "＃XH")) {
                        abortBroadcast();
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        MyUtils.deleteBrowserRecord(this.k);
                        new Thread() {
                            /* class com.lenovo.safecenter.support.SMSCheckReceiver.AnonymousClass2 */

                            public final void run() {
                                MyMultiSIMUtils.destroyPrivacyMessage(SMSCheckReceiver.this.k, SMSCheckReceiver.this.d, SMSCheckReceiver.this.j, SMSCheckReceiver.this.i, SMSCheckReceiver.this.l);
                            }
                        }.start();
                        z = false;
                    } else if (str.equalsIgnoreCase(this.g + "#BF") || str.equalsIgnoreCase(this.g + "＃BF")) {
                        abortBroadcast();
                        Log.i("info", "in the BF");
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        new Thread() {
                            /* class com.lenovo.safecenter.support.SMSCheckReceiver.AnonymousClass3 */

                            public final void run() {
                                MyUtils.backupToMail(SMSCheckReceiver.this.k, SMSCheckReceiver.this.d, SMSCheckReceiver.this.i);
                            }
                        }.start();
                        z = false;
                    } else if (str.equalsIgnoreCase(this.g + "#SD") || str.equalsIgnoreCase(this.g + "＃SD")) {
                        abortBroadcast();
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        MyMultiSIMUtils.isLocked = true;
                        edit.putBoolean("locked", MyMultiSIMUtils.isLocked).commit();
                        MyUtils.lockedScreen(this.k, this.d);
                        z = false;
                    } else if (str.equalsIgnoreCase(this.g + "#BJ") || str.equalsIgnoreCase(this.g + "＃BJ")) {
                        abortBroadcast();
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        MyMultiSIMUtils.isAlarm = true;
                        edit.putBoolean("alarm", MyMultiSIMUtils.isAlarm).commit();
                        MyUtils.alarming(this.k);
                        z = false;
                    } else if (str.equalsIgnoreCase(this.g + "#DW") || str.equalsIgnoreCase(this.g + "＃DW")) {
                        abortBroadcast();
                        Log.i("test", "in the DW");
                        if (this.h.equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                            a(intent);
                        }
                        new Thread() {
                            /* class com.lenovo.safecenter.support.SMSCheckReceiver.AnonymousClass4 */

                            public final void run() {
                                MyMultiSIMUtils.location(SMSCheckReceiver.this.k, SMSCheckReceiver.this.d);
                            }
                        }.start();
                        z = false;
                    }
                }
                z = true;
            }
            if (!z) {
                return;
            }
            if (con != null) {
                Log.i("con", this.d + ":insert con");
                abortBroadcast();
                con.setSmstype(1);
                con.setSmsContent(this.e);
                con.setDate(String.valueOf(System.currentTimeMillis()));
                con.setIsRead(1);
                new AppDatabase(context).insertSms(con);
                if (!DataHelpUtils.getHarssAction(context, "sms_mode").equals("0")) {
                    showNotify(context);
                }
                if (intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
                    a(intent);
                }
                if (DataHelpUtils.getActivityByName("WhiteSmsShowByNumber") != null) {
                    Message mes = new Message();
                    mes.what = 1;
                    mes.getData().putString(AppDatabase.NUMBER, con.getPhoneNumber());
                    ((WhiteSmsShowByNumber) DataHelpUtils.getActivityByName("WhiteSmsShowByNumber")).hand.sendMessage(mes);
                } else if (DataHelpUtils.getActivityByName("WhiteSms") != null) {
                    ((WhiteSms) DataHelpUtils.getActivityByName("WhiteSms")).hand.sendEmptyMessage(1);
                }
            } else {
                try {
                    if (!Const.getProtectHarassSwitchState()) {
                        a(context, this.d, this.e);
                        return;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (!this.b) {
                    Log.i("con", this.d + ":insert isIntercept");
                    if (isIntercept(context, this.d)) {
                        abortBroadcast();
                        this.c = 1;
                        sendBroadcast(context, this.d, this.e, String.valueOf(System.currentTimeMillis()), intent);
                        this.b = true;
                    }
                }
                if (!this.b) {
                    Log.i("con", this.d + ":insert W_number");
                    List<String> W_number = new ArrayList<>();
                    W_number.add("106575010089");
                    W_number.add("1065502182065130251");
                    W_number.add("106590210098");
                    W_number.add("106901166913");
                    W_number.add("10690999126186");
                    W_number.add("10690999126197");
                    W_number.add("10690999126198");
                    W_number.add("10655198000");
                    W_number.add("10655198666");
                    if (this.d.startsWith("6") && this.d.length() >= 3 && this.d.length() <= 6) {
                        a(context, this.d, this.e);
                        W_number.clear();
                    } else if (W_number.contains(this.d) || this.d.startsWith("1891086") || this.d.startsWith("+861891086") || this.d.startsWith("1891177") || this.d.startsWith("+861891177") || this.d.startsWith("10655198")) {
                        a(context, this.d, this.e);
                        W_number.clear();
                    } else {
                        W_number.clear();
                        ContractHelpUtils untils = new ContractHelpUtils();
                        if (CheckCenter.isNetBlack(context, 3, this.d)) {
                            a(context, this.d, this.e);
                            return;
                        }
                        boolean isExistCon = untils.isInContactsdia(context, this.d);
                        if (isExistCon) {
                            a(context, this.d, this.e);
                            return;
                        }
                        boolean isExistWhtieSMS = untils.isInSmsdia(context, this.d);
                        Log.i("con", this.d + ":insert isExistWhtieSMS");
                        if (isExistWhtieSMS) {
                            a(context, this.d, this.e);
                        } else if (isWhitePerson(context, this.d)) {
                            a(context, this.d, this.e);
                        } else {
                            if (!isExistCon) {
                                try {
                                    if (CheckCenter.getHarssAction(context, "openintellectharass") && Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0) != 1) {
                                        Log.i("con", this.d + ":insert openintellectharass");
                                        if (this.e.contains("lezhuli.com")) {
                                            return;
                                        }
                                        if (SmsCheckUtils.checkSmsAction(context, this.d, this.e)) {
                                            Log.i("con", this.d + ":insert openintellectharass");
                                            this.c = 3;
                                            sendBroadcast(context, this.d, this.e, String.valueOf(System.currentTimeMillis()), intent);
                                            abortBroadcast();
                                            this.b = true;
                                        }
                                    }
                                    if (!this.b && CheckCenter.isNetBlack(context, 0, this.d)) {
                                        Log.i("con", this.d + ":insert isNetBlack");
                                        this.c = 3;
                                        sendBroadcast(context, this.d, this.e, String.valueOf(System.currentTimeMillis()), intent);
                                        abortBroadcast();
                                        this.b = true;
                                    }
                                } catch (Error e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (!this.b) {
                                a(context, this.d, this.e);
                            }
                            Log.i("con", this.d + ":insert out");
                        }
                    }
                }
            }
        }
    }

    private void a(Context context, String address, String content) {
        if (Settings.System.getInt(context.getContentResolver(), "guest_mode_on", 0) == 1) {
            abortBroadcast();
            ContentValues values = new ContentValues();
            values.put("address", address);
            values.put("date", String.valueOf(System.currentTimeMillis()));
            values.put(PushReceiver.READ, (Integer) 0);
            values.put("status", (Integer) -1);
            values.put("type", (Integer) 1);
            values.put(PushReceiver.BODY, content);
            context.getContentResolver().insert(Uri.parse("content://sms"), values);
        }
    }

    public boolean isIncallList(Context act, String number) {
        String[] projection = {AppDatabase.NUMBER, "name", "date", "type"};
        Cursor cursor = act.getContentResolver().query(CallLog.Calls.CONTENT_URI, projection, "PHONE_NUMBERS_EQUAL(number,'" + number + "',0) and type=?", new String[]{String.valueOf(1)}, null);
        boolean isInCall = false;
        if (cursor.getCount() > 0) {
            isInCall = true;
        }
        cursor.close();
        return isInCall;
    }

    public boolean isIntercept(Context context, String number) {
        int mode = Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0);
        ContractHelpUtils untils = new ContractHelpUtils();
        if (mode == 2 && (!untils.isInContactsdia(context, number) || CheckCenter.isLocalBlack(context, 0, number))) {
            return true;
        }
        if (mode == 0 || mode == 1) {
            if (CheckCenter.isLocalBlack(context, 0, number)) {
                return true;
            }
        } else if (mode == 3 && !isWhitePerson(context, number)) {
            return true;
        }
        return false;
    }

    public boolean isWhitePerson(Context context, String number) {
        try {
            Cursor cursor = context.getContentResolver().query(Uri.parse("content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"), null, "PHONE_NUMBERS_EQUAL(phonenumber,'" + number + "',0) ", null, null);
            int count = cursor.getCount();
            cursor.close();
            if (count > 0) {
                return true;
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public void sendBroadcast(Context context, String address, String content, String time, Intent simIntent) {
        Intent intent = new Intent();
        intent.putExtra("black_address", address);
        intent.putExtra("black_body", content);
        intent.putExtra("black_date", time);
        intent.putExtra("fromtype", Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0) + 6);
        intent.setAction("ACTION_BLACK_MESSAGE");
        context.sendBroadcast(intent);
        if (simIntent.getAction().equals("android.provider.Telephony.SMS_RECEIVED_ON_SIM")) {
            a(simIntent);
        }
    }

    public void showNotify(Context context) {
        String title;
        NotificationManager manager = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        Intent mIntent = new Intent(context, SMSNotifyActivity.class);
        mIntent.putExtra("Type", SofeModeMain.TS_SMS);
        mIntent.putExtra("style", Constant.SMS_NOTI_ID);
        mIntent.setFlags(536870912);
        PendingIntent intent = PendingIntent.getActivity(context, 0, mIntent, 0);
        if (DataHelpUtils.execService("smsnotifytitle", context).equals("")) {
            title = context.getString(R.string.newsms);
        } else {
            title = DataHelpUtils.execService("smsnotifytitle", context);
        }
        int resId = R.drawable.smsnotify_show;
        if (DataHelpUtils.execService("changesmsimg", context).equals(DatabaseTables.SYSTEM_MARK)) {
            resId = R.drawable.notify_hide;
        }
        Notification mNotification = new Notification(resId, "", System.currentTimeMillis());
        if (!DataHelpUtils.getHarssAction(context, "sms_mode").equals(DatabaseTables.SYSTEM_MARK)) {
            if (DataHelpUtils.getHarssAction(context, "sms_mode").equals(DatabaseTables.USER_MARK)) {
                if (this.a == null || !this.a.isPlaying()) {
                    this.a = MediaPlayer.create(context, (int) R.raw.sms);
                    this.a.start();
                }
            } else if (DataHelpUtils.getHarssAction(context, "sms_mode").equals("3")) {
                ((Vibrator) context.getApplicationContext().getSystemService(SettingUtil.TOUCH_VIBRATOR)).vibrate(new long[]{100, 10, 100, 1000}, -1);
            }
        }
        mNotification.setLatestEventInfo(context, title, null, intent);
        manager.notify(Constant.SMS_NOTI_ID, mNotification);
    }

    private static void a(Intent intent) {
        try {
            SmsManager smsManager = SmsManager.getDefault();
            if (intent.getExtras() != null) {
                smsManager.deleteMessageFromIcc(Integer.parseInt(intent.getExtras().getString("index")));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
