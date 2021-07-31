package com.lenovo.safecenter.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.lenovo.safecenter.R;

public class Panel extends LinearLayout {
    public static final int BOTTOM = 1;
    public static final int LEFT = 2;
    public static final int RIGHT = 3;
    public static final int TOP = 0;
    private float A;
    private float B;
    private OnPanelListener C;
    private c D;
    private Interpolator E;
    private GestureDetector F;
    private int G;
    private int H;
    private int I;
    private float J;
    private a K;
    private boolean L;
    private View M;
    View.OnTouchListener a = new View.OnTouchListener() {
        /* class com.lenovo.safecenter.utils.Panel.AnonymousClass1 */

        public final boolean onTouch(View v, MotionEvent event) {
            if (Panel.this.f) {
                return true;
            }
            int action = event.getAction();
            if (action == 0 && Panel.this.L) {
                Panel.this.bringToFront();
            }
            if (!Panel.this.F.onTouchEvent(event) && action == 1) {
                long now = SystemClock.uptimeMillis();
                Panel.this.d = now;
                Panel.this.e = 16 + now;
                Panel.this.f = true;
                Panel.this.b.removeMessages(1000);
                Panel.this.b.removeMessages(2000);
                Panel.this.b.sendMessageAtTime(Panel.this.b.obtainMessage(2000), Panel.this.e);
            }
            return false;
        }
    };
    private final Handler b = new b(this, (byte) 0);
    private float c;
    private long d;
    private long e;
    private boolean f;
    private final int g;
    private final int h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private boolean o;
    private int p;
    private int q;
    private boolean r;
    private int s;
    private int t;
    private int u;
    private View v;
    private View w;
    private Drawable x;
    private Drawable y;
    private float z;

    public interface OnPanelListener {
        void onPanelClosed(Panel panel);

        void onPanelOpened(Panel panel);
    }

    /* access modifiers changed from: private */
    public enum c {
        ABOUT_TO_ANIMATE,
        ANIMATING,
        READY,
        TRACKING,
        FLYING,
        CLICK
    }

    static /* synthetic */ float a(float x1, int x2, int x3) {
        return Math.min(Math.max(x1, (float) x2), (float) x3);
    }

    static /* synthetic */ void u(Panel x0) {
        if (x0.f) {
            long uptimeMillis = SystemClock.uptimeMillis();
            float f2 = ((float) (uptimeMillis - x0.d)) / 1000.0f;
            float f3 = x0.B;
            float f4 = x0.c;
            x0.B = (f4 * f2) + f3;
            x0.d = uptimeMillis;
            switch (x0.p) {
                case 0:
                    x0.A = x0.A + (f3 * f2) + (0.5f * f4 * f2 * f2);
                    if (x0.A <= 0.0f) {
                        if (x0.A < ((float) (-x0.G))) {
                            x0.A = (float) (-x0.G);
                            if (x0.a()) {
                                x0.w.setVisibility(8);
                            } else {
                                x0.M.setVisibility(8);
                            }
                            x0.D = c.READY;
                            x0.f = false;
                            break;
                        }
                    } else {
                        x0.A = 0.0f;
                        x0.D = c.READY;
                        x0.f = false;
                        break;
                    }
                    break;
                case 1:
                    x0.A = x0.A + (f3 * f2) + (0.5f * f4 * f2 * f2);
                    if (x0.A >= 0.0f) {
                        if (x0.A > ((float) x0.G)) {
                            x0.A = (float) x0.G;
                            if (x0.a()) {
                                x0.w.setVisibility(8);
                            } else {
                                x0.M.setVisibility(8);
                            }
                            x0.D = c.READY;
                            x0.f = false;
                            break;
                        }
                    } else {
                        x0.A = 0.0f;
                        x0.D = c.READY;
                        x0.f = false;
                        break;
                    }
                    break;
                case 2:
                    x0.z = x0.z + (f3 * f2) + (0.5f * f4 * f2 * f2);
                    if (x0.z <= 0.0f) {
                        if (x0.z < ((float) (-x0.H))) {
                            x0.z = (float) (-x0.H);
                            x0.M.setVisibility(8);
                            x0.D = c.READY;
                            x0.f = false;
                            break;
                        }
                    } else {
                        x0.z = 0.0f;
                        x0.D = c.READY;
                        x0.f = false;
                        break;
                    }
                    break;
                case 3:
                    x0.z = x0.z + (f3 * f2) + (0.5f * f4 * f2 * f2);
                    if (x0.z >= 0.0f) {
                        if (x0.z > ((float) x0.H)) {
                            x0.z = (float) x0.H;
                            if (x0.a()) {
                                x0.w.setVisibility(8);
                            } else {
                                x0.M.setVisibility(8);
                            }
                            x0.D = c.READY;
                            x0.f = false;
                            break;
                        }
                    } else {
                        x0.z = 0.0f;
                        x0.D = c.READY;
                        x0.f = false;
                        break;
                    }
                    break;
            }
            x0.invalidate();
            if (!x0.f) {
                x0.b();
                return;
            }
            x0.e += 16;
            x0.b.sendMessageAtTime(x0.b.obtainMessage(1000), x0.e);
        }
    }

    static /* synthetic */ void v(Panel x0) {
        boolean z2 = true;
        switch (x0.p) {
            case 0:
                if (!x0.o) {
                    x0.B = (float) x0.g;
                    x0.c = (float) x0.h;
                    if (x0.z == 0.0f && x0.D == c.ABOUT_TO_ANIMATE) {
                        x0.A = (float) (-x0.G);
                        break;
                    }
                } else {
                    x0.B = (float) (-x0.g);
                    x0.c = (float) (-x0.h);
                    break;
                }
            case 1:
                if (!x0.o) {
                    x0.B = (float) (-x0.g);
                    x0.c = (float) (-x0.h);
                    if (x0.z == 0.0f && x0.D == c.ABOUT_TO_ANIMATE) {
                        x0.A = (float) x0.G;
                        break;
                    }
                } else {
                    x0.B = (float) x0.g;
                    x0.c = (float) x0.h;
                    break;
                }
            case 2:
                if (!x0.o) {
                    x0.B = (float) x0.g;
                    x0.c = (float) x0.h;
                    if (x0.z == 0.0f && x0.D == c.ABOUT_TO_ANIMATE) {
                        x0.z = (float) (-x0.H);
                        break;
                    }
                } else {
                    x0.B = (float) (-x0.g);
                    x0.c = (float) (-x0.h);
                    break;
                }
            case 3:
                if (!x0.o) {
                    x0.B = (float) (-x0.g);
                    x0.c = (float) (-x0.h);
                    if (x0.z == 0.0f && x0.D == c.ABOUT_TO_ANIMATE) {
                        x0.z = (float) x0.H;
                        break;
                    }
                } else {
                    x0.B = (float) x0.g;
                    x0.c = (float) x0.h;
                    break;
                }
        }
        if (x0.D == c.TRACKING) {
            if (x0.isOpen()) {
                if ((x0.I == 1 && Math.abs(x0.A) < ((float) x0.G) / 2.0f) || (x0.I == 0 && Math.abs(x0.z) < ((float) x0.H) / 2.0f)) {
                    x0.B = -x0.B;
                    x0.c = -x0.c;
                    if (x0.o) {
                        z2 = false;
                    }
                    x0.o = z2;
                }
            } else if ((x0.I == 1 && Math.abs(x0.A) > ((float) x0.G) / 2.0f) || (x0.I == 0 && Math.abs(x0.z) > ((float) x0.H) / 2.0f)) {
                x0.B = -x0.B;
                x0.c = -x0.c;
                if (x0.o) {
                    z2 = false;
                }
                x0.o = z2;
            }
        }
        if (x0.D != c.FLYING && x0.D != c.TRACKING) {
            x0.D = c.CLICK;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Panel(Context context, AttributeSet attrs) {
        super(context, attrs);
        int i2 = 1;
        TypedArray a2 = context.obtainStyledAttributes(attrs, R.styleable.Panel);
        this.q = a2.getInteger(0, 750);
        this.p = a2.getInteger(1, 1);
        this.r = a2.getBoolean(6, false);
        this.J = a2.getFraction(7, 0, 1, 0.0f);
        if (this.J < 0.0f || this.J > 1.0f) {
            this.J = 0.0f;
            Log.w("Panel", a2.getPositionDescription() + ": weight must be > 0 and <= 1");
        }
        this.x = a2.getDrawable(8);
        this.y = a2.getDrawable(9);
        RuntimeException e2 = null;
        this.s = a2.getResourceId(2, 0);
        e2 = this.s == 0 ? new IllegalArgumentException(a2.getPositionDescription() + ": The handle attribute is required and must refer to a valid child.") : e2;
        this.t = a2.getResourceId(4, 0);
        e2 = this.t == 0 ? new IllegalArgumentException(a2.getPositionDescription() + ": The content attribute is required and must refer to a valid child.") : e2;
        this.u = a2.getResourceId(5, 0);
        a2.recycle();
        float density = getResources().getDisplayMetrics().density;
        this.g = (int) ((200.0f * density) + 0.5f);
        this.h = (int) ((2000.0f * density) + 0.5f);
        if (e2 != null) {
            throw e2;
        }
        if (!(this.p == 0 || this.p == 1)) {
            i2 = 0;
        }
        this.I = i2;
        setOrientation(this.I);
        this.D = c.READY;
        this.K = new a();
        this.F = new GestureDetector(this.K);
        this.F.setIsLongpressEnabled(false);
        setBaselineAligned(false);
    }

    public void setOnPanelListener(OnPanelListener onPanelListener) {
        this.C = onPanelListener;
    }

    public View getHandle() {
        return this.v;
    }

    public View getContent() {
        return this.w;
    }

    public void setInterpolator(Interpolator i2) {
        this.E = i2;
    }

    public boolean setOpen(boolean open, boolean animate) {
        int i2 = 0;
        if (this.D != c.READY || !(isOpen() ^ open)) {
            return false;
        }
        this.o = !open;
        if (animate) {
            this.D = c.ABOUT_TO_ANIMATE;
            if (!this.o) {
                this.M.setVisibility(0);
            }
            long now = SystemClock.uptimeMillis();
            this.d = now;
            this.e = 16 + now;
            this.f = true;
            this.b.removeMessages(1000);
            this.b.removeMessages(2000);
            this.b.sendMessageAtTime(this.b.obtainMessage(2000), this.e);
            return true;
        }
        View view = this.M;
        if (!open) {
            i2 = 8;
        }
        view.setVisibility(i2);
        b();
        return true;
    }

    public boolean isOpen() {
        return a() ? this.w.getVisibility() == 0 : this.M.getVisibility() == 0;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        ViewGroup.LayoutParams params;
        super.onFinishInflate();
        this.v = findViewById(this.s);
        if (this.v == null) {
            throw new RuntimeException("Your Panel must have a child View whose id attribute is 'R.id." + getResources().getResourceEntryName(this.s) + "'");
        }
        this.v.setClickable(true);
        this.v.setOnTouchListener(this.a);
        this.w = findViewById(this.t);
        if (this.w == null) {
            throw new RuntimeException("Your Panel must have a child View whose id attribute is 'R.id." + getResources().getResourceEntryName(this.s) + "'");
        }
        this.M = findViewById(this.u);
        removeView(this.v);
        removeView(this.w);
        if (this.p == 0 || this.p == 2) {
            addView(this.w);
            addView(this.v);
        } else {
            addView(this.v);
            addView(this.w);
        }
        if (this.y != null) {
            this.v.setBackgroundDrawable(this.y);
        }
        this.w.setClickable(true);
        if (a()) {
            this.w.setVisibility(8);
        } else {
            this.M.setVisibility(8);
        }
        if (this.J > 0.0f) {
            if (a()) {
                params = this.w.getLayoutParams();
            } else {
                params = this.M.getLayoutParams();
            }
            if (this.I == 1) {
                params.height = -1;
            } else {
                params.width = -1;
            }
            if (a()) {
                this.w.setLayoutParams(params);
            } else {
                this.M.setLayoutParams(params);
            }
        }
    }

    private boolean a() {
        if (this.M == null) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof FrameLayout)) {
            this.L = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View parent;
        if (this.J > 0.0f && isOpen() && (parent = (View) getParent()) != null) {
            if (this.I == 1) {
                heightMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (((float) parent.getHeight()) * this.J), 1073741824);
            } else {
                widthMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (((float) parent.getWidth()) * this.J), 1073741824);
            }
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean changed, int l2, int t2, int r2, int b2) {
        super.onLayout(changed, l2, t2, r2, b2);
        if (a()) {
            this.H = this.w.getWidth();
            this.G = this.w.getHeight();
            return;
        }
        this.H = this.M.getWidth();
        this.G = this.M.getHeight();
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        if (this.D == c.ABOUT_TO_ANIMATE && !this.o) {
            int delta = this.I == 1 ? this.G : this.H;
            if (this.p == 2 || this.p == 0) {
                delta = -delta;
            }
            if (this.I == 1) {
                canvas.translate(0.0f, (float) delta);
            } else {
                canvas.translate((float) delta, 0.0f);
            }
        }
        if (this.D == c.TRACKING || this.D == c.FLYING || this.D == c.CLICK) {
            canvas.translate(this.z, this.A);
        }
        super.dispatchDraw(canvas);
    }

    public boolean initChange() {
        if (this.D != c.READY) {
            return false;
        }
        this.D = c.ABOUT_TO_ANIMATE;
        this.o = isOpen();
        if (!this.o) {
            if (a()) {
                this.w.setVisibility(0);
            } else {
                this.M.setVisibility(0);
            }
        }
        return true;
    }

    private void b() {
        if (!isOpen() && this.o && this.y != null) {
            this.v.setBackgroundDrawable(this.y);
        } else if (isOpen() && !this.o && this.x != null) {
            this.v.setBackgroundDrawable(this.x);
        }
        if (this.C == null) {
            return;
        }
        if (!isOpen()) {
            this.C.onPanelClosed(this);
        } else {
            this.C.onPanelOpened(this);
        }
    }

    class a implements GestureDetector.OnGestureListener {
        float a;
        float b;

        a() {
        }

        public final boolean onDown(MotionEvent e) {
            this.a = 0.0f;
            this.b = 0.0f;
            Panel.this.i = Panel.this.k = Panel.this.j = Panel.this.l = -1.0f;
            Panel.this.m = Panel.this.n = -1.0f;
            Panel.this.initChange();
            return true;
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            float velocityX2;
            float velocityY2;
            Panel.this.D = c.FLYING;
            if (Panel.this.i == -1.0f && Panel.this.j == -1.0f) {
                velocityX2 = ((Panel.this.k - e1.getRawX()) / (Panel.this.n - ((float) e1.getEventTime()))) * 1000.0f;
                velocityY2 = ((Panel.this.l - e1.getRawY()) / (Panel.this.n - ((float) e1.getEventTime()))) * 1000.0f;
            } else {
                velocityX2 = ((Panel.this.k - Panel.this.i) / (Panel.this.n - Panel.this.m)) * 1000.0f;
                velocityY2 = ((Panel.this.l - Panel.this.j) / (Panel.this.n - Panel.this.m)) * 1000.0f;
            }
            Panel panel = Panel.this;
            if (Panel.this.I != 1) {
                velocityY2 = velocityX2;
            }
            panel.B = velocityY2;
            if (Math.abs(Panel.this.B) <= 50.0f) {
                return false;
            }
            if (Panel.this.B > 0.0f) {
                Panel.this.c = (float) Panel.this.h;
            } else {
                Panel.this.c = (float) (-Panel.this.h);
            }
            long now = SystemClock.uptimeMillis();
            Panel.this.d = now;
            Panel.this.e = 16 + now;
            Panel.this.f = true;
            Panel.this.b.removeMessages(1000);
            Panel.this.b.removeMessages(2000);
            Panel.this.b.sendMessageAtTime(Panel.this.b.obtainMessage(1000), Panel.this.e);
            return true;
        }

        public final void onLongPress(MotionEvent e) {
        }

        public final boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            Panel.this.D = c.TRACKING;
            float tmpY = 0.0f;
            float tmpX = 0.0f;
            if (Panel.this.I == 1) {
                this.a -= distanceY;
                if (Panel.this.p == 0) {
                    Panel panel = Panel.this;
                    tmpY = Panel.a(this.a, -Panel.this.G, 0);
                } else {
                    Panel panel2 = Panel.this;
                    tmpY = Panel.a(this.a, 0, Panel.this.G);
                }
            } else {
                this.b -= distanceX;
                if (Panel.this.p == 2) {
                    Panel panel3 = Panel.this;
                    tmpX = Panel.a(this.b, -Panel.this.H, 0);
                } else {
                    Panel panel4 = Panel.this;
                    tmpX = Panel.a(this.b, 0, Panel.this.H);
                }
            }
            if (!(tmpX == Panel.this.z && tmpY == Panel.this.A)) {
                Panel.this.z = tmpX;
                Panel.this.A = tmpY;
            }
            Panel.this.invalidate();
            Panel.this.i = Panel.this.k;
            Panel.this.j = Panel.this.l;
            Panel.this.m = Panel.this.n;
            Panel.this.k = e2.getRawX();
            Panel.this.l = e2.getRawY();
            Panel.this.n = (float) e2.getEventTime();
            return true;
        }

        public final void onShowPress(MotionEvent e) {
        }

        public final boolean onSingleTapUp(MotionEvent e) {
            return false;
        }
    }

    private class b extends Handler {
        private b() {
        }

        /* synthetic */ b(Panel x0, byte b) {
            this();
        }

        public final void handleMessage(Message m) {
            switch (m.what) {
                case 1000:
                    Panel.u(Panel.this);
                    return;
                case 2000:
                    Panel.v(Panel.this);
                    Panel.u(Panel.this);
                    return;
                default:
                    return;
            }
        }
    }
}
