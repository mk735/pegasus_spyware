package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PowerManager;
import android.provider.MultiSIMUtils;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.PwdUtil;

public class LockScreenService extends Service {
    static TextView a;
    static EditText b;
    static TextView c;
    static WindowManager.LayoutParams d;
    static WindowManager e;
    static View f;
    static LayoutInflater g;
    static SharedPreferences h;
    static boolean i = true;
    private static PowerManager j;
    private static PowerManager.WakeLock k;
    private Handler l = new Handler() {
        /* class com.lenovo.safecenter.broadcast.LockScreenService.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    LockScreenService.e.addView(LockScreenService.f, LockScreenService.d);
                    LockScreenService.c.setClickable(true);
                    return;
                case 2:
                    try {
                        ((InputMethodManager) LockScreenService.this.getSystemService("input_method")).hideSoftInputFromWindow(LockScreenService.b.getWindowToken(), 0);
                        LockScreenService.e.removeView(LockScreenService.f);
                        LockScreenService.i = true;
                        LockScreenService.c.setClickable(true);
                        return;
                    } catch (Exception e) {
                        Log.i("test", "remove view error :" + e);
                        return;
                    }
                default:
                    return;
            }
        }
    };

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        String phoneNumber = intent.getStringExtra("phonenumber");
        if (!MyUtils.isLocked) {
            g = LayoutInflater.from(this);
            f = g.inflate(R.layout.lockedscreen, (ViewGroup) null);
            a = (TextView) f.findViewById(R.id.lockedscreen_tv);
            b = (EditText) f.findViewById(R.id.lockedscreen_pwd);
            c = (TextView) f.findViewById(R.id.lockedscreen_login);
            j = (PowerManager) getSystemService("power");
            k = j.newWakeLock(10, "BackLight");
            h = getSharedPreferences("antitheft", 0);
            e = (WindowManager) getSystemService("window");
            d = new WindowManager.LayoutParams(2010, 256);
            d.width = -1;
            d.height = -1;
            d.screenOrientation = 1;
            b.setFocusable(true);
            b.setFocusableInTouchMode(true);
            c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.broadcast.LockScreenService.AnonymousClass1 */

                public final void onClick(View v) {
                    if (PwdUtil.checkPassword(LockScreenService.this.getApplicationContext(), LockScreenService.b.getText().toString())) {
                        LockScreenService.c.setClickable(false);
                        if (LockScreenService.i) {
                            LockScreenService.i = false;
                            Log.i("test", "lockscreen onclick");
                            LockScreenService.this.stopService(new Intent("com.lenovo.antitheft.ALARM"));
                            LockScreenService.h.edit().putBoolean("all", false).commit();
                            LockScreenService.h.edit().putBoolean("locked", false).commit();
                            LockScreenService.h.edit().putBoolean("alarm", false).commit();
                            LockScreenService.h.edit().putBoolean("sim_changed_locked_screen", false).commit();
                            MyUtils.isLocked = false;
                            LockScreenService.this.l.sendEmptyMessage(2);
                            if (LockScreenService.k != null) {
                                LockScreenService.k.release();
                            }
                            new Thread() {
                                /* class com.lenovo.safecenter.broadcast.LockScreenService.AnonymousClass1.AnonymousClass1 */

                                public final void run() {
                                    if (MyMultiSIMUtils.isMultiSim(LockScreenService.this)) {
                                        int[] states = MyMultiSIMUtils.getAllSimState(LockScreenService.this);
                                        int simState0 = states[0];
                                        int simState1 = states[1];
                                        boolean sim1Ready = simState0 == 5 || simState0 == 2 || simState0 == 3;
                                        boolean sim2Ready = simState1 == 5 || simState1 == 2 || simState1 == 3;
                                        String simSerialNumber1 = LockScreenService.this.getSimSerialNumber(0, sim1Ready, LockScreenService.this);
                                        String simSerialNumber2 = LockScreenService.this.getSimSerialNumber(1, sim2Ready, LockScreenService.this);
                                        if (simSerialNumber1 != null) {
                                            LockScreenService.h.edit().putString("ORG_SIM_NUMBER1", simSerialNumber1).commit();
                                        } else {
                                            LockScreenService.h.edit().putString("ORG_SIM_NUMBER1", "").commit();
                                        }
                                        if (simSerialNumber2 != null) {
                                            LockScreenService.h.edit().putString("ORG_SIM_NUMBER2", simSerialNumber2).commit();
                                        } else {
                                            LockScreenService.h.edit().putString("ORG_SIM_NUMBER2", "").commit();
                                        }
                                    } else {
                                        TelephonyManager mTelephonyMgr = (TelephonyManager) LockScreenService.this.getSystemService("phone");
                                        int SimState = mTelephonyMgr.getSimState();
                                        if (SimState == 5 || SimState == 2 || SimState == 3) {
                                            String simSerialNumber = null;
                                            while (simSerialNumber == null) {
                                                simSerialNumber = mTelephonyMgr.getSubscriberId();
                                                Log.e("test", "......" + simSerialNumber);
                                            }
                                            LockScreenService.h.edit().putString("ORG_SIM_NUMBER", simSerialNumber).commit();
                                        }
                                    }
                                    LockScreenService.this.stopSelf();
                                }
                            }.start();
                            return;
                        }
                        return;
                    }
                    LockScreenService.b.setText("");
                    LockScreenService.a.setText(R.string.pwd_error_tips);
                    LockScreenService.a.setTextColor(-65536);
                }
            });
            if (k != null) {
                k.acquire();
            }
            this.l.sendEmptyMessage(1);
            MyUtils.isLocked = true;
        }
        if (phoneNumber != null && !phoneNumber.equals("")) {
            MyUtils.sendMsgToSafeNumber(this, phoneNumber, getString(R.string.lock_screen_ok) + getString(R.string.from_lesecurity));
        }
        return super.onStartCommand(intent, flags, startId);
    }

    public String getSimSerialNumber(int id, boolean state, Context context) {
        if (!state) {
            return null;
        }
        String number = MultiSIMUtils.getDefault(context).getSubscriberId(id);
        while (true) {
            if (number != null && !"".equals(number)) {
                return number;
            }
            number = MultiSIMUtils.getDefault(context).getSubscriberId(id);
            Log.e("test", "......get sim " + id + ": " + number);
        }
    }
}
