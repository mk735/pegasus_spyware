package com.lenovo.safecenter.MainTab;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class RotateScanHealthScoreView extends FrameLayout {
    private ImageView a;
    private RotateAnimation b;
    private Handler c = new aja(this);
    private int d;

    static /* synthetic */ void a(RotateScanHealthScoreView x0) {
        float width = ((float) x0.a.getWidth()) / 2.0f;
        float height = ((float) x0.a.getHeight()) / 2.0f;
        Log.i("wu0wu", "f1=" + width + ",f2=" + height);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, width, height);
        x0.b = rotateAnimation;
        x0.b.setFillEnabled(true);
        x0.b.setFillAfter(true);
        x0.b.setDuration(500);
        x0.b.setRepeatCount(-1);
        x0.b.setInterpolator(new LinearInterpolator());
        x0.a.setVisibility(0);
        x0.a.startAnimation(rotateAnimation);
        x0.a.setImageResource(R.drawable.healthcheckup_score_ring);
    }

    static /* synthetic */ void b(RotateScanHealthScoreView x0) {
        if (x0.d < 0) {
            x0.d = 0;
        }
        TextView textView = (TextView) x0.findViewById(R.id.health_score);
        textView.setText(String.valueOf(x0.d));
        if (x0.d >= 100) {
            textView.setTextColor(x0.getResources().getColor(R.color.green3));
        } else if (x0.d >= 85 && x0.d <= 99) {
            textView.setTextColor(x0.getResources().getColor(R.color.green3));
        } else if (x0.d < 60 || x0.d > 84) {
            textView.setTextColor(x0.getResources().getColor(R.color.red1));
        } else {
            textView.setTextColor(x0.getResources().getColor(R.color.orange1));
        }
    }

    public RotateScanHealthScoreView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        ImageView localImageView = (ImageView) ((FrameLayout) LayoutInflater.from(paramContext).inflate(R.layout.health_score_rotate_scan_view, (ViewGroup) this, true)).findViewById(R.id.img_healthcheckup_score_ring);
        localImageView.setImageResource(R.drawable.healthcheckup_score_ring);
        this.a = localImageView;
    }

    public void stopAnim() {
        this.a.clearAnimation();
        this.a.setImageResource(R.drawable.healthcheckup_score_ring_stop);
    }

    public void beginAnim() {
        if (this.b == null) {
            this.c.sendEmptyMessageDelayed(0, 200);
            return;
        }
        this.a.startAnimation(this.b);
        this.a.setImageResource(R.drawable.healthcheckup_score_ring);
    }

    public class aja extends Handler {
        public aja(RotateScanHealthScoreView paramRotateScanAniView) {
        }

        public void handleMessage(Message paramMessage) {
            super.handleMessage(paramMessage);
            switch (paramMessage.what) {
                case 0:
                    RotateScanHealthScoreView.a(RotateScanHealthScoreView.this);
                    return;
                case 1:
                    RotateScanHealthScoreView.b(RotateScanHealthScoreView.this);
                    return;
                default:
                    return;
            }
        }
    }

    public void refreshHealthScore(int score) {
        this.d = score;
        this.c.sendEmptyMessage(1);
    }
}
