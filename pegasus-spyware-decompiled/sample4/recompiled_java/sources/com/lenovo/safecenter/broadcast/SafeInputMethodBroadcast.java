package com.lenovo.safecenter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import java.util.List;

public class SafeInputMethodBroadcast extends BroadcastReceiver {
    private static WindowManager a;
    private static boolean c = false;
    private static String d = "";
    private static long e = 0;
    private static boolean f = false;
    private static Thread g;
    private static String h = "";
    private static EditText i;
    private static boolean j = false;
    private static long k = 0;
    private WindowManager.LayoutParams b;
    private Context l;
    private InputMethodManager m;
    private SharedPreferences n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.broadcast.SafeInputMethodBroadcast.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Log.i("ydp", "in handler");
                    SafeInputMethodBroadcast.a.addView(SafeInputMethodBroadcast.i, SafeInputMethodBroadcast.this.b);
                    SafeInputMethodBroadcast.i.setFocusable(true);
                    SafeInputMethodBroadcast.a.removeView(SafeInputMethodBroadcast.i);
                    SafeInputMethodBroadcast.this.m.toggleSoftInput(0, 2);
                    return;
                case 2:
                    Toast t = new Toast(SafeInputMethodBroadcast.this.l);
                    View layout = LayoutInflater.from(SafeInputMethodBroadcast.this.l).inflate(R.layout.toast, (ViewGroup) null);
                    ((TextView) layout.findViewById(R.id.toast_title)).setText(R.string.inputmethodswitch);
                    t.setGravity(49, 0, 0);
                    t.setDuration(0);
                    t.setView(layout);
                    t.show();
                    return;
                default:
                    return;
            }
        }
    };

    public void onReceive(final Context context, Intent intent) {
        boolean z;
        Configuration config = context.getResources().getConfiguration();
        this.l = context;
        this.m = (InputMethodManager) this.l.getSystemService("input_method");
        List<InputMethodInfo> enabledInputMethodList = ((InputMethodManager) this.l.getSystemService("input_method")).getEnabledInputMethodList();
        int i2 = 0;
        while (true) {
            if (i2 >= enabledInputMethodList.size()) {
                z = false;
                break;
            }
            String id = enabledInputMethodList.get(i2).getId();
            if (id.equals("com.android.inputmethod.latin/.LatinIME")) {
                Log.i("info", "id:" + id);
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            Settings.System.putInt(this.l.getContentResolver(), "safeinputmethod_on", 0);
            return;
        }
        a = (WindowManager) context.getSystemService("window");
        this.n = PreferenceManager.getDefaultSharedPreferences(context);
        this.n.edit().putInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, 1).commit();
        if (this.b == null) {
            this.b = new WindowManager.LayoutParams();
            this.b.width = -2;
            this.b.height = -2;
            this.b.flags = 1280;
            this.b.type = 2002;
        }
        if (i == null) {
            i = new EditText(context);
        }
        f = intent.getBooleanExtra("isPassword", false);
        if (config.orientation != 2 || f) {
            if (f) {
                this.o.sendEmptyMessage(2);
            }
            Log.w("ydp", "isPwd:" + f);
            d = intent.getStringExtra("oldInputMethod");
            c = intent.getBooleanExtra("onlySend", false);
            Log.i("ydp", "sendonly:" + c);
            if (c) {
                Log.i("ydp", "sendonly return");
                Settings.System.putString(context.getContentResolver(), "old_input", "");
                return;
            }
            String s = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
            if (SecurityService.mSIL().get(s) == null && !s.equals("com.android.inputmethod.pinyin/.PinyinIME") && !s.equals("com.google.android.inputmethod.pinyin/.PinyinIME")) {
                if (d != null && !d.equals("")) {
                    h = d;
                }
                if (g == null && System.currentTimeMillis() - e > 2000) {
                    if (f) {
                        b("com.android.inputmethod.latin/.LatinIME");
                        Settings.System.putString(context.getContentResolver(), "old_input", h);
                    } else {
                        b(h);
                        Settings.System.putString(context.getContentResolver(), "old_input", "");
                        h = "";
                    }
                    e = System.currentTimeMillis();
                } else if (g == null) {
                    g = new Thread() {
                        /* class com.lenovo.safecenter.broadcast.SafeInputMethodBroadcast.AnonymousClass1 */

                        public final void run() {
                            Log.i("ydp", "in thread");
                            try {
                                Thread.sleep(500);
                                while (SafeInputMethodBroadcast.j) {
                                    Thread.sleep(150);
                                    if (System.currentTimeMillis() - SafeInputMethodBroadcast.k > 1000) {
                                        boolean unused = SafeInputMethodBroadcast.j = false;
                                    }
                                    Log.i("ydp", "in the add");
                                }
                                if (SafeInputMethodBroadcast.f && !SafeInputMethodBroadcast.c) {
                                    SafeInputMethodBroadcast.this.b((SafeInputMethodBroadcast) "com.android.inputmethod.latin/.LatinIME");
                                    Settings.System.putString(context.getContentResolver(), "old_input", SafeInputMethodBroadcast.h);
                                } else if (!SafeInputMethodBroadcast.f) {
                                    SafeInputMethodBroadcast.this.b((SafeInputMethodBroadcast) SafeInputMethodBroadcast.h);
                                    Settings.System.putString(context.getContentResolver(), "old_input", "");
                                    String unused2 = SafeInputMethodBroadcast.h = "";
                                }
                                Thread.sleep(500);
                                long unused3 = SafeInputMethodBroadcast.e = System.currentTimeMillis();
                                Thread unused4 = SafeInputMethodBroadcast.g = null;
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    };
                    g.start();
                } else {
                    j = true;
                    k = System.currentTimeMillis();
                }
            }
        } else {
            Log.i("ydp", "orientation return");
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b(String id) {
        if (id != null) {
            try {
                if (!id.equals("")) {
                    this.m.hideSoftInputFromWindow(null, 2);
                    this.m.setInputMethod(null, id);
                    Settings.System.putString(this.l.getContentResolver(), "safe_input_method", "com.android.inputmethod.latin/.LatinIME");
                }
            } catch (Exception e2) {
                Log.e("ydp", "SwitchInputMethod error" + e2);
            }
        }
    }
}
