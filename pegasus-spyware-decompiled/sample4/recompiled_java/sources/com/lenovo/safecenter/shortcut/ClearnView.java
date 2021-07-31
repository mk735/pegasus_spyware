package com.lenovo.safecenter.shortcut;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ClipDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import android.widget.AbsoluteLayout;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.MemoryTools;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.PerfWhitelistActivity;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.performancecenter.service.object.KillAllPackageReceiver;
import com.lenovo.safecenter.MainTab.SplashActivity;
import com.lenovo.safecenter.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ClearnView extends LinearLayout {
    public static final String ONEKEY_LAUNCHER = "onekey_launcher";
    public static final String ONEKEY_SHORTCUT = "shortcut";
    public static final String ONEKEY_WIDGET = "widget";
    private RelativeLayout A;
    private int B = 100;
    private int[] C;
    private boolean a = false;
    private long b;
    private int c = 0;
    private Handler d = new Handler() {
        /* class com.lenovo.safecenter.shortcut.ClearnView.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0 && !ClearnView.this.a) {
                ViewManager.removeView(ClearnView.this.g, ClearnView.this);
            }
        }
    };
    private Animation.AnimationListener e = new Animation.AnimationListener() {
        /* class com.lenovo.safecenter.shortcut.ClearnView.AnonymousClass2 */

        public final void onAnimationStart(Animation animation) {
        }

        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationEnd(Animation animation) {
            if (animation.hashCode() == ClearnView.this.h.hashCode()) {
                ClearnView.d(ClearnView.this);
            } else if (animation.hashCode() == ClearnView.this.i.hashCode()) {
                ClearnView.this.l.setVisibility(4);
                ClearnView.this.startDiyAnim();
                ClearnView.this.a = false;
                ClearnView.this.d.sendEmptyMessageDelayed(0, 800);
            } else if (animation.hashCode() == ClearnView.this.k.hashCode()) {
                ClearnView.this.a = true;
                if (ClearnView.this.v) {
                    ClearnView.a(ClearnView.this, ClearnView.this.r, ClearnView.this.s, ClearnView.this.y);
                    ClearnView.this.A.setVisibility(0);
                } else {
                    ClearnView.a(ClearnView.this, ClearnView.this.t, ClearnView.this.u, ClearnView.this.x);
                    ClearnView.this.z.setVisibility(0);
                }
                KillAllPackageReceiver.sendBroadcastAboutExeClearShortcut(ClearnView.this.g, Utils.getEndMemory(ClearnView.this.g));
                ClearnView.this.doFade();
            } else if (animation.hashCode() == ClearnView.this.j.hashCode()) {
                ViewManager.removeView(ClearnView.this.g, ClearnView.this);
            }
        }
    };
    private View.OnClickListener f = new View.OnClickListener() {
        /* class com.lenovo.safecenter.shortcut.ClearnView.AnonymousClass3 */

        public final void onClick(View v) {
            ClearnView clearnView = ClearnView.this;
            if (ClearnView.b(ClearnView.this.g)) {
                Intent intent = new Intent(ClearnView.this.g, SplashActivity.class);
                intent.setFlags(268468224);
                ClearnView.this.g.startActivity(intent);
            } else {
                Intent intent2 = new Intent(ClearnView.this.g, PerfWhitelistActivity.class);
                intent2.setFlags(268468224);
                ClearnView.this.g.startActivity(intent2);
            }
            ViewManager.removeView(ClearnView.this.g, ClearnView.this);
        }
    };
    private Context g;
    private Animation h;
    private Animation i;
    private Animation j;
    private a k;
    private ImageView l;
    private TextView m;
    private ImageView n;
    private ClipDrawable o;
    private ViewGroup p;
    private ViewGroup q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private boolean v;
    private b w;
    private Button x;
    private Button y;
    private RelativeLayout z;

    public interface WriteText {
        void a(TextView textView);
    }

    static /* synthetic */ void a(ClearnView x0, TextView x1, TextView x2, Button x3) {
        int i2 = x0.C[0];
        int i3 = x0.C[1];
        x3.setOnClickListener(x0.f);
        if (x0.b <= Utils.CLICK_INTERVAL && x0.b >= 0) {
            x1.setText(x0.g.getString(R.string.one_key_widget_clear_just_done1));
            x2.setText(x0.g.getString(R.string.one_key_widget_clear_just_done2));
        } else if (i2 == 0) {
            x1.setText(x0.g.getString(R.string.one_key_widget_clear_just_done1));
            x2.setText(x0.g.getString(R.string.one_key_widget_clear_just_done2));
        } else {
            x1.setText(Html.fromHtml(x0.g.getString(R.string.one_key_widget_clear_app_count, Integer.valueOf(i2))));
            x2.setText(Html.fromHtml(x0.g.getString(R.string.one_key_widget_clear_app_size, Formatter.formatFileSize(x0.g, (long) i3))));
        }
    }

    static /* synthetic */ void d(ClearnView x0) {
        final int i2;
        Log.i("OPTI", System.currentTimeMillis() + " ---> start");
        MemoryTools memoryTools = new MemoryTools();
        if (x0.b > Utils.CLICK_INTERVAL || x0.b < 0 || x0.c != 3) {
            x0.B = memoryTools.getSystemMeminfo();
        } else {
            x0.B = Utils.getEndMemory(x0.g);
        }
        x0.m.setText(x0.B + "%");
        x0.C = x0.a(x0.w);
        long totalMemory = ((long) ((x0.C[1] / 1024) * 100)) / memoryTools.getTotalMemory();
        if (x0.b > Utils.CLICK_INTERVAL || x0.b < 0) {
            i2 = x0.B - ((int) totalMemory);
            if (i2 < 0) {
                i2 = 0;
            }
        } else {
            i2 = x0.B;
        }
        Utils.recordEndMemory(x0.g, i2);
        Log.i("CleanView", "mScale == " + x0.B + " ---- " + " endScale == " + i2);
        final int i3 = 800 / (x0.B + i2);
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.shortcut.ClearnView.AnonymousClass4 */

            public final void run() {
                Message msg1 = new Message();
                msg1.what = 1;
                msg1.arg1 = ClearnView.this.B * 100;
                msg1.arg2 = ClearnView.this.B;
                ClearnView.this.w.sendMessage(msg1);
                try {
                    Thread.sleep(500);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                while (ClearnView.this.B > 0) {
                    ClearnView.u(ClearnView.this);
                    Message msg = new Message();
                    msg.what = 1;
                    msg.arg1 = ClearnView.this.B * 100;
                    msg.arg2 = ClearnView.this.B;
                    ClearnView.this.w.sendMessage(msg);
                    try {
                        Thread.sleep((long) i3);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
                while (ClearnView.this.B < i2) {
                    ClearnView.v(ClearnView.this);
                    Message msg2 = new Message();
                    msg2.what = 1;
                    msg2.arg1 = ClearnView.this.B * 100;
                    msg2.arg2 = ClearnView.this.B;
                    ClearnView.this.w.sendMessage(msg2);
                    try {
                        Thread.sleep((long) i3);
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }).start();
        x0.l.setAnimation(x0.i);
        x0.i.start();
    }

    static /* synthetic */ int u(ClearnView x0) {
        int i2 = x0.B - 1;
        x0.B = i2;
        return i2;
    }

    static /* synthetic */ int v(ClearnView x0) {
        int i2 = x0.B + 1;
        x0.B = i2;
        return i2;
    }

    /* access modifiers changed from: private */
    public static boolean b(Context context) {
        try {
            return context.getSharedPreferences("antitheft", 0).getBoolean("help" + context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode, true);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return true;
        }
    }

    public ClearnView(Context context) {
        super(context);
        this.g = context;
        addView(inflate(context, R.layout.shortcut_clear, null));
        this.w = new b();
        this.l = (ImageView) findViewById(R.id.clean_light_Image);
        this.m = (TextView) findViewById(R.id.clean_Value_Text);
        this.n = (ImageView) findViewById(R.id.clean_schedule_ImageView);
        this.o = (ClipDrawable) this.n.getDrawable();
        this.p = (ViewGroup) findViewById(R.id.toast_layout_left);
        this.q = (ViewGroup) findViewById(R.id.toast_layout_right);
        this.r = (TextView) findViewById(R.id.txt_toast_right1);
        this.s = (TextView) findViewById(R.id.txt_toast_right2);
        this.t = (TextView) findViewById(R.id.txt_toast_left1);
        this.u = (TextView) findViewById(R.id.txt_toast_left2);
        this.h = AnimationUtils.loadAnimation(context, R.anim.shortcard_process_clear_enlarge);
        this.i = AnimationUtils.loadAnimation(context, R.anim.shortcard_process_clear_rotate);
        this.j = AnimationUtils.loadAnimation(context, R.anim.shortcard_process_clear_fade);
        this.k = new a();
        this.k.setDuration(600);
        this.h.setAnimationListener(this.e);
        this.i.setAnimationListener(this.e);
        this.j.setAnimationListener(this.e);
        this.k.setAnimationListener(this.e);
        this.x = (Button) findViewById(R.id.txt_button_left);
        this.y = (Button) findViewById(R.id.txt_button_right);
        this.z = (RelativeLayout) findViewById(R.id.left);
        this.A = (RelativeLayout) findViewById(R.id.right);
    }

    public void startDiyAnim() {
        setAnimation(this.k);
        this.k.start();
    }

    public void doFade() {
        setAnimation(this.j);
        this.j.start();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.i("CleanView", System.currentTimeMillis() + "---> onAttachedToWindow");
        long lastClickTime = Utils.getLastKillTime(this.g);
        long nowClickTime = System.currentTimeMillis();
        this.b = nowClickTime - lastClickTime;
        this.c = Utils.getLastClickPosition(this.g);
        Log.i("CleanView", "lastClick == " + lastClickTime + " nowClick == " + nowClickTime + " interval == " + this.b + " position == " + this.c);
        Utils.recordKillTimeAndPosition(this.g, nowClickTime, 3);
        setAnimation(this.h);
        this.h.start();
    }

    /* access modifiers changed from: package-private */
    public class a extends Animation {
        private int b = 0;
        private View c = null;
        private int d = 0;
        private int e = 0;

        a() {
        }

        /* access modifiers changed from: protected */
        public final void applyTransformation(float interpolatedTime, Transformation t) {
            super.applyTransformation(interpolatedTime, t);
            if (this.c == null) {
                Log.i("CleanView", " view == null");
                this.c = (View) ClearnView.this.getParent();
                this.b = ((AbsoluteLayout.LayoutParams) ClearnView.this.getLayoutParams()).x;
                Log.i("CleanView", " view == null this.mX == " + this.b);
                if (this.b + (ClearnView.this.getWidth() / 2) < this.c.getWidth() / 2) {
                    Log.i("CleanView", " this.mX + getWidth() / 2 < this.c.getWidth() / 2 ");
                    ClearnView.this.v = true;
                    this.d = ClearnView.this.g.getResources().getDimensionPixelSize(R.dimen.clear_shortcute_toast_left_length);
                    return;
                }
                ClearnView.this.v = false;
                this.d = ClearnView.this.g.getResources().getDimensionPixelSize(R.dimen.clear_shortcute_toast_right_length);
                return;
            }
            int i = (int) (((float) this.d) * interpolatedTime);
            if (i != this.e) {
                this.e = i;
            }
            Log.i("CleanView", " i == " + i);
            if (ClearnView.this.v) {
                ClearnView.this.q.getLayoutParams().width = i;
                ClearnView.this.q.requestLayout();
                return;
            }
            ClearnView.this.p.getLayoutParams().width = i;
            ClearnView.this.p.requestLayout();
            ((AbsoluteLayout.LayoutParams) ClearnView.this.getLayoutParams()).x = this.b - i;
            ClearnView.this.requestLayout();
        }
    }

    private int[] a(final Handler handler) {
        Log.i("OPTI", System.currentTimeMillis() + " ---> start Read App List");
        HashMap<String, int[]> readRunningAppCount = ScanApplicationInfo.getRunningAppInfo(this.g);
        Log.i("OPTI", System.currentTimeMillis() + " ---> ok Read App List " + readRunningAppCount.size());
        int killedCount = 0;
        int clearedMemory = 0;
        final ArrayList<String> pkgList = new ArrayList<>();
        for (Map.Entry<String, int[]> element : readRunningAppCount.entrySet()) {
            pkgList.add(element.getKey());
            clearedMemory += element.getValue()[1];
            if (element.getValue()[2] == 1) {
                killedCount++;
            }
        }
        Log.i("OPTI", System.currentTimeMillis() + " ---> start Thread to kill");
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.shortcut.ClearnView.AnonymousClass5 */

            public final void run() {
                RootPassage.execRootCmd(handler, pkgList, " -fs ", ClearnView.this.g);
                Log.i("OPTI", System.currentTimeMillis() + " ---> ok Thread to kill");
            }
        }).start();
        return new int[]{killedCount, clearedMemory};
    }

    /* access modifiers changed from: package-private */
    public class b extends Handler {
        b() {
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ClearnView.this.o.setLevel(msg.arg1);
                    ClearnView.this.m.setText(msg.arg2 + "%");
                    return;
                default:
                    return;
            }
        }
    }
}
