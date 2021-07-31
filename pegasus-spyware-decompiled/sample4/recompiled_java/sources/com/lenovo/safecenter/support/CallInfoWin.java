package com.lenovo.safecenter.support;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class CallInfoWin {
    public static final String ERR_TAG = "CallInfoWin.java";
    Context a;
    private a b = null;
    private Handler c = new Handler() {
        /* class com.lenovo.safecenter.support.CallInfoWin.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            if (CallInfoWin.this.d != null) {
                CallInfoWin.this.d.setOnClickListener(null);
                CallInfoWin.this.d.setOnTouchListener(null);
            }
        }
    };
    private LinearLayout d;
    private boolean e;
    public DisplayMetrics mDm;
    public WindowManager.LayoutParams mLp = new WindowManager.LayoutParams();
    public WindowManager mWm;

    public CallInfoWin(Context context) {
        this.a = context;
        this.e = false;
    }

    public static boolean isScreenLocked(Context con) {
        return !((KeyguardManager) con.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static int getCallShowPostionX(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("callshow_ptx", 0);
    }

    public static int getCallShowPostionY(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("callshow_pty", (context.getResources().getDisplayMetrics().heightPixels / 2) - 50);
    }

    public static void setCallShowPostion(Context context, int x, int y) {
        SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putInt("callshow_ptx", x);
        editor.putInt("callshow_pty", y);
        editor.commit();
        editor.putBoolean("alreadyscroll", true).commit();
    }

    public void show(SpannableString text, boolean b2, String number, String address) {
        this.mWm = (WindowManager) this.a.getApplicationContext().getSystemService("window");
        this.mDm = this.a.getApplicationContext().getResources().getDisplayMetrics();
        this.d = new LinearLayout(this.a);
        LinearLayout rl = (LinearLayout) ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(R.layout.call_showupdate, (ViewGroup) null);
        LinearLayout all_bg = (LinearLayout) rl.findViewById(R.id.bg_lin);
        LinearLayout signshow = (LinearLayout) rl.findViewById(R.id.sign_showlin);
        LinearLayout stoplisten_lin = (LinearLayout) rl.findViewById(R.id.stoplisten_lin);
        LinearLayout lin_float3 = (LinearLayout) rl.findViewById(R.id.lin_float3);
        if (lin_float3 != null && Const.mDefaultPreference.getBoolean("alreadyscroll", false)) {
            lin_float3.setVisibility(8);
        }
        TextView pop_number = (TextView) rl.findViewById(R.id.pop_number);
        TextView pop_desc = (TextView) rl.findViewById(R.id.pop_desc);
        TextView float_top = (TextView) rl.findViewById(R.id.float_top);
        TextView float_bottom = (TextView) rl.findViewById(R.id.float_bottom);
        if (TextUtils.isEmpty(text)) {
            all_bg.setBackgroundResource(R.drawable.double_top);
            signshow.setVisibility(8);
            if (!Const.mDefaultPreference.getBoolean(Const.SWITCH_ANTI_TAPPING, true)) {
                stoplisten_lin.setVisibility(8);
                lin_float3.setVisibility(8);
            } else {
                stoplisten_lin.setVisibility(0);
                float_bottom.setVisibility(8);
                if (!TextUtils.isEmpty(address)) {
                    float_bottom.setVisibility(0);
                    float_bottom.setText(address);
                }
                float_top.setText(R.string.anti_tap_protect);
            }
        } else if (!Const.mDefaultPreference.getBoolean(Const.SWITCH_ANTI_TAPPING, true)) {
            all_bg.setBackgroundResource(R.drawable.double_top);
            signshow.setVisibility(8);
            float_bottom.setText(text);
            float_top.setText(number);
        } else {
            all_bg.setBackgroundResource(R.drawable.double_bottom);
            float_top.setText(R.string.anti_tap_protect);
            float_bottom.setVisibility(8);
            if (!TextUtils.isEmpty(address)) {
                float_bottom.setVisibility(0);
                float_bottom.setText(address);
            }
            pop_desc.setText(text);
            pop_number.setText(number);
        }
        this.mLp.flags = 40;
        this.mLp.type = 2003;
        this.mLp.format = 1;
        this.mLp.width = -2;
        this.mLp.height = -2;
        this.mLp.gravity = 49;
        this.mLp.x = getCallShowPostionX(this.a);
        this.mLp.y = getCallShowPostionY(this.a);
        this.d.addView(rl, this.mLp);
        this.mWm.addView(this.d, this.mLp);
        this.d.setOnTouchListener(new View.OnTouchListener() {
            /* class com.lenovo.safecenter.support.CallInfoWin.AnonymousClass2 */
            DisplayMetrics a = CallInfoWin.this.a.getResources().getDisplayMetrics();
            int b = this.a.widthPixels;
            int c = this.a.heightPixels;
            int[] d = {0, 0};

            public final boolean onTouch(View v, MotionEvent event) {
                int x = (int) event.getRawX();
                int y = (int) event.getRawY();
                switch (event.getAction()) {
                    case 0:
                        this.d[0] = x - CallInfoWin.this.mLp.x;
                        this.d[1] = y - CallInfoWin.this.mLp.y;
                        break;
                    case 1:
                        CallInfoWin.setCallShowPostion(CallInfoWin.this.a, CallInfoWin.this.mLp.x, CallInfoWin.this.mLp.y);
                        break;
                    case 2:
                        int l = x - this.d[0];
                        int t = y - this.d[1];
                        if (CallInfoWin.this.mLp.width + l > this.b) {
                            l = this.b - CallInfoWin.this.mLp.width;
                        }
                        if (t < 0) {
                            t = 0;
                        } else if (CallInfoWin.this.mLp.height + t > this.c) {
                            t = this.c - CallInfoWin.this.mLp.height;
                        }
                        CallInfoWin.this.mLp.x = (CallInfoWin.this.mLp.width / 2) + l;
                        CallInfoWin.this.mLp.y = t;
                        try {
                            CallInfoWin.this.mWm.updateViewLayout(CallInfoWin.this.d, CallInfoWin.this.mLp);
                            break;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            break;
                        }
                }
                return false;
            }
        });
        if (this.b == null) {
            this.b = new a(this, (byte) 0);
        }
        if (b2) {
            this.c.postDelayed(this.b, 5000);
        }
    }

    public void hide() {
        if (!this.e) {
            if (this.b != null) {
                this.c.removeCallbacks(this.b);
            }
            try {
                if (this.d != null) {
                    this.mWm.removeView(this.d);
                    setCallShowPostion(this.a, this.mLp.x, this.mLp.y);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.e = true;
        }
    }

    /* access modifiers changed from: private */
    public class a implements Runnable {
        private a() {
        }

        /* synthetic */ a(CallInfoWin x0, byte b) {
            this();
        }

        public final void run() {
            CallInfoWin.this.hide();
        }
    }
}
