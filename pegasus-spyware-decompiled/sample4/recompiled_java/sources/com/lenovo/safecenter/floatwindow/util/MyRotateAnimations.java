package com.lenovo.safecenter.floatwindow.util;

import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageButton;

public class MyRotateAnimations {
    private static int a = 15;
    private static int b = -13;

    public static void initOffset(Context context) {
        a = (int) (10.667d * ((double) context.getResources().getDisplayMetrics().density));
        b = -((int) (8.667d * ((double) context.getResources().getDisplayMetrics().density)));
    }

    public static Animation getRotateAnimation(float fromDegrees, float toDegrees, int durationMillis) {
        RotateAnimation rotate = new RotateAnimation(fromDegrees, toDegrees, 1, 0.5f, 1, 0.5f);
        rotate.setDuration((long) durationMillis);
        rotate.setFillAfter(true);
        return rotate;
    }

    public static void startAnimationsIn(ViewGroup viewgroup, int durationMillis) {
        for (int i = 0; i < viewgroup.getChildCount(); i++) {
            ImageButton inoutimagebutton = (ImageButton) viewgroup.getChildAt(i);
            inoutimagebutton.setVisibility(0);
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) inoutimagebutton.getLayoutParams();
            Animation animation = new TranslateAnimation((float) (mlp.rightMargin - a), 0.0f, (float) (b + mlp.bottomMargin), 0.0f);
            animation.setFillAfter(true);
            animation.setDuration((long) durationMillis);
            animation.setStartOffset((long) ((i * 100) / (viewgroup.getChildCount() - 1)));
            animation.setInterpolator(new OvershootInterpolator(2.0f));
            inoutimagebutton.startAnimation(animation);
        }
    }

    public static void startAnimationsOut(ViewGroup viewgroup, int durationMillis) {
        for (int i = 0; i < viewgroup.getChildCount(); i++) {
            final ImageButton inoutimagebutton = (ImageButton) viewgroup.getChildAt(i);
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) inoutimagebutton.getLayoutParams();
            Animation animation = new TranslateAnimation(0.0f, (float) (mlp.rightMargin - a), 0.0f, (float) (b + mlp.bottomMargin));
            animation.setFillAfter(true);
            animation.setDuration((long) durationMillis);
            animation.setStartOffset((long) (((viewgroup.getChildCount() - i) * 100) / (viewgroup.getChildCount() - 1)));
            animation.setInterpolator(new AnticipateInterpolator(2.0f));
            animation.setAnimationListener(new Animation.AnimationListener() {
                /* class com.lenovo.safecenter.floatwindow.util.MyRotateAnimations.AnonymousClass1 */

                public final void onAnimationStart(Animation arg0) {
                }

                public final void onAnimationRepeat(Animation arg0) {
                }

                public final void onAnimationEnd(Animation arg0) {
                    inoutimagebutton.setVisibility(8);
                }
            });
            inoutimagebutton.startAnimation(animation);
        }
    }
}
