package com.lenovo.safecenter.shortcut;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AbsoluteLayout;
import com.lenovo.safecenter.R;

public final class ViewManager {
    private static WindowManager a = null;
    private static View b = null;
    public static WindowManager.LayoutParams wLayoutParams = new WindowManager.LayoutParams();

    public static void addView(Context paramContext, Rect paramRect, View paramView) {
        if (b == null) {
            LayoutInflater.from(paramContext);
            AbsoluteLayout localAbsoluteLayout1 = (AbsoluteLayout) paramView.getParent();
            a = (WindowManager) paramContext.getApplicationContext().getSystemService("window");
            Log.i("TAG", "localAbsoluteLayout1 == null? " + (localAbsoluteLayout1 == null));
            if (localAbsoluteLayout1 == null) {
                Log.i("TAG", " localAbsoluteLayout1 != null");
                AbsoluteLayout localAbsoluteLayout2 = new AbsoluteLayout(paramContext);
                localAbsoluteLayout2.addView(paramView);
                paramView.post(new a(paramContext, paramRect, paramView));
                wLayoutParams.type = 2003;
                wLayoutParams.flags = 40;
                wLayoutParams.format = -3;
                wLayoutParams.width = -1;
                wLayoutParams.height = -1;
                wLayoutParams.gravity = 51;
                AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) paramView.getLayoutParams();
                Log.i("TAG", " x = " + layoutParams.x + " y = " + layoutParams.y);
                wLayoutParams.x = layoutParams.x;
                wLayoutParams.y = layoutParams.y;
                b = localAbsoluteLayout2;
            } else {
                b = localAbsoluteLayout1;
            }
            a.addView(b, wLayoutParams);
        }
    }

    public static void removeView(Context paramContext, View paramView) {
        if (paramView != null && paramView.getParent() != null) {
            View localView = (View) paramView.getParent();
            if (a != null) {
                try {
                    a.removeView(localView);
                    a.removeView(b);
                } catch (Exception e) {
                    Log.e("TAG", " Ex + " + e);
                }
                b = null;
            }
        }
    }

    public static final class a implements Runnable {
        private final Rect a;
        private final View b;
        private final Context c;

        a(Context paramContext, Rect paramRect, View paramView) {
            this.c = paramContext;
            this.a = paramRect;
            this.b = paramView;
        }

        public final void run() {
            Rect localRect = new Rect();
            this.b.getWindowVisibleDisplayFrame(localRect);
            int i = this.a.centerX() - (this.b.getWidth() / 2);
            int j = (this.a.centerY() - (this.b.getHeight() / 2)) - localRect.top;
            Log.i("TAG", " Run x = " + i + " y = " + j + " Height/2=" + (this.b.getHeight() / 2) + " top = " + localRect.top);
            AbsoluteLayout.LayoutParams localLayoutParams = (AbsoluteLayout.LayoutParams) this.b.getLayoutParams();
            localLayoutParams.x = i;
            localLayoutParams.y = (int) (((float) j) - this.c.getResources().getDimension(R.dimen.popup_vertical_offset));
            this.b.setLayoutParams(localLayoutParams);
        }
    }
}
