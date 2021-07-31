package com.lenovo.safecenter.floatwindow.listener;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import com.lenovo.safecenter.floatwindow.view.ClearProcessBar;
import com.lenovo.safecenter.floatwindow.view.ProcessClearView;
import com.lenovo.safecenter.floatwindow.view.ProcessRunningView;

public class ClearProcessListener implements Animation.AnimationListener {
    private ClearProcessBar a;
    private float b;
    private int c;
    private int d;
    private Context e;

    public ClearProcessListener(ClearProcessBar _clProcessBar, Context context, int overRate, int clearAfterSize) {
        this.a = _clProcessBar;
        this.e = context;
        this.b = ((float) overRate) / 100.0f;
        this.c = clearAfterSize;
        this.d = overRate;
    }

    public void onAnimationEnd(Animation animation) {
        Log.d("onAnimationEnd", "onAnimationEnd");
        ScaleAnimation localScaleAnimation = new ScaleAnimation(0.0f, this.b, 1.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        localScaleAnimation.setDuration(1000);
        localScaleAnimation.setFillAfter(true);
        this.a.move_img.startAnimation(localScaleAnimation);
        localScaleAnimation.setAnimationListener(new a(this, (byte) 0));
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }

    private class a implements Animation.AnimationListener {
        private a() {
        }

        /* synthetic */ a(ClearProcessListener x0, byte b) {
            this();
        }

        public final void onAnimationEnd(Animation animation) {
            ProcessClearView.instanceClearView.showClearOverView(ClearProcessListener.this.c, ClearProcessListener.this.d);
            ProcessRunningView.processrunning.clear_view();
            new Thread() {
                /* class com.lenovo.safecenter.floatwindow.listener.ClearProcessListener.a.AnonymousClass1 */

                public final void run() {
                    try {
                        Thread.sleep(2000);
                        Intent intent = new Intent();
                        intent.setAction("com.lenovo.safecenter.floatwindow.delwindow");
                        ClearProcessListener.this.e.sendBroadcast(intent);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }.start();
        }

        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }
    }
}
