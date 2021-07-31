package com.lenovo.safecenter.MainTab;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Scroller;

public class MyScrollLayout extends ViewGroup {
    private VelocityTracker a;
    private Scroller b;
    private int c = 0;
    private float d;
    private OnViewChangeListener e;
    public int mCurScreen;

    public MyScrollLayout(Context context) {
        super(context);
        a(context);
    }

    public MyScrollLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    public MyScrollLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        a(context);
    }

    private void a(Context context) {
        this.mCurScreen = this.c;
        this.b = new Scroller(context);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean changed, int l, int t, int r, int b2) {
        if (changed) {
            int childLeft = 0;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childView = getChildAt(i);
                if (childView.getVisibility() != 8) {
                    int childWidth = childView.getMeasuredWidth();
                    childView.layout(childLeft, 0, childLeft + childWidth, childView.getMeasuredHeight());
                    childLeft += childWidth;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int width = View.MeasureSpec.getSize(widthMeasureSpec);
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            getChildAt(i).measure(widthMeasureSpec, heightMeasureSpec);
        }
        scrollTo(this.mCurScreen * width, 0);
    }

    public void snapToDestination() {
        int screenWidth = getWidth();
        snapToScreen((getScrollX() + (screenWidth / 2)) / screenWidth);
    }

    public void snapToScreen(int whichScreen) {
        int whichScreen2 = Math.max(0, Math.min(whichScreen, getChildCount() - 1));
        if (getScrollX() != getWidth() * whichScreen2) {
            int delta = (getWidth() * whichScreen2) - getScrollX();
            this.b.startScroll(getScrollX(), 0, delta, 0, Math.abs(delta) * 2);
            this.mCurScreen = whichScreen2;
            invalidate();
            if (this.e != null) {
                this.e.OnViewChange(this.mCurScreen);
            }
        }
    }

    public void computeScroll() {
        if (this.b.computeScrollOffset()) {
            scrollTo(this.b.getCurrX(), this.b.getCurrY());
            postInvalidate();
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        boolean z;
        int action = event.getAction();
        float x = event.getX();
        switch (action) {
            case 0:
                Log.i("", "onTouchEvent  ACTION_DOWN");
                if (this.a == null) {
                    this.a = VelocityTracker.obtain();
                    this.a.addMovement(event);
                }
                if (!this.b.isFinished()) {
                    this.b.abortAnimation();
                }
                this.d = x;
                break;
            case 1:
                int velocityX = 0;
                if (this.a != null) {
                    this.a.addMovement(event);
                    this.a.computeCurrentVelocity(1000);
                    velocityX = (int) this.a.getXVelocity();
                }
                if (velocityX > 600 && this.mCurScreen > 0) {
                    Log.e("ScrollLayout", "snap left");
                    snapToScreen(this.mCurScreen - 1);
                } else if (velocityX >= -600 || this.mCurScreen >= getChildCount() - 1) {
                    snapToDestination();
                } else {
                    Log.e("ScrollLayout", "snap right");
                    snapToScreen(this.mCurScreen + 1);
                }
                if (this.a != null) {
                    this.a.recycle();
                    this.a = null;
                    break;
                }
                break;
            case 2:
                int deltaX = (int) (this.d - x);
                if (getScrollX() > 0 || deltaX >= 0) {
                    z = getScrollX() < (getChildCount() + -1) * getWidth() || deltaX <= 0;
                } else {
                    z = false;
                }
                if (z) {
                    if (this.a != null) {
                        this.a.addMovement(event);
                    }
                    this.d = x;
                    scrollBy(deltaX, 0);
                    break;
                }
                break;
        }
        return true;
    }

    public void SetOnViewChangeListener(OnViewChangeListener listener) {
        this.e = listener;
    }
}
