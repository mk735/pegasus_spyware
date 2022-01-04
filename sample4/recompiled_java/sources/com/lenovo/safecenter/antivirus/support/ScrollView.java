package com.lenovo.safecenter.antivirus.support;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;

public class ScrollView extends ViewGroup {
    private GestureDetector a;
    private Context b;
    private boolean c;
    private Scroller d;
    private OnScreenChangeListener e;

    public interface OnScreenChangeListener {
        void screenChange(int i, int i2);
    }

    public ScrollView(Context context) {
        super(context);
        this.b = context;
        this.a = new GestureDetector(context, new a());
        this.d = new Scroller(context);
    }

    public ScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.b = context;
        this.a = new GestureDetector(context, new a());
        this.d = new Scroller(context);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean changed, int l, int t, int r, int b2) {
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            child.layout(getWidth() * i, 0, getWidth() * (i + 1), getHeight());
            child.measure(r - l, b2 - t);
        }
    }

    public boolean onTouchEvent(MotionEvent ev) {
        this.a.onTouchEvent(ev);
        switch (ev.getAction()) {
            case 1:
                if (!this.c) {
                    a();
                }
                this.c = false;
                return true;
            case 2:
            default:
                return true;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        int leftWidth = getScrollX();
        int tabs = leftWidth / getWidth();
        int len = leftWidth - (getWidth() * tabs);
        if (len < getWidth() / 2) {
            this.d.startScroll(leftWidth, 0, -len, 0, len * 2);
        } else {
            this.d.startScroll(leftWidth, 0, getWidth() - len, 0, len * 2);
            tabs++;
        }
        this.e.screenChange(tabs, getChildCount());
        invalidate();
    }

    public void computeScroll() {
        if (this.d.computeScrollOffset()) {
            scrollTo(this.d.getCurrX(), 0);
            postInvalidate();
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        public final boolean onDoubleTap(MotionEvent e) {
            return super.onDoubleTap(e);
        }

        public final boolean onDown(MotionEvent e) {
            return true;
        }

        public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            if (Math.abs(velocityX) <= ((float) ViewConfiguration.get(ScrollView.this.b).getScaledMinimumFlingVelocity())) {
                return true;
            }
            ScrollView.this.a();
            ScrollView.this.c = true;
            return true;
        }

        public final void onLongPress(MotionEvent e) {
            super.onLongPress(e);
        }

        public final boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if ((distanceX <= 0.0f || ScrollView.this.getScrollX() >= (ScrollView.this.getChildCount() - 1) * ScrollView.this.getWidth()) && (distanceX >= 0.0f || ScrollView.this.getScrollX() <= 0)) {
                return true;
            }
            ScrollView.this.scrollBy((int) distanceX, 0);
            return true;
        }

        public final void onShowPress(MotionEvent e) {
            super.onShowPress(e);
        }

        public final boolean onSingleTapUp(MotionEvent e) {
            return true;
        }

        public final boolean onSingleTapConfirmed(MotionEvent e) {
            return true;
        }
    }

    public void setOnScreenChangeListener(OnScreenChangeListener onScreenChangeListener) {
        this.e = onScreenChangeListener;
    }

    public void initPageControlView() {
        if (this.e != null) {
            this.e.screenChange(0, getChildCount());
        }
    }
}
