package com.lenovo.safecenter.support;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.MultiSIMUtils;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.Toast;
import com.android.internal.telephony.ITelephony;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.AppsManager.AntiTappingActivity;
import com.lenovo.safecenter.Laboratory.MyProcessObserver;
import com.lenovo.safecenter.MainTab.CallNotifyActivity;
import com.lenovo.safecenter.MainTab.SplashActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.floatwindow.util.Constants;
import com.lenovo.safecenter.floatwindow.view.FlowIcon;
import com.lenovo.safecenter.lenovoAntiSpam.database.NetAppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import com.lenovo.safecenter.lenovoAntiSpam.newview.FirstSignActivity;
import com.lenovo.safecenter.lenovoAntiSpam.newview.ShowConfirm;
import com.lenovo.safecenter.lenovoAntiSpam.support.SMSCheckReceiver;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.net.support.Utils;
import com.lenovo.safecenter.platform.DoubleCardUtils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.safemode.WhiteCall;
import com.lenovo.safecenter.utils.AlarmManageUtils;
import com.lenovo.safecenter.utils.AppCheck;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.Constant;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.SafeCenter;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.CorrectionDataInfo;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionManager;
import com.tencent.tmsecure.module.network.TrafficCorrectionResult;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SecurityService extends TMSService {
    public static final String ACTION = "com.lenovo.safecenter.traffic.correction";
    public static final String DELIVERED_SMS_ACTION = "DELIVERED_SMS_ACTION";
    private static final Class[] E = {Integer.TYPE, Notification.class};
    private static final Class[] F = {Boolean.TYPE};
    public static final int MSG_RECEIVED_SMS = 1;
    private static long P = 0;
    public static final String SENT_SMS_ACTION = "SENT_SMS_ACTION";
    public static final String TAG = "TrafficCorrectPlugin";
    public static final Object Virus_lock = new Object();
    public static long beginTime = System.currentTimeMillis();
    public static TrafficCorrectionConfig config;
    static final String[] h = {"_id", AppDatabase.NUMBER, "date", "duration", "type", "new", "name"};
    public static SecurityService instance;
    public static boolean isRinging = false;
    public static List<String> localBlackPerson = new ArrayList();
    public static final Object lock = new Object();
    public static String message;
    public static List<String> netBlackPerson = new ArrayList();
    public static String phoneNumber;
    public static List<String> secutityPerson = new ArrayList();
    public static Map<String, String[]> sil;
    public static List<String> whitePerson = new ArrayList();
    private Handler A = new e(this, (byte) 0);
    private c B = new c(this, (byte) 0);
    private d C = new d(this, (byte) 0);
    private BroadcastReceiver D = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass1 */

        public final void onReceive(Context context, Intent intent) {
            TrafficStatsService.statsTrafficMobileInLimit(context);
        }
    };
    private Method G;
    private Method H;
    private Object[] I = new Object[2];
    private Object[] J = new Object[1];
    private long K = 0;
    private ArrayList<CallInfo> L = new ArrayList<>();
    private LocationManager M;
    private NetAppDatabase N;
    private boolean O;
    private BroadcastReceiver Q = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass5 */

        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.net.conn.CONNECTIVITY_CHANGE") && SaveData.get_flow_status(SecurityService.this)) {
                SecurityService.this.x = (ConnectivityManager) SecurityService.this.getSystemService("connectivity");
                NetworkInfo info = SecurityService.this.x.getActiveNetworkInfo();
                if (info == null || !info.isAvailable()) {
                    SecurityService.this.setFlowVisibility(8);
                } else {
                    SecurityService.this.setFlowVisibility(0);
                    if (SaveData.get_flow_immove_state(SecurityService.this)) {
                        SecurityService.this.setFlowIsFixed(true);
                    } else {
                        SecurityService.this.setFlowIsFixed(false);
                    }
                }
            }
            if ("android.intent.action.DATA_DEFAULT_SIM".equals(action)) {
                long longExtra = intent.getLongExtra("simid", 0);
                if (longExtra != 0) {
                    SharedPreferences.Editor edit = context.getSharedPreferences(Constants.DATASUBSCRIBERID, 32768).edit();
                    edit.putLong(Constants.DATASUBSCRIBERID, longExtra);
                    edit.commit();
                }
            }
        }
    };
    private TrafficCorrectionManager R;
    private SmsEntity S;
    private String T;
    private MultiSIMUtils U;
    private SmsManager V;
    private boolean W = false;
    private PendingIntent X;
    private PendingIntent Y;
    ITelephony a;
    AudioManager b;
    MMSReceiver c;
    TelephonyManager d;
    public DaoImpl di;
    CallLogObserver e = new CallLogObserver(new Handler());
    a f = new a(this, (byte) 0);
    b g = new b(this, (byte) 0);
    OutCallReceiver i = new OutCallReceiver();
    ArrayList<CorrectionDataInfo> j = new ArrayList<>();
    ArrayList<Integer> k = new ArrayList<>();
    IncomingSMSReceiver l = new IncomingSMSReceiver();
    BroadcastReceiver m = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass6 */

        public final void onReceive(Context _context, Intent _intent) {
            if (!TextUtils.isEmpty(SecurityService.phoneNumber) && !NetConstant.ERROR.equals(SecurityService.phoneNumber)) {
                int code = getResultCode();
                Log.d(SecurityService.TAG, "code: " + code);
                switch (code) {
                    case -1:
                        SecurityService.this.W = false;
                        Message msg = new Message();
                        msg.what = 2;
                        msg.arg1 = R.string.net_notice;
                        SecurityService.this.A.sendMessage(msg);
                        return;
                    case 0:
                    default:
                        return;
                    case 1:
                        Log.d(SecurityService.TAG, "SMS generic failure actions");
                        Toast.makeText(_context, (int) R.string.net_notice2, 1).show();
                        return;
                    case 2:
                        Log.d(SecurityService.TAG, "SMS radio off failure actions");
                        Toast.makeText(_context, (int) R.string.net_notice2, 1).show();
                        return;
                    case 3:
                        Log.d(SecurityService.TAG, "SMS null PDU failure actions");
                        Toast.makeText(_context, (int) R.string.net_notice2, 1).show();
                        return;
                    case 4:
                        Toast.makeText(_context, (int) R.string.net_notice2, 1).show();
                        return;
                }
            }
        }
    };
    private SMSCheckReceiver n;
    private SMSCheckReceiver o;
    private boolean p = false;
    private boolean q = false;
    private com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase r;
    private AppDatabase s;
    private SharedPreferences t;
    private boolean u;
    private int v = 0;
    private FlowIcon w;
    private ConnectivityManager x;
    private int y = 0;
    private CallInfoWin z = null;

    static /* synthetic */ void b(SecurityService x0) {
        x0.W = true;
        new Thread() {
            /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass7 */

            public final void run() {
                SharedPreferences.Editor editor;
                TrafficCorrectionResult result = new TrafficCorrectionResult();
                int errCode = SecurityService.this.R.getCorrectionResult(result, SecurityService.this.S.phonenum, SecurityService.this.S.body);
                SecurityService.this.a(errCode);
                Log.i(SecurityService.TAG, "errcode = " + errCode);
                Log.i(SecurityService.TAG, "phone number = " + SecurityService.phoneNumber);
                Log.i(SecurityService.TAG, "free" + result.mLeftTrafficInKb + "KB" + ", used" + result.mUsedTrafficInKb + "KB");
                if ((!"10001".equals(SecurityService.phoneNumber) && !"10000".equals(SecurityService.phoneNumber) && !NetConstant.ERROR.equals(SecurityService.phoneNumber)) || errCode != 0 || result.mUsedTrafficInKb != -1 || result.mLeftTrafficInKb != -1) {
                    if (errCode != 0 || result.mLeftTrafficInKb != 0) {
                        int correctCard = Utils.getCorrectPostion(SecurityService.this.getApplicationContext());
                        Intent intent = new Intent();
                        intent.setAction(SecurityService.ACTION);
                        intent.putExtra("code", errCode);
                        intent.putExtra("card", correctCard);
                        intent.putExtra("description", SecurityService.this.T);
                        intent.putExtra(PushReceiver.PHONE_NUMBER, SecurityService.phoneNumber);
                        intent.putExtra("left", result.mLeftTrafficInKb);
                        intent.putExtra("used", result.mUsedTrafficInKb);
                        Log.i(SecurityService.TAG, "errstring = " + SecurityService.this.T);
                        SecurityService.this.sendBroadcast(intent);
                        TrafficCorrectSetting.canCorrect = true;
                        if (errCode == 0 && !(result.mLeftTrafficInKb == -1 && result.mUsedTrafficInKb == -1)) {
                            if (correctCard == 0) {
                                editor = SecurityService.this.getSharedPreferences(Utils.SIM1_PROPERTIES, 0).edit();
                            } else {
                                editor = SecurityService.this.getSharedPreferences(Utils.SIM2_PROPERTIES, 0).edit();
                            }
                            editor.putBoolean(Utils.HAS_CORRECT_SUCESSED, true).commit();
                        }
                        Message msg = new Message();
                        msg.what = 4;
                        SecurityService.this.A.sendMessageDelayed(msg, 45000);
                    }
                }
            }
        }.start();
    }

    static /* synthetic */ void d(SecurityService x0) {
        x0.getSharedPreferences(Utils.SIM1_PROPERTIES, 0).edit().putString("phoneNumber", phoneNumber).commit();
    }

    static /* synthetic */ void f(SecurityService x0) {
        new Thread() {
            /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass4 */

            public final void run() {
                try {
                    Log.d("endCall", "startActivity curtime: " + SecurityService.P);
                    if (SecurityService.P != 0) {
                        List<SafeLog> logList = SecurityService.this.s.getTappingLogs(SecurityService.P - 5000);
                        int size = logList.size();
                        Log.d("endCall", "logList size:" + size);
                        if (size > 0) {
                            String[] pkgnames = new String[size];
                            String[] pernames = new String[size];
                            int[] actions = new int[size];
                            for (int i = 0; i < size; i++) {
                                SafeLog log = logList.get(i);
                                pkgnames[i] = log.packageName;
                                pernames[i] = log.permName;
                                actions[i] = log.action;
                            }
                            Intent intent = new Intent(SecurityService.this, AntiTappingActivity.class);
                            intent.addFlags(268435456);
                            intent.putExtra("pkgnames", pkgnames);
                            intent.putExtra("pernames", pernames);
                            intent.putExtra("actions", actions);
                            SecurityService.this.startActivity(intent);
                        }
                        long unused = SecurityService.P = 0;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    static /* synthetic */ void h(SecurityService x0) {
        if (x0.getHarssStatus() && TextUtils.isEmpty(HttpUtils.execService("alreadyanswer", x0))) {
            new HttpUtils().UpdateConfig("alreadyanswer", "has", x0);
            Intent intent = new Intent(x0, ShowConfirm.class);
            intent.addFlags(335544320);
            intent.putExtra("from", "nullnumber");
            x0.startActivity(intent);
        }
    }

    static /* synthetic */ void p(SecurityService x0) {
        try {
            ITelephony asInterface = ITelephony.Stub.asInterface((IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "phone"));
            if (x0.a != null) {
                asInterface.cancelMissedCallsNotification();
            } else {
                Log.i("wastetime", "Telephony service is null, can't call cancelMissedCallsNotification");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.i("wastetime", "Failed to clear missed calls notification due to remote exception");
        }
    }

    private class c extends BroadcastReceiver {
        private c() {
        }

        /* synthetic */ c(SecurityService x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                Log.i("3.6", "screen off");
                AppCheck.getDefault(context).cancel();
                AlarmManageUtils.cancelNoticeTrafficStats(context);
            }
        }
    }

    private class d extends BroadcastReceiver {
        private d() {
        }

        /* synthetic */ d(SecurityService x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                Log.i("3.6", "screen on");
                try {
                    AppCheck.getDefault(context).execute();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (WflUtils.isMobileNetwork(context)) {
                    AlarmManageUtils.noticeTrafficStats(context);
                }
            }
        }
    }

    private class e extends Handler {
        private e() {
        }

        /* synthetic */ e(SecurityService x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    SecurityService.this.a(msg.getData().getString(AppDatabase.NUMBER));
                    return;
                case 1:
                    SecurityService.this.S = (SmsEntity) msg.obj;
                    Log.i(SecurityService.TAG, SecurityService.this.S.phonenum + ": " + SecurityService.this.S.body);
                    SecurityService.b(SecurityService.this);
                    return;
                case 2:
                    Toast.makeText(SecurityService.this, msg.arg1, 1).show();
                    Message message = new Message();
                    message.what = 24;
                    SecurityService.this.A.sendMessageDelayed(message, 75000);
                    return;
                case 4:
                    SecurityService.phoneNumber = NetConstant.ERROR;
                    SecurityService.d(SecurityService.this);
                    return;
                case 5:
                    try {
                        SecurityService.this.a();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 6:
                    TrafficCorrectSetting.canCorrect = true;
                    return;
                case 7:
                    try {
                        SecurityService.this.a();
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                case 24:
                    if (!SecurityService.this.W) {
                        Utils.showCorrectFailNotification(SecurityService.this, SecurityService.this.getString(R.string.net_error_code10), SecurityService.this.getString(R.string.net_error_code11), 0);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i(TAG, " onStartCommand ");
        if (intent == null) {
            Log.i(TAG, "intent == null");
            return 1;
        }
        Log.i(TAG, "touch onstart action =" + intent.getAction());
        Log.i(TAG, "correct =" + intent.getBooleanExtra(TrafficCorrectSetting.CORRECT, false));
        if (!intent.getBooleanExtra(TrafficCorrectSetting.CORRECT, false)) {
            return 1;
        }
        if (this.R == null) {
            this.R = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
        }
        this.j.clear();
        this.k.clear();
        new Thread() {
            /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass8 */

            public final void run() {
                SharedPreferences sp;
                int correctCard = Utils.getCorrectPostion(SecurityService.this.getApplicationContext());
                if (correctCard == 0) {
                    sp = SecurityService.this.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
                } else {
                    sp = SecurityService.this.getSharedPreferences(Utils.SIM2_PROPERTIES, 0);
                }
                Log.i(SecurityService.TAG, "correctCard =" + correctCard);
                if ("".equals(sp.getString(Utils.SMS_MESSAGE, "")) || "".equals(sp.getString(Utils.SMS_ADDRESS, ""))) {
                    SecurityService.config = new TrafficCorrectionConfig(sp.getString(Utils.PROVINCE, ""), sp.getString(Utils.CITY, ""), sp.getString(Utils.CARRY, ""), sp.getString(Utils.BRAND, ""));
                    int setConfigCode = SecurityService.this.R.setConfig(SecurityService.config);
                    Log.i(SecurityService.TAG, "setConfigCode =" + setConfigCode);
                    SecurityService.this.k.add(Integer.valueOf(setConfigCode));
                    int err = SecurityService.this.R.startCorrection(SecurityService.this.j);
                    SecurityService.this.k.add(Integer.valueOf(err));
                    Log.i(SecurityService.TAG, "info list size =" + SecurityService.this.j.size() + "err =" + err);
                    if (SecurityService.this.j.size() > 0) {
                        CorrectionDataInfo di = SecurityService.this.j.get(0);
                        sp.edit().putString(Utils.SMS_ADDRESS, di.getAddress()).commit();
                        sp.edit().putString(Utils.SMS_MESSAGE, di.getMessage()).commit();
                    }
                }
                SecurityService.message = sp.getString(Utils.SMS_MESSAGE, "");
                SecurityService.phoneNumber = sp.getString(Utils.SMS_ADDRESS, "");
                Message msg = new Message();
                if (!Utils.isConnectInternet(SecurityService.this)) {
                    msg.what = 2;
                    msg.arg1 = R.string.net_no_able;
                    SecurityService.this.A.sendMessage(msg);
                } else if (!Utils.checkSIMState(SecurityService.this, correctCard)) {
                    msg.what = 2;
                    msg.arg1 = R.string.net_no_sim;
                    SecurityService.this.A.sendMessage(msg);
                } else {
                    try {
                        if (MyMultiSIMUtils.isMultiSim(SecurityService.this)) {
                            SecurityService.this.U.sendTextMessage(SecurityService.phoneNumber, (String) null, SecurityService.message, SecurityService.this.X, SecurityService.this.Y, correctCard);
                            Log.i(SecurityService.TAG, "in muti  di.getAddress() = " + SecurityService.phoneNumber + "card pos =" + correctCard + ",di.getMessage() =" + SecurityService.message);
                        } else {
                            SecurityService.this.V.sendTextMessage(SecurityService.phoneNumber, null, SecurityService.message, SecurityService.this.X, SecurityService.this.Y);
                            Log.i(SecurityService.TAG, "in single  di.getAddress() = " + SecurityService.phoneNumber + "di.getMessage() =" + SecurityService.message);
                        }
                        SecurityService.d(SecurityService.this);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
        this.A.sendMessageDelayed(this.A.obtainMessage(6), 90000);
        return 1;
    }

    public void sendSMS(String number, String name, int simNum) {
        String content = DataHelpUtils.getHarssAction(this, "replypri_content");
        if (content.equals("0")) {
            content = getString(R.string.no_replaysms);
        }
        DoubleCardUtils.privateSendMessage(this, number, content, true, simNum);
        Const.isTariff = false;
        Contract sms = new Contract();
        sms.setSmsContent(content);
        sms.setSmstype(2);
        sms.setDate(String.valueOf(System.currentTimeMillis()));
        sms.setPhoneNumber(number);
        sms.setIsRead(0);
        sms.setName(name);
        this.s.insertSms(sms);
        beginTime = System.currentTimeMillis();
        Log.v("safemode", "sendSMS......" + number);
    }

    public void showNotify(Context context) {
        String title;
        String content;
        NotificationManager nmanager = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        Intent mIntent = new Intent(context, CallNotifyActivity.class);
        mIntent.putExtra("Type", SofeModeMain.TS_CALL);
        mIntent.putExtra("style", Constant.CALL_NOTI_ID);
        mIntent.setFlags(536870912);
        PendingIntent intent = PendingIntent.getActivity(context, 0, mIntent, 0);
        if (DataHelpUtils.execService("callnotifytitle", context).equals("")) {
            title = context.getString(R.string.newcall);
            content = context.getString(R.string.notify);
        } else {
            title = DataHelpUtils.execService("callnotifytitle", context);
            content = DataHelpUtils.execService("callnotifycontent", context);
        }
        int resId = R.drawable.callnotify_show;
        if (DataHelpUtils.execService("changecallimg", context).equals(DatabaseTables.SYSTEM_MARK)) {
            resId = R.drawable.notify_hide;
        }
        Notification mNotification = new Notification(resId, "", System.currentTimeMillis());
        mNotification.setLatestEventInfo(context, title, "", intent);
        Log.d("test", "content: " + content);
        nmanager.notify(Constant.CALL_NOTI_ID, mNotification);
    }

    public void deleteLastestCall(String number) {
        ContentResolver resolver = getContentResolver();
        Cursor cursor = resolver.query(CallLog.Calls.CONTENT_URI, new String[]{"_id"}, "number=?", new String[]{number}, "_id desc limit 1");
        if (cursor.moveToFirst()) {
            int id = cursor.getInt(0);
            Log.i("whiteperson", id + "==" + number);
            resolver.delete(CallLog.Calls.CONTENT_URI, "_id=?", new String[]{"-1"});
            resolver.delete(CallLog.Calls.CONTENT_URI, "_id=?", new String[]{id + ""});
        }
        cursor.close();
    }

    public void registerIt() {
        try {
            Log.i("msg", "registerIt");
            this.c = new MMSReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.provider.Telephony.WAP_PUSH_RECEIVED");
            intentFilter.addDataType("application/vnd.wap.mms-message");
            intentFilter.addDataType(PushReceiver.CONTENT_MIME_TYPE_PUSH_SL);
            intentFilter.setPriority(Integer.MAX_VALUE);
            registerReceiver(this.c, intentFilter);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void unregisterIt() {
        Log.i("msg", "unregisterIt");
        unregisterReceiver(this.c);
    }

    public static Map<String, String[]> mSIL() {
        if (sil == null) {
            sil = new HashMap();
        }
        return sil;
    }

    public String getPhoneAddress(String number) {
        return this.M.getLocation(number);
    }

    @Override // com.tencent.tmsecure.common.TMSService
    public void onCreate() {
        super.onCreate();
        instance = this;
        this.O = false;
        this.t = PreferenceManager.getDefaultSharedPreferences(this);
        registerReceiver(this.C, new IntentFilter("android.intent.action.SCREEN_ON"));
        registerReceiver(this.B, new IntentFilter("android.intent.action.SCREEN_OFF"));
        registerReceiver(this.D, new IntentFilter(Const.ACTION_NETWORK_STATS_UPDATED), "android.permission.READ_NETWORK_USAGE_HISTORY", null);
        Log.i(TAG, "onCreate");
        if (MyMultiSIMUtils.isMultiSim(this)) {
            this.U = MultiSIMUtils.getDefault(this);
        } else {
            this.V = SmsManager.getDefault();
        }
        this.R = TrafficCorrectSetting.mTcMgr;
        this.X = PendingIntent.getBroadcast(this, 0, new Intent("SENT_SMS_ACTION"), 0);
        this.Y = PendingIntent.getBroadcast(this, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
        registerReceiver(this.m, new IntentFilter("SENT_SMS_ACTION"));
        IntentFilter localIntentFilter = new IntentFilter(NetConstant.RECEIVE_SMS_ACTION);
        localIntentFilter.setPriority(Integer.MAX_VALUE);
        Log.v(TAG, "resigestSMS()");
        registerReceiver(this.l, localIntentFilter);
        this.di = new DaoImpl(new DbAdapter(this));
        mSIL();
        new Thread() {
            /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass2 */

            public final void run() {
                InputStream is = SecurityService.this.getResources().openRawResource(R.raw.si);
                BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(is));
                while (true) {
                    try {
                        String buffer = localBufferedReader.readLine();
                        if (buffer == null) {
                            localBufferedReader.close();
                            is.close();
                            return;
                        } else if (!buffer.equals("")) {
                            String[] temp = buffer.split(",");
                            SecurityService.sil.put(temp[2], temp);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                }
            }
        }.start();
        this.M = (LocationManager) ManagerCreator.getManager(LocationManager.class);
        try {
            AppCheck.getDefault(this).execute();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Settings.System.putString(getContentResolver(), "safe_input_method", "com.android.inputmethod.latin/.LatinIME");
        Settings.System.putString(getContentResolver(), "safe_input_broadcast", "com.lenovo.safecenter.safeinputmethod");
        if (this.t.getInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, -1) == 1) {
            Settings.System.putInt(getContentResolver(), "safeinputmethod_on", 1);
        }
        this.r = new com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase(this);
        this.N = new NetAppDatabase(this);
        this.s = new AppDatabase(this);
        WflUtils.registerContentObserver(getApplicationContext());
        getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.e);
        this.d = (TelephonyManager) getSystemService("phone");
        this.b = (AudioManager) getSystemService("audio");
        try {
            this.G = getClass().getMethod("startForeground", E);
            this.H = getClass().getMethod("stopForeground", F);
            Intent netFilter = new Intent(this, SplashActivity.class);
            netFilter.setAction("android.intent.action.MAIN");
            netFilter.addCategory("android.intent.category.LAUNCHER");
            Notification notification = MyUtils.getNotification(this, getString(R.string.protecting), true, netFilter, R.drawable.atat_safe_icon, getString(R.string.safe_noti1));
            if (notification != null) {
                if (this.G != null) {
                    this.I[0] = 0;
                    this.I[1] = notification;
                    try {
                        this.G.invoke(this, this.I);
                    } catch (IllegalAccessException | InvocationTargetException e3) {
                    }
                } else {
                    setForeground(true);
                }
            }
        } catch (Exception e4) {
            this.G = null;
        }
        if (MyMultiSIMUtils.isMultiSim(this)) {
            MultiSIMUtils.getDefault(this).registDualCardPhoneState(this.f, 32, 0);
            MultiSIMUtils.getDefault(this).registDualCardPhoneState(this.g, 32, 1);
        } else {
            this.d.listen(this.f, 32);
            try {
                this.a = ITelephony.Stub.asInterface((IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "phone"));
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        netBlackPerson = SafeCenter.getNetBlack(this);
        whitePerson = SafeCenter.getWhitePerson(this);
        secutityPerson = SafeCenter.getScurityPerson(this);
        localBlackPerson = SafeCenter.getLocalBlack(this);
        resigestPrivateSMS();
        registerIt();
        resigestOutCall();
        saveMaxCallId();
        new Thread() {
            /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass3 */

            public final void run() {
                try {
                    new Thread() {
                        /* class com.lenovo.safecenter.support.SecurityService.AnonymousClass3.AnonymousClass1 */

                        public final void run() {
                            if (SecurityService.this.di.queryCount() < 60) {
                                Log.e("ydp", "create sayment database!!");
                                InputStream is = SecurityService.this.getResources().openRawResource(R.raw.safepayment);
                                BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(is));
                                while (true) {
                                    try {
                                        String buffer = localBufferedReader.readLine();
                                        if (buffer == null) {
                                            break;
                                        } else if (!buffer.equals("")) {
                                            String[] temp = buffer.split(",");
                                            Log.i("ydp", "inster.." + temp[0]);
                                            SecurityService.this.di.insterForSafeApp(temp[0], temp[1], temp[2], temp[3], "");
                                        }
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                localBufferedReader.close();
                                is.close();
                            }
                            SecurityService.this.sendBroadcast(new Intent("com.safecenter.boot.safeinput"));
                        }
                    }.start();
                } catch (Exception e) {
                }
            }
        }.start();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.intent.action.DATA_DEFAULT_SIM");
        registerReceiver(this.Q, intentFilter);
        this.u = this.t.getBoolean(Const.KEY_IS_SAFEPAYMEN_ON, true);
        MyProcessObserver.getDefault(this);
        if (this.u) {
            Log.i("ydp", "register safepayment in securityService");
            MyProcessObserver.getDefault(this).register();
        }
    }

    public void updataSafePayment() {
        this.di.insterForSafeApp(getString(R.string.gome), "com.gome.eshopnew", "FFEB25D4212F01B3B20462D5D352F5B3", "7124600", "");
        this.di.insterForSafeApp(getString(R.string.dangdang), "com.dangdang.buy2.epay", "82AE214D33E10C8B8B665E45E8C1FC12", "3412196", "");
        this.di.updataMD5ByPackageName("com.nuomi", "59215EE95C063FF2C56226581A62130A");
    }

    public void resigestBlackSMS() {
        IntentFilter localIntentFilter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
        localIntentFilter.setPriority(Integer.MAX_VALUE);
        this.n = new SMSCheckReceiver();
        Log.v("MyBrocast.onReceive", "resigestSMS()");
        registerReceiver(this.n, localIntentFilter);
    }

    public void resigestPrivateSMS() {
        IntentFilter localIntentFilter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
        if (TrafficStatsService.nacServerIsExist()) {
            localIntentFilter.setPriority(1000);
        } else {
            localIntentFilter.setPriority(Integer.MAX_VALUE);
        }
        this.o = new SMSCheckReceiver();
        Log.v("MyBrocast.onReceive", "resigestSMS()");
        registerReceiver(this.o, localIntentFilter);
    }

    @Override // com.tencent.tmsecure.common.TMSService
    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
    }

    public void endCall() {
        try {
            if (MyMultiSIMUtils.isMultiSimEnabled) {
                Log.i("msg", MultiSIMUtils.getDefault(this).endDulCall() + "==MyMultiSIMUtils.isMultiSimEnabled");
                return;
            }
            this.a.endCall();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean getHarssStatus() {
        try {
            return Const.getProtectHarassSwitchState();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public boolean getSetNullNumber() {
        if (TextUtils.isEmpty(HttpUtils.execService("getnonumber", this)) || HttpUtils.execService("getnonumber", this).equals("0")) {
            return false;
        }
        return true;
    }

    public class CallInfo {
        public boolean isAnswer;
        public long isAnswerTime;
        public boolean mBlcok;
        public boolean mDeleteLog;
        public String mNumber;
        public long mRingTime;
        public int mType;
        public boolean mVipCode;

        public CallInfo() {
        }
    }

    /* access modifiers changed from: protected */
    public void saveMaxCallId() {
        try {
            Cursor cursor = getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, "_id desc limit 1");
            this.K = 0;
            if (cursor != null) {
                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                    cursor.moveToFirst();
                    this.K = (long) cursor.getInt(cursor.getColumnIndex("_id"));
                    Log.i("CallListener", "mMaxCallLogId====" + this.K);
                }
                cursor.close();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getDescFromType(int stype) {
        if (stype == 1) {
            return getString(R.string.signtype1);
        }
        if (stype == 2) {
            return getString(R.string.signtype2);
        }
        if (stype == 3) {
            return getString(R.string.signtype3);
        }
        if (stype == 11) {
            return getString(R.string.signtype4);
        }
        if (stype == 12) {
            return getString(R.string.signtype5);
        }
        if (stype == 13) {
            return getString(R.string.signtype6);
        }
        return getString(R.string.signtype1);
    }

    /* access modifiers changed from: package-private */
    public final void a(String number) {
        boolean z2 = true;
        if (this.z != null) {
            this.z.hide();
        }
        if (number != null) {
            SignCall sign = null;
            try {
                sign = this.r.getSignCall(number);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (sign == null) {
                try {
                    sign = this.N.local_netSign(number);
                    if (sign == null) {
                        sign = this.N.get_netSign(number);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (sign != null || !Const.mDefaultPreference.getBoolean(Const.SWITCH_ANTI_TAPPING, true)) {
                    if (sign != null) {
                        this.z = new CallInfoWin(this);
                        String text = String.format(getString(R.string.sign_net), Integer.valueOf(sign.getTotalCall()), getDescFromType(sign.getsType()));
                        SpannableString spannable = new SpannableString(text);
                        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.orange1)), text.length() - getDescFromType(sign.getsType()).length(), text.length(), 33);
                        Log.i("leg", "text.length()==" + text.length() + "getDescFromType(sign.getsType()).length()==" + getDescFromType(sign.getsType()).length());
                        CallInfoWin callInfoWin = this.z;
                        if (this.y != 1) {
                            z2 = false;
                        }
                        callInfoWin.show(spannable, z2, number, getPhoneAddress(number));
                    }
                } else if (Const.isShowTaost()) {
                    this.z = new CallInfoWin(this);
                    CallInfoWin callInfoWin2 = this.z;
                    if (this.y != 1) {
                        z2 = false;
                    }
                    callInfoWin2.show(null, z2, number, getPhoneAddress(number));
                }
            } else {
                this.z = new CallInfoWin(this);
                String text2 = String.format(getString(R.string.sign_local), getDescFromType(sign.getsType()));
                SpannableString spannable2 = new SpannableString(text2);
                spannable2.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.orange1)), text2.length() - getDescFromType(sign.getsType()).length(), text2.length(), 33);
                Log.i("leg", "getDescFromType(sign.getsType())==" + getDescFromType(sign.getsType()) + "text.length()==" + text2.length() + "getDescFromType(sign.getsType()).length()==" + getDescFromType(sign.getsType()).length());
                CallInfoWin callInfoWin3 = this.z;
                if (this.y != 1) {
                    z2 = false;
                }
                callInfoWin3.show(spannable2, z2, number, getPhoneAddress(number));
            }
        } else if (Const.isShowTaost()) {
            this.z = new CallInfoWin(this);
            CallInfoWin callInfoWin4 = this.z;
            if (this.y != 1) {
                z2 = false;
            }
            callInfoWin4.show(null, z2, null, null);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.z != null) {
            this.z.hide();
        }
    }

    private class a extends PhoneStateListener {
        private int b;

        private a() {
            this.b = -1;
        }

        /* synthetic */ a(SecurityService x0, byte b2) {
            this();
        }

        public final void onCallStateChanged(int state, String incomingNumber) {
            switch (state) {
                case 0:
                    try {
                        Log.i("endCall", "CALL_STATE_IDLE " + SecurityService.this.b.getRingerMode());
                        SecurityService.isRinging = false;
                        SecurityService.this.a();
                        SecurityService.this.A.sendEmptyMessageDelayed(5, 1000);
                        SecurityService.f(SecurityService.this);
                        if (SecurityService.this.O) {
                            SecurityService.this.O = false;
                            SecurityService.h(SecurityService.this);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 1:
                    this.b = SecurityService.this.b.getRingerMode();
                    CallInfo callinfo = new CallInfo();
                    callinfo.mNumber = incomingNumber;
                    callinfo.mType = 0;
                    SecurityService.this.y = 0;
                    SecurityService.this.sendBroadcast(new Intent("com.lenovo.safecenter.RECEIVE_PHONE_CALL"));
                    if (!TextUtils.isEmpty(incomingNumber)) {
                        if (SecurityService.secutityPerson.contains(incomingNumber)) {
                            SecurityService.this.v = 0;
                            int callmode = Settings.System.getInt(SecurityService.this.getContentResolver(), "privateCall_mode_on", 0);
                            callinfo.mVipCode = true;
                            if (callmode == 1 || callmode == 2) {
                                SecurityService.this.b.setRingerMode(0);
                                SecurityService.this.p = true;
                                if (!SecurityService.isRinging) {
                                    SecurityService.this.endCall();
                                }
                                callinfo.mBlcok = true;
                                SecurityService.this.b.setRingerMode(this.b);
                                this.b = -1;
                            }
                        } else if (SecurityService.this.getHarssStatus()) {
                            if (CheckCenter.judgeNightHarass(SecurityService.this)) {
                                if (Settings.System.getInt(SecurityService.this.getContentResolver(), "nightharss_callmode", 0) == 0) {
                                    if (!SecurityService.this.isInContactsdia(SecurityService.this, incomingNumber)) {
                                        SecurityService.this.b.setRingerMode(0);
                                        SecurityService.this.q = true;
                                        if (!SecurityService.isRinging) {
                                            SecurityService.this.endCall();
                                        } else {
                                            Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                        }
                                        callinfo.mBlcok = true;
                                        SecurityService.this.b.setRingerMode(this.b);
                                        this.b = -1;
                                        SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                    } else if (SecurityService.localBlackPerson.contains(incomingNumber)) {
                                        SecurityService.this.b.setRingerMode(0);
                                        SecurityService.this.q = true;
                                        if (!SecurityService.isRinging) {
                                            SecurityService.this.endCall();
                                        } else {
                                            Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                        }
                                        callinfo.mBlcok = true;
                                        SecurityService.this.b.setRingerMode(this.b);
                                        this.b = -1;
                                        SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                    }
                                } else if (Settings.System.getInt(SecurityService.this.getContentResolver(), "nightharss_callmode", 0) == 1 && !SecurityService.whitePerson.contains(incomingNumber)) {
                                    SecurityService.this.b.setRingerMode(0);
                                    SecurityService.this.q = true;
                                    if (!SecurityService.isRinging) {
                                        SecurityService.this.endCall();
                                    } else {
                                        Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                    }
                                    callinfo.mBlcok = true;
                                    SecurityService.this.b.setRingerMode(this.b);
                                    this.b = -1;
                                    SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                }
                            } else if (SecurityService.this.isIntercept(SecurityService.this, incomingNumber)) {
                                SecurityService.this.b.setRingerMode(0);
                                SecurityService.this.q = true;
                                if (!SecurityService.isRinging) {
                                    SecurityService.this.endCall();
                                } else {
                                    Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                }
                                callinfo.mBlcok = true;
                                SecurityService.this.b.setRingerMode(this.b);
                                this.b = -1;
                                SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 6);
                                Log.i("endCall", "!getHarssStatus()");
                            }
                        }
                        callinfo.mRingTime = System.currentTimeMillis();
                        SecurityService.this.L.add(callinfo);
                        if (incomingNumber != null && incomingNumber.trim().length() > 0 && !callinfo.mBlcok) {
                            long unused = SecurityService.P = System.currentTimeMillis();
                            Message msg = new Message();
                            msg.what = 0;
                            msg.getData().putString(AppDatabase.NUMBER, incomingNumber);
                            SecurityService.this.A.sendMessageDelayed(msg, 1000);
                            return;
                        }
                        return;
                    } else if (!SecurityService.this.getHarssStatus() || !SecurityService.this.getSetNullNumber()) {
                        SecurityService.this.O = true;
                        SecurityService.this.a((String) null);
                        return;
                    } else {
                        SecurityService.this.endCall();
                        SafeCenter.AddPhoneLog(SecurityService.this, SecurityService.this.getString(R.string.localblack_noName), System.currentTimeMillis(), 2);
                        return;
                    }
                case 2:
                    Log.i("endCall", "CALL_STATE_OFFHOOK" + SecurityService.this.b.getRingerMode());
                    SecurityService.isRinging = true;
                    if (SecurityService.this.y == 1) {
                        Message msg2 = new Message();
                        msg2.what = 0;
                        msg2.getData().putString(AppDatabase.NUMBER, ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).mNumber);
                        SecurityService.this.A.sendMessageDelayed(msg2, 500);
                    } else if (SecurityService.this.y == 0) {
                        SecurityService.this.A.sendEmptyMessageDelayed(7, com.lenovo.lps.sus.c.c.ap);
                    }
                    if (SecurityService.this.L.size() > 0) {
                        ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).isAnswer = true;
                        ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).isAnswerTime = System.currentTimeMillis();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private class b extends PhoneStateListener {
        private int b;

        private b() {
            this.b = -1;
        }

        /* synthetic */ b(SecurityService x0, byte b2) {
            this();
        }

        public final void onCallStateChanged(int state, String incomingNumber) {
            switch (state) {
                case 0:
                    try {
                        Log.i("endCall", "CALL_STATE_IDLE " + SecurityService.this.b.getRingerMode());
                        SecurityService.isRinging = false;
                        SecurityService.this.a();
                        SecurityService.this.A.sendEmptyMessageDelayed(5, 1000);
                        SecurityService.f(SecurityService.this);
                        if (SecurityService.this.O) {
                            SecurityService.this.O = false;
                            SecurityService.h(SecurityService.this);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 1:
                    this.b = SecurityService.this.b.getRingerMode();
                    CallInfo callinfo = new CallInfo();
                    callinfo.mNumber = incomingNumber;
                    callinfo.mType = 0;
                    SecurityService.this.y = 0;
                    SecurityService.this.sendBroadcast(new Intent("com.lenovo.safecenter.RECEIVE_PHONE_CALL"));
                    if (!TextUtils.isEmpty(incomingNumber)) {
                        if (SecurityService.secutityPerson.contains(incomingNumber)) {
                            SecurityService.this.v = 1;
                            int callmode = Settings.System.getInt(SecurityService.this.getContentResolver(), "privateCall_mode_on", 0);
                            callinfo.mVipCode = true;
                            if (callmode == 1 || callmode == 2) {
                                SecurityService.this.b.setRingerMode(0);
                                SecurityService.this.p = true;
                                if (!SecurityService.isRinging) {
                                    SecurityService.this.endCall();
                                }
                                callinfo.mBlcok = true;
                                SecurityService.this.b.setRingerMode(this.b);
                                this.b = -1;
                            }
                        } else if (SecurityService.this.getHarssStatus()) {
                            if (CheckCenter.judgeNightHarass(SecurityService.this)) {
                                if (Settings.System.getInt(SecurityService.this.getContentResolver(), "nightharss_callmode", 0) == 0) {
                                    if (!SecurityService.this.isInContactsdia(SecurityService.this, incomingNumber)) {
                                        SecurityService.this.b.setRingerMode(0);
                                        SecurityService.this.q = true;
                                        if (!SecurityService.isRinging) {
                                            SecurityService.this.endCall();
                                        } else {
                                            Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                        }
                                        callinfo.mBlcok = true;
                                        SecurityService.this.b.setRingerMode(this.b);
                                        this.b = -1;
                                        SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                    } else if (SecurityService.localBlackPerson.contains(incomingNumber)) {
                                        SecurityService.this.b.setRingerMode(0);
                                        SecurityService.this.q = true;
                                        if (!SecurityService.isRinging) {
                                            SecurityService.this.endCall();
                                        } else {
                                            Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                        }
                                        callinfo.mBlcok = true;
                                        SecurityService.this.b.setRingerMode(this.b);
                                        this.b = -1;
                                        SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                    }
                                } else if (Settings.System.getInt(SecurityService.this.getContentResolver(), "nightharss_callmode", 0) == 1 && !SecurityService.whitePerson.contains(incomingNumber)) {
                                    SecurityService.this.b.setRingerMode(0);
                                    SecurityService.this.q = true;
                                    if (!SecurityService.isRinging) {
                                        SecurityService.this.endCall();
                                    } else {
                                        Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                    }
                                    callinfo.mBlcok = true;
                                    SecurityService.this.b.setRingerMode(this.b);
                                    this.b = -1;
                                    SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 5);
                                }
                            } else if (SecurityService.this.isIntercept(SecurityService.this, incomingNumber)) {
                                SecurityService.this.b.setRingerMode(0);
                                SecurityService.this.q = true;
                                if (!SecurityService.isRinging) {
                                    SecurityService.this.endCall();
                                } else {
                                    Toast.makeText(SecurityService.this, (int) R.string.isring, 1).show();
                                }
                                callinfo.mBlcok = true;
                                SecurityService.this.b.setRingerMode(this.b);
                                this.b = -1;
                                SafeCenter.AddPhoneLog(SecurityService.this, incomingNumber, System.currentTimeMillis(), 6);
                                Log.i("endCall", "!getHarssStatus()");
                            }
                        }
                        if (incomingNumber != null && incomingNumber.trim().length() > 0 && !callinfo.mBlcok) {
                            long unused = SecurityService.P = System.currentTimeMillis();
                            Message msg = new Message();
                            msg.what = 0;
                            msg.getData().putString(AppDatabase.NUMBER, incomingNumber);
                            SecurityService.this.A.sendMessageDelayed(msg, 1000);
                        }
                        callinfo.mRingTime = System.currentTimeMillis();
                        SecurityService.this.L.add(callinfo);
                        return;
                    } else if (!SecurityService.this.getHarssStatus() || !SecurityService.this.getSetNullNumber()) {
                        SecurityService.this.O = true;
                        SecurityService.this.a((String) null);
                        return;
                    } else {
                        SecurityService.this.endCall();
                        SafeCenter.AddPhoneLog(SecurityService.this, SecurityService.this.getString(R.string.localblack_noName), System.currentTimeMillis(), 2);
                        return;
                    }
                case 2:
                    Log.i("endCall", "CALL_STATE_OFFHOOK" + SecurityService.this.b.getRingerMode());
                    SecurityService.isRinging = true;
                    if (SecurityService.this.y == 1) {
                        Message msg2 = new Message();
                        msg2.what = 0;
                        msg2.getData().putString(AppDatabase.NUMBER, ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).mNumber);
                        SecurityService.this.A.sendMessageDelayed(msg2, 500);
                    } else if (SecurityService.this.y == 0) {
                        SecurityService.this.A.sendEmptyMessageDelayed(7, com.lenovo.lps.sus.c.c.ap);
                    }
                    if (SecurityService.this.L.size() > 0) {
                        ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).isAnswer = true;
                        ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).isAnswerTime = System.currentTimeMillis();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public static String formatNumber(String number) {
        if (number != null && number.contains("-")) {
            number = number.replace("-", "");
        }
        if (number == null || !number.startsWith("+86")) {
            return number;
        }
        return number.substring(3);
    }

    public class OutCallReceiver extends BroadcastReceiver {
        public OutCallReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String number = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
            Log.i("CallListener", "number===" + number);
            if (number != null) {
                SecurityService.this.y = 1;
                CallInfo info = new CallInfo();
                info.mNumber = number;
                if (SecurityService.this.s.getWhiteContract(number) != null) {
                    info.mVipCode = true;
                }
                info.mType = 1;
                info.mRingTime = System.currentTimeMillis();
                SecurityService.this.L.add(info);
                if (SecurityService.P == 0) {
                    long unused = SecurityService.P = System.currentTimeMillis();
                }
            }
        }
    }

    public void resigestOutCall() {
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.NEW_OUTGOING_CALL");
        localIntentFilter.setPriority(200);
        this.i.setOrderedHint(true);
        registerReceiver(this.i, localIntentFilter);
    }

    public class CallLogObserver extends ContentObserver {
        public CallLogObserver(Handler handler) {
            super(handler);
        }

        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            try {
                Log.i("CallListener", "onChangeonChangeonChangeonChangeonChangeonChangeonChangeonChange");
                Cursor cursor = SecurityService.this.getContentResolver().query(CallLog.Calls.CONTENT_URI, SecurityService.h, null, null, "_id desc limit 1");
                Log.i("CallListener", "get cursor" + SecurityService.this.L.size());
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    String number = cursor.getString(1);
                    long maxId = (long) cursor.getInt(cursor.getColumnIndex("_id"));
                    long date = cursor.getLong(2);
                    int lens = cursor.getInt(3);
                    int type = cursor.getInt(4);
                    Log.i("CallListener", "maxId===" + maxId + "==+mMaxCallLogId==" + SecurityService.this.K + "type==" + type + "==number==" + number + "==mCalls.last==" + ((CallInfo) SecurityService.this.L.get(SecurityService.this.L.size() - 1)).isAnswer);
                    if (TextUtils.isEmpty(number) && SecurityService.this.getHarssStatus() && SecurityService.this.getSetNullNumber()) {
                        SecurityService.this.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "_id=" + maxId, null);
                        return;
                    } else if (maxId > SecurityService.this.K) {
                        if (SecurityService.this.L.size() > 0) {
                            int i = 0;
                            while (i < SecurityService.this.L.size() && !((CallInfo) SecurityService.this.L.get(i)).mNumber.equals(number)) {
                                i++;
                            }
                            if (i >= SecurityService.this.L.size() && SecurityService.this.L.size() == 1) {
                                i = 0;
                            }
                            Log.i("CallListener", "mCalls.size()===" + SecurityService.this.L.size() + "==i==" + i);
                            if (i < SecurityService.this.L.size()) {
                                CallInfo info = (CallInfo) SecurityService.this.L.get(i);
                                if (info.mVipCode) {
                                    Log.i("CallListener", "number===" + number);
                                    Contract con = DataHelpUtils.getContractModel(SecurityService.this, number);
                                    con.setDate(String.valueOf(date));
                                    if (info.mBlcok || type == 3) {
                                        con.setCallType(3);
                                        con.setIsRead(1);
                                    } else {
                                        con.setCallType(type);
                                        con.setIsRead(0);
                                    }
                                    SecurityService.this.s.insertCall(con);
                                    if (info.mBlcok || type == 3) {
                                        String callmode = String.valueOf(Settings.System.getInt(SecurityService.this.getContentResolver(), "privateCall_mode_on", 0));
                                        if (DatabaseTables.SYSTEM_MARK.equals(DatabaseTables.SYSTEM_MARK)) {
                                            SecurityService.this.showNotify(SecurityService.this);
                                            if (DataHelpUtils.getActivityByName("WhiteCall") != null) {
                                                ((WhiteCall) DataHelpUtils.getActivityByName("WhiteCall")).hand.sendEmptyMessage(1);
                                            } else if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
                                                ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
                                            }
                                        }
                                        if (info.mBlcok && callmode.equals(DatabaseTables.USER_MARK)) {
                                            SecurityService.this.sendSMS(number, con.getName(), SecurityService.this.v);
                                        }
                                        if (type == 3) {
                                            SecurityService.p(SecurityService.this);
                                        }
                                    }
                                    SecurityService.this.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "_id=" + maxId, null);
                                } else if (info.mBlcok) {
                                    SecurityService.this.getContentResolver().delete(CallLog.Calls.CONTENT_URI, "_id=" + maxId, null);
                                    if (type == 3) {
                                        try {
                                            SecurityService.p(SecurityService.this);
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }
                                } else if (info.mType == 0 && type == 3) {
                                    if (SecurityService.this.getHarssStatus() && System.currentTimeMillis() - info.mRingTime <= 6000 && SecurityService.this.isStangerPhoneNumber(number)) {
                                        SafeCenter.AddPhoneLog(SecurityService.this, number, System.currentTimeMillis(), 3);
                                    }
                                } else if (type == 1 && SecurityService.this.getHarssStatus() && lens > 0 && SecurityService.this.isStangerPhoneNumber(number) && !SecurityService.this.isSign(number) && lens <= 15 && SecurityService.this.s.getIncomcount(number) < 2) {
                                    Intent intent = new Intent(SecurityService.this, FirstSignActivity.class);
                                    intent.addFlags(335544320);
                                    intent.putExtra(AppDatabase.NUMBER, number);
                                    intent.putExtra("wastetime", lens);
                                    intent.putExtra("from", "shortcall");
                                    SecurityService.this.startActivity(intent);
                                }
                            }
                            SecurityService.this.L.remove(i);
                        }
                    } else if (SecurityService.this.L.size() == 1 && maxId <= SecurityService.this.K && !((CallInfo) SecurityService.this.L.get(0)).mNumber.equals(number)) {
                        CallInfo info2 = (CallInfo) SecurityService.this.L.get(0);
                        SecurityService.this.L.clear();
                        if (info2.mVipCode) {
                            Log.i("CallListener", "number===" + number);
                            Contract con2 = DataHelpUtils.getContractModel(SecurityService.this, info2.mNumber);
                            con2.setDate(String.valueOf(info2.mRingTime));
                            if (!info2.mBlcok || info2.mType != 0 || info2.isAnswer) {
                                con2.setCallType(info2.mType == 1 ? 2 : 1);
                                con2.setIsRead(0);
                            } else {
                                con2.setCallType(3);
                                con2.setIsRead(1);
                            }
                            SecurityService.this.s.insertCall(con2);
                            if (info2.mBlcok && info2.mType == 0) {
                                String callmode2 = String.valueOf(Settings.System.getInt(SecurityService.this.getContentResolver(), "privateCall_mode_on", 0));
                                if (DatabaseTables.SYSTEM_MARK.equals(DatabaseTables.SYSTEM_MARK)) {
                                    SecurityService.this.showNotify(SecurityService.this);
                                    if (DataHelpUtils.getActivityByName("WhiteCall") != null) {
                                        ((WhiteCall) DataHelpUtils.getActivityByName("WhiteCall")).hand.sendEmptyMessage(1);
                                    } else if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
                                        ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
                                    }
                                }
                                if (info2.mBlcok && callmode2.equals(DatabaseTables.USER_MARK)) {
                                    SecurityService.this.sendSMS(info2.mNumber, con2.getName(), SecurityService.this.v);
                                }
                            }
                        } else if (!info2.mBlcok) {
                            if (info2.mType != 0 || info2.isAnswer) {
                                if (info2.mType == 0 && info2.isAnswer && SecurityService.this.getHarssStatus()) {
                                    long timespace = System.currentTimeMillis() - info2.isAnswerTime;
                                    Log.i("CallListener", "timespace====" + timespace);
                                    if (timespace >= 0 && SecurityService.this.isStangerPhoneNumber(info2.mNumber) && !SecurityService.this.isSign(info2.mNumber) && timespace <= com.lenovo.performancecenter.coreui.util.Utils.CLICK_INTERVAL && SecurityService.this.s.getIncomcount(info2.mNumber) < 2) {
                                        Intent intent2 = new Intent(SecurityService.this, FirstSignActivity.class);
                                        intent2.addFlags(335544320);
                                        intent2.putExtra(AppDatabase.NUMBER, info2.mNumber);
                                        intent2.putExtra("wastetime", timespace);
                                        intent2.putExtra("from", "shortcall");
                                        SecurityService.this.startActivity(intent2);
                                    }
                                }
                            } else if (SecurityService.this.getHarssStatus() && System.currentTimeMillis() - info2.mRingTime <= 6000 && SecurityService.this.isStangerPhoneNumber(info2.mNumber)) {
                                SafeCenter.AddPhoneLog(SecurityService.this, info2.mNumber, System.currentTimeMillis(), 3);
                            }
                        }
                    }
                } else if (cursor != null && SecurityService.this.L.size() == 1 && cursor.getCount() == 0) {
                    CallInfo info3 = (CallInfo) SecurityService.this.L.get(0);
                    SecurityService.this.L.clear();
                    if (info3.mVipCode) {
                        Log.i("CallListener", "number===" + info3.mNumber + "==" + info3.mBlcok);
                        Contract con3 = DataHelpUtils.getContractModel(SecurityService.this, info3.mNumber);
                        con3.setDate(String.valueOf(info3.mRingTime));
                        if (!info3.mBlcok || info3.mType != 0 || info3.isAnswer) {
                            con3.setCallType(info3.mType == 1 ? 2 : 1);
                            con3.setIsRead(0);
                        } else {
                            con3.setCallType(3);
                            con3.setIsRead(1);
                        }
                        SecurityService.this.s.insertCall(con3);
                        if (info3.mBlcok && info3.mType == 0) {
                            String callmode3 = String.valueOf(Settings.System.getInt(SecurityService.this.getContentResolver(), "privateCall_mode_on", 0));
                            if (DatabaseTables.SYSTEM_MARK.equals(DatabaseTables.SYSTEM_MARK)) {
                                SecurityService.this.showNotify(SecurityService.this);
                                if (DataHelpUtils.getActivityByName("WhiteCall") != null) {
                                    ((WhiteCall) DataHelpUtils.getActivityByName("WhiteCall")).hand.sendEmptyMessage(1);
                                } else if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
                                    ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(2);
                                }
                            }
                            if (info3.mBlcok && callmode3.equals(DatabaseTables.USER_MARK)) {
                                SecurityService.this.sendSMS(info3.mNumber, con3.getName(), SecurityService.this.v);
                            }
                        }
                    } else if (!info3.mBlcok) {
                        if (info3.mType != 0 || info3.isAnswer) {
                            if (info3.mType == 0 && info3.isAnswer && SecurityService.this.getHarssStatus()) {
                                long timespace2 = System.currentTimeMillis() - info3.isAnswerTime;
                                Log.i("CallListener", "timespace====" + timespace2);
                                if (timespace2 >= 0 && SecurityService.this.isStangerPhoneNumber(info3.mNumber) && !SecurityService.this.isSign(info3.mNumber) && timespace2 <= com.lenovo.performancecenter.coreui.util.Utils.CLICK_INTERVAL && SecurityService.this.s.getIncomcount(info3.mNumber) < 2) {
                                    Intent intent3 = new Intent(SecurityService.this, FirstSignActivity.class);
                                    intent3.addFlags(335544320);
                                    intent3.putExtra(AppDatabase.NUMBER, info3.mNumber);
                                    intent3.putExtra("wastetime", timespace2);
                                    intent3.putExtra("from", "shortcall");
                                    SecurityService.this.startActivity(intent3);
                                }
                            }
                        } else if (SecurityService.this.getHarssStatus() && System.currentTimeMillis() - info3.mRingTime <= 6000 && SecurityService.this.isStangerPhoneNumber(info3.mNumber)) {
                            SafeCenter.AddPhoneLog(SecurityService.this, info3.mNumber, System.currentTimeMillis(), 3);
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                SecurityService.this.saveMaxCallId();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public boolean isStangerPhoneNumber(String number) {
        if (secutityPerson.contains(number) || SafeCenter.getAllLocalBlack(this).contains(number) || SafeCenter.getAllNetBlack(this).contains(number) || whitePerson.contains(number) || isInContactsdia(this, number)) {
            return false;
        }
        return true;
    }

    public boolean isInContactsdia(Context act, String number) {
        Cursor phoneCursor = act.getContentResolver().query(Uri.parse("content://com.android.contacts/data/phones"), null, "PHONE_NUMBERS_EQUAL(data1,'" + number + "',0)", null, null);
        int count = phoneCursor.getCount();
        phoneCursor.close();
        if (count > 0) {
            return true;
        }
        return false;
    }

    public boolean isSign(String number) {
        if (this.r.getSignCall(number) != null) {
            return true;
        }
        return false;
    }

    public static int findBlack(String number) {
        try {
            if (localBlackPerson.contains(number)) {
                return 1;
            }
            if (netBlackPerson.contains(number)) {
                return 2;
            }
            return 0;
        } catch (Exception e2) {
            return 0;
        }
    }

    public boolean isIntercept(Context context, String number) {
        int mode = Settings.System.getInt(context.getContentResolver(), "intercall_mode_type", 0);
        if (mode == 2 && (!isInContactsdia(this, number) || localBlackPerson.contains(number))) {
            return true;
        }
        if (mode == 0 || mode == 1) {
            int black_mode = findBlack(number);
            if (black_mode == 0) {
                return false;
            }
            if (black_mode == 1 || black_mode == 2) {
                return true;
            }
        } else if (mode == 3 && !whitePerson.contains(number)) {
            return true;
        }
        return false;
    }

    public void setFlowVisibility(int isEnabled) {
        if (this.w == null) {
            this.w = new FlowIcon(this);
        }
        if (isEnabled == 0) {
            this.w.addView_iconBase();
        } else {
            this.w.delView_iconBase();
        }
    }

    public void setFlowIsFixed(boolean isFixed) {
        if (this.w != null) {
            this.w.setFlowWindowFixed(isFixed, this.w);
        }
    }

    @Override // com.tencent.tmsecure.common.TMSService
    public void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.o);
            unregisterReceiver(this.i);
            unregisterReceiver(this.C);
            unregisterReceiver(this.B);
            unregisterReceiver(this.D);
            unregisterReceiver(this.Q);
            AppCheck.getDefault(this);
            AppCheck.isRun = false;
            unregisterIt();
            startService(new Intent(this, SecurityService.class));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final class IncomingSMSReceiver extends BroadcastReceiver {
        public IncomingSMSReceiver() {
        }

        public final void onReceive(Context context, Intent intent) {
            SmsMessage message;
            Log.i(SecurityService.TAG, "touch IncomingSMSReceiver !!!");
            if (intent.getAction().equals(NetConstant.RECEIVE_SMS_ACTION)) {
                StringBuilder msg = new StringBuilder();
                String sender = null;
                Object[] pdus = (Object[]) intent.getExtras().get("pdus");
                for (Object pdu : pdus) {
                    if (pdu != null) {
                        try {
                            Object bpdu = (byte[]) pdu;
                            if (intent.getStringExtra("format") != null) {
                                Log.i("test", "sms format");
                                message = SmsMessage.createFromPdu(bpdu, intent.getStringExtra("format"));
                            } else {
                                message = SmsMessage.createFromPdu(bpdu);
                            }
                            sender = message.getOriginatingAddress();
                            msg.append(message.getMessageBody());
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                }
                String content = msg.toString();
                SmsEntity se = new SmsEntity();
                se.body = content;
                se.phonenum = sender;
                if (sender.equals(SecurityService.phoneNumber)) {
                    Log.i(SecurityService.TAG, "touch if !!!");
                    Message targetMsg = new Message();
                    targetMsg.obj = se;
                    targetMsg.what = 1;
                    if (SecurityService.this.A != null) {
                        Log.i(SecurityService.TAG, "mhandler != null !!!");
                        SecurityService.this.A.sendMessage(targetMsg);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int errCode) {
        this.T = "校准失败";
        switch (errCode) {
            case -103:
                this.T = getString(R.string.net_error_code9);
                break;
            case QLBSNotification.RESPONSE_UNKNOWN_ERROR /*{ENCODED_INT: -7}*/:
                this.T = getString(R.string.net_error_code6);
                break;
            case -6:
                this.T = getString(R.string.net_error_code5);
                break;
            case -5:
                this.T = getString(R.string.net_error_code1);
                break;
            case -4:
                this.T = getString(R.string.net_error_code2);
                break;
            case -3:
                this.T = getString(R.string.net_error_code);
                break;
            case -2:
                this.T = getString(R.string.net_error_code4);
                break;
            case -1:
                this.T = getString(R.string.net_error_code3);
                break;
            case 0:
                this.T = getString(R.string.net_error_code7);
                break;
            default:
                this.T = getString(R.string.net_error_code8);
                break;
        }
        Log.i(TAG, this.T);
    }
}
