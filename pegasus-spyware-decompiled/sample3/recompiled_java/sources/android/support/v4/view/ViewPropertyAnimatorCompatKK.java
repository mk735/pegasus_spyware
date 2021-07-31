package android.support.v4.view;

import android.animation.ValueAnimator;
import android.view.View;

class ViewPropertyAnimatorCompatKK {
    ViewPropertyAnimatorCompatKK() {
    }

    public static void setUpdateListener(final View view, final ViewPropertyAnimatorUpdateListener listener) {
        ValueAnimator.AnimatorUpdateListener wrapped = null;
        if (listener != null) {
            wrapped = new ValueAnimator.AnimatorUpdateListener() {
                /* class android.support.v4.view.ViewPropertyAnimatorCompatKK.AnonymousClass1 */

                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    listener.onAnimationUpdate(view);
                }
            };
        }
        view.animate().setUpdateListener(wrapped);
    }
}
