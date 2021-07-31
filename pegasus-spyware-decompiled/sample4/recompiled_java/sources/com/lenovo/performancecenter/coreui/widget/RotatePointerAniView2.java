package com.lenovo.performancecenter.coreui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.AbsoluteLayout;
import android.widget.ImageView;
import com.lenovo.safecenter.R;

public class RotatePointerAniView2 extends AbsoluteLayout {
    public static final int MAX_DEGREES = 240;
    private ImageView a;
    private ImageView b;
    private int c = 2000;
    private int d = 0;
    private int e = 0;
    private RotateAnimation f;
    private RotateAnimation g;

    public RotatePointerAniView2(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(R.layout.rotate_pointer_ani_view2, (ViewGroup) this, true);
        this.a = (ImageView) findViewById(R.id.img_pointer_big);
        this.b = (ImageView) findViewById(R.id.img_pointer_small);
    }

    public boolean bpRotate(int toDegree) {
        RotateAnimation animation = this.f;
        if (animation == null) {
            animation = new RotateAnimation(this.a.getWidth(), this.a.getHeight() * 0);
            this.f = animation;
            this.f.setFillEnabled(true);
            this.f.setFillAfter(true);
            animation.setAnimationListener(new Animation.AnimationListener() {
                /* class com.lenovo.performancecenter.coreui.widget.RotatePointerAniView2.AnonymousClass1 */

                public final void onAnimationStart(Animation animation) {
                    Log.i("rotate", "onAnimationStart");
                }

                public final void onAnimationRepeat(Animation animation) {
                }

                public final void onAnimationEnd(Animation animation) {
                    Log.i("rotate", "onAnimationEnd");
                }
            });
        }
        animation.setDegrees(this.d, toDegree);
        this.f.setDuration((long) ((Math.abs(toDegree - this.d) * this.c) / MAX_DEGREES));
        this.a.startAnimation(this.f);
        this.d = toDegree;
        return true;
    }

    public boolean spRotate(int toDegree) {
        RotateAnimation animation = this.g;
        if (animation == null) {
            animation = new RotateAnimation(this.b.getWidth(), this.b.getHeight() * 0);
            this.g = animation;
            this.g.setFillEnabled(true);
            this.g.setFillAfter(true);
            animation.setAnimationListener(new Animation.AnimationListener() {
                /* class com.lenovo.performancecenter.coreui.widget.RotatePointerAniView2.AnonymousClass2 */

                public final void onAnimationStart(Animation animation) {
                    Log.i("rotate", "onAnimationStart");
                }

                public final void onAnimationRepeat(Animation animation) {
                }

                public final void onAnimationEnd(Animation animation) {
                    Log.i("rotate", "onAnimationEnd");
                }
            });
        }
        animation.setDegrees(this.e, toDegree);
        this.g.setDuration((long) ((Math.abs(toDegree - this.e) * this.c) / MAX_DEGREES));
        this.b.startAnimation(this.g);
        this.e = toDegree;
        return true;
    }

    public class RotateAnimation extends Animation {
        private int b = 0;
        private int c = 0;
        private float d;
        private float e;

        public RotateAnimation(int x, int y) {
            this.b = x;
            this.c = y;
        }

        public void setDegrees(int degreeFrom, int degreeTo) {
            this.d = (float) degreeFrom;
            this.e = (float) degreeTo;
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float interpolatedTime, Transformation t) {
            float degrees = (this.e - this.d) * interpolatedTime;
            t.getMatrix().setRotate(this.d + degrees, (float) this.b, (float) this.c);
        }

        public void setAnimationListener(Animation.AnimationListener paramAnimationListener) {
            super.setAnimationListener(paramAnimationListener);
        }
    }

    public class qi implements Animation.AnimationListener {
        public qi(RotatePointerAniView2 paramRotatePointerAniView) {
        }

        public void onAnimationEnd(Animation paramAnimation) {
        }

        public void onAnimationRepeat(Animation paramAnimation) {
        }

        public void onAnimationStart(Animation paramAnimation) {
        }
    }
}
