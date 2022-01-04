package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.lenovo.safecenter.floatwindow.data.SaveData;

public class FlowIcon extends FrameLayout implements View.OnTouchListener {
    private static int g = 400;
    private static int h = 400;
    private Context a;
    private FlowView b;
    private float c;
    private float d;
    private WindowManager.LayoutParams e;
    private WindowManager f;
    private int[] i = new int[0];
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private boolean p = false;
    private int q = 0;
    private boolean r;
    private ConnectivityManager s;
    private Handler t = new Handler() {
        /* class com.lenovo.safecenter.floatwindow.view.FlowIcon.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    FlowIcon.this.p = true;
                    FlowIcon.c(FlowIcon.this);
                    return;
                case 1:
                    FlowIcon.this.p = false;
                    if (FlowIcon.this.q <= 1) {
                        FlowIcon.this.b.setOnclickContent();
                    }
                    FlowIcon.this.q = 0;
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ int b(FlowIcon x0) {
        int i2 = x0.q;
        x0.q = i2 + 1;
        return i2;
    }

    static /* synthetic */ void c(FlowIcon x0) {
        new Thread() {
            /* class com.lenovo.safecenter.floatwindow.view.FlowIcon.AnonymousClass1 */

            public final void run() {
                super.run();
                while (FlowIcon.this.p) {
                    try {
                        sleep(200);
                        FlowIcon.b(FlowIcon.this);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
    }

    public FlowIcon(Context context) {
        super(context);
        this.a = context;
        if (this.f == null) {
            Context context2 = this.a;
            Context context3 = this.a;
            this.f = (WindowManager) context2.getSystemService("window");
        }
        this.e = new WindowManager.LayoutParams();
        this.i = SaveData.getFlowViewOptions(this.a);
        WindowManager.LayoutParams layoutParams = this.e;
        int i2 = this.i[0];
        g = i2;
        layoutParams.x = i2;
        WindowManager.LayoutParams layoutParams2 = this.e;
        int i3 = this.i[1];
        h = i3;
        layoutParams2.y = i3;
        WindowManager.LayoutParams layoutParams3 = this.e;
        layoutParams3.type = 2003;
        layoutParams3.flags |= 8;
        layoutParams3.width = -2;
        layoutParams3.height = -2;
        layoutParams3.format = -2;
        layoutParams3.gravity = 51;
        layoutParams3.x = g;
        layoutParams3.y = h;
        this.f.getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.b = new FlowView(this.a);
        addView(this.b);
        setOnTouchListener(this);
        this.s = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public void addView_iconBase() {
        try {
            if (this.s.getActiveNetworkInfo() != null && this.s.getActiveNetworkInfo().getState() == NetworkInfo.State.CONNECTED) {
                this.b.setFlowDrawable(this.s.getActiveNetworkInfo().getType());
                this.f.addView(this, this.e);
                this.b.sendHanderMessage();
            }
        } catch (Exception e2) {
        }
    }

    public void delView_iconBase() {
        try {
            this.b.setViewGone();
            this.f.removeView(this);
            this.b.removeHanderMessage();
        } catch (Exception e2) {
        }
    }

    public void setFlowWindowFixed(boolean isFixed, View viewFlow) {
        if (isFixed) {
            this.e.flags = 56;
        } else {
            this.e.flags = 8;
        }
        try {
            if (this.s != null && this.s.getActiveNetworkInfo() != null && this.s.getActiveNetworkInfo().getState() == NetworkInfo.State.CONNECTED) {
                this.f.updateViewLayout(viewFlow, this.e);
            }
        } catch (Exception e2) {
        }
    }

    public boolean onTouch(View view, MotionEvent event) {
        this.c = event.getRawX();
        this.d = event.getRawY() - 25.0f;
        if (!this.r) {
            this.j = this.c;
            this.k = this.d;
            this.r = true;
        }
        switch (event.getAction()) {
            case 0:
                this.n = event.getX();
                this.o = event.getY();
                this.t.sendEmptyMessage(0);
                break;
            case 1:
                this.f.updateViewLayout(view, this.e);
                SaveData.savaFlowViewOptions(this.a, this.e.x, this.e.y);
                this.r = false;
                this.t.sendEmptyMessage(1);
                break;
            case 2:
                this.l = event.getRawX();
                this.m = event.getRawY();
                try {
                    if (Math.abs(this.j - this.l) > 40.0f || Math.abs(this.k - this.m) > 40.0f) {
                        this.e.x = (int) (this.c - this.n);
                        this.e.y = (int) (this.d - this.o);
                        this.f.updateViewLayout(view, this.e);
                        break;
                    }
                } catch (IllegalArgumentException e2) {
                    break;
                }
        }
        return true;
    }
}
