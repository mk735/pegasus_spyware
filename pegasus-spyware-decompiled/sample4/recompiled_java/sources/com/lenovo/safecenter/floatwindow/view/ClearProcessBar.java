package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.listener.ClearProcessListener;

public class ClearProcessBar extends LinearLayout {
    private ImageView a;
    private Context b;
    public ImageView move_img = null;

    public ClearProcessBar(Context context) {
        super(context);
    }

    public ClearProcessBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        inflate(context, R.layout.assist_clear_process_bar, this);
        this.b = context;
        this.move_img = (ImageView) findViewById(R.id.progress_bar);
        this.a = (ImageView) findViewById(R.id.progress_bar_top);
    }

    public void changeBar() {
        this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_red);
        this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_red);
    }

    public void showStartAnimation(int paramInt) {
        float k = ((float) paramInt) / 100.0f;
        if (paramInt >= 80) {
            this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_red);
            this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_red);
        } else {
            this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_green);
            this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_green);
        }
        ScaleAnimation localScaleAnimation1 = new ScaleAnimation(k, k, 1.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        localScaleAnimation1.setFillAfter(true);
        localScaleAnimation1.setDuration(1000);
        this.move_img.setAnimation(localScaleAnimation1);
    }

    public void showClearAnimation(int start, int over, int clearAfterSize) {
        float k = ((float) start) / 100.0f;
        if (start >= over) {
            if (over > 80) {
                this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_red);
                this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_red);
            } else {
                this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_green);
                this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_green);
            }
        }
        ScaleAnimation localScaleAnimation1 = new ScaleAnimation(k, 0.0f, 1.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        localScaleAnimation1.setFillAfter(true);
        localScaleAnimation1.setDuration(1000);
        this.move_img.setAnimation(localScaleAnimation1);
        this.move_img.startAnimation(localScaleAnimation1);
        localScaleAnimation1.setAnimationListener(new ClearProcessListener(this, this.b, over, clearAfterSize));
    }

    public void showClearAnimation1(int start, int over) {
        float k = ((float) start) / 100.0f;
        float m = ((float) over) / 100.0f;
        if (start >= over) {
            if (over > 80) {
                this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_red);
                this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_red);
            } else {
                this.move_img.setBackgroundResource(R.drawable.assist_ani_progressbar_bottom_green);
                this.a.setBackgroundResource(R.drawable.assist_ani_progressbar_top_green);
            }
        }
        ScaleAnimation localScaleAnimation1 = new ScaleAnimation(k, m, 1.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        localScaleAnimation1.setFillAfter(true);
        localScaleAnimation1.setDuration(1000);
        this.move_img.startAnimation(localScaleAnimation1);
    }
}
