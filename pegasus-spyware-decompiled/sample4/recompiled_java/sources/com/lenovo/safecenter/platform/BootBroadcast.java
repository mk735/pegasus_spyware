package com.lenovo.safecenter.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.MultiSIMUtils;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.utils.AlarmManageUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.WflUtils;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class BootBroadcast extends BroadcastReceiver {
    private static Context b;
    public static boolean ignorePlaneMode = true;
    private static Handler j = new Handler() {
        /* class com.lenovo.safecenter.platform.BootBroadcast.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    MyUtils.lockedScreen(BootBroadcast.b, null);
                    return;
                default:
                    return;
            }
        }
    };
    private SharedPreferences a;
    private String c;
    private String d = null;
    private String e = null;
    private String f = null;
    private DaoImpl g;
    private boolean h = true;
    private boolean i = true;

    static /* synthetic */ void a(BootBroadcast x0, Context x1) {
        try {
            String string = Settings.System.getString(x1.getContentResolver(), "old_input");
            if (Settings.Secure.getString(x1.getContentResolver(), "default_input_method").equals("com.android.inputmethod.latin/.LatinIME") && string != null && !string.equals("")) {
                Settings.Secure.putString(x1.getContentResolver(), "default_input_method", string);
            }
        } catch (Exception e2) {
            Log.e("ydp", "safeinput error" + e2);
        }
        if (x0.a.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false)) {
            if (x0.a.getBoolean("all", false) || x0.a.getBoolean("locked", false)) {
                j.sendEmptyMessage(1);
            }
            if (x0.a.getBoolean("all", false) || x0.a.getBoolean("alarm", false)) {
                Log.e("ydp", "all or alarm :" + x0.a.getBoolean("all", false) + "  " + x0.a.getBoolean("alarm", false));
                MyUtils.alarming(x1);
            }
        }
    }

    static /* synthetic */ void b(BootBroadcast x0, Context x1) {
        if (x0.a.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false)) {
            b = x1;
            Log.e("test", "==============>checking SIM");
            if (MyMultiSIMUtils.isMultiSim(x1)) {
                Log.e("test", "==============>checking SIM MultiSim");
                String string = x0.a.getString("ORG_SIM_NUMBER1", "");
                String string2 = x0.a.getString("ORG_SIM_NUMBER2", "");
                int[] allSimState = MyMultiSIMUtils.getAllSimState(x1);
                int i2 = allSimState[0];
                int i3 = allSimState[1];
                Log.i("test", "sim1:" + i2 + "  sim2:" + i3);
                boolean z = i2 == 5;
                boolean z2 = i3 == 5;
                if ((z || z2) && !a(x1) && ignorePlaneMode) {
                    ignorePlaneMode = false;
                    Log.i("boot", "boot  sim0" + i2 + "sim1" + i3);
                    x0.e = a(0, z);
                    x0.f = a(1, z2);
                    Log.e("test", "orgSimSerialNumber1:" + string);
                    Log.e("test", "orgSimSerialNumber2:" + string2);
                    Log.e("test", "simSerialNumber1:" + x0.e);
                    Log.e("test", "simSerialNumber2:" + x0.f);
                    if ((!string.equals(x0.e) && !string2.equals(x0.e) && !x0.e.equals("no card")) || (!string.equals(x0.f) && !string2.equals(x0.f) && !x0.f.equals("no card"))) {
                        x0.b();
                        return;
                    }
                    return;
                }
                return;
            }
            Log.e("test", "==============>checking SIM one Sim");
            TelephonyManager telephonyManager = (TelephonyManager) x1.getSystemService("phone");
            int simState = telephonyManager.getSimState();
            Log.e("test", "Sim State: " + simState);
            if (simState == 5 && !a(x1)) {
                Log.e("test", "SIM_STATE_READY");
                if (ignorePlaneMode) {
                    ignorePlaneMode = false;
                    String string3 = x0.a.getString("ORG_SIM_NUMBER", "");
                    if (string3 != null && string3.length() != 0) {
                        while (true) {
                            if (x0.d != null && !"".equals(x0.d)) {
                                break;
                            }
                            x0.d = telephonyManager.getSubscriberId();
                            Log.e("test", "......" + x0.d);
                        }
                        if (!x0.d.equals(string3)) {
                            x0.b();
                        }
                    }
                }
            }
        }
    }

    public void onReceive(final Context context, Intent intent) {
        b = context;
        this.a = context.getSharedPreferences("antitheft", 0);
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            AlarmManageUtils.noticeUpdateLab(context);
            WflUtils.registerContentObserver(context);
            new Thread() {
                /* class com.lenovo.safecenter.platform.BootBroadcast.AnonymousClass1 */

                public final void run() {
                    BootBroadcast.a(BootBroadcast.this, context);
                    if (Build.VERSION.SDK_INT >= 14) {
                        BootBroadcast.this.g = new DaoImpl(new DbAdapter(context));
                        if (BootBroadcast.this.g.queryCount() <= 0) {
                            Log.e("ydp", "create sayment database!!");
                            InputStream is = context.getResources().openRawResource(R.raw.data_1);
                            try {
                                FileOutputStream fos = new FileOutputStream("/data/data/com.lenovo.safecenter/databases/safepayment.db", false);
                                byte[] buffer = new byte[is.available()];
                                is.read(buffer);
                                fos.write(buffer);
                                fos.close();
                                is.close();
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                }
            }.start();
        }
        if (intent.getAction().equals("android.intent.action.SIM_STATE_CHANGED") && this.a.getBoolean("simchanged", true)) {
            new Thread() {
                /* class com.lenovo.safecenter.platform.BootBroadcast.AnonymousClass2 */

                public final void run() {
                    BootBroadcast.b(BootBroadcast.this, context);
                }
            }.start();
        }
    }

    private static String a(int id, boolean state) {
        if (!state) {
            return "no card";
        }
        String number = MultiSIMUtils.getDefault(b).getSubscriberId(id);
        while (true) {
            if (number != null && !"".equals(number)) {
                return number;
            }
            number = MultiSIMUtils.getDefault(b).getSubscriberId(id);
            if (MultiSIMUtils.getDefault(b).getSimState(id) == 1) {
                return "no card";
            }
            Log.e("test", "......get sim " + id + ": " + number);
        }
    }

    private void b() {
        Log.e("test", "sendMsgAndLockScreen");
        if (this.a.getBoolean("sim_alarm_screen", false)) {
            Log.i("ydp", "locked screen");
            j.sendEmptyMessage(1);
        } else {
            Log.e("test", "SIM SAFE");
        }
        if (this.a.getBoolean("sim_alarm_sms", false)) {
            Log.i("ydp", "sim_alarm_sms");
            this.c = Const.getSafePhoneNumber();
            Intent it = new Intent("com.lenovo.antitheft.SENDMESSAGE");
            it.putExtra(PushReceiver.PHONE_NUMBER, this.c);
            it.putExtra(DatabaseTables.LOG_MESSAGE, b.getString(R.string.simSerialNumber_changed) + PwdUtil.getPasswordWithJieMi(b) + b.getString(R.string.command_content));
            it.putExtra("type", 500);
            b.startService(it);
        }
    }

    private static boolean a(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }
}
