package com.lenovo.safecenter.antivirus.views;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.Paint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;

public class FlashProActivity extends Activity {
    LinearLayout a;
    protected Animation animation;
    protected Animation animation2;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    private Handler f = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.FlashProActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            FlashProActivity.this.b.setVisibility(8);
        }
    };

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.antivirusgifmain);
        this.a = (LinearLayout) findViewById(R.id.antivirusanim_layout);
        this.b = (TextView) findViewById(R.id.antivirustxt_info1);
        this.c = (TextView) findViewById(R.id.antivirustxt_info3);
        this.d = (TextView) findViewById(R.id.antivirustxt_info4);
        this.e = (TextView) findViewById(R.id.antivirustxt_info5);
        this.animation = AnimationUtils.loadAnimation(this, R.anim.alpha_scale_translate);
        this.animation2 = AnimationUtils.loadAnimation(this, R.anim.my_alpha_action);
        View view = new a(this);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(480, -2);
        params.gravity = 1;
        this.a.addView(view, params);
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.views.FlashProActivity.AnonymousClass2 */

            public final void run() {
                FlashProActivity.this.b.startAnimation(FlashProActivity.this.animation);
                FlashProActivity.this.c.startAnimation(FlashProActivity.this.animation2);
                FlashProActivity.this.d.startAnimation(FlashProActivity.this.animation2);
                FlashProActivity.this.e.startAnimation(FlashProActivity.this.animation2);
                try {
                    Thread.sleep(c.ap);
                    FlashProActivity.this.f.sendEmptyMessage(0);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    private class a extends View {
        private Movie b;
        private long c;

        public a(Context context) {
            super(context);
            setFocusable(true);
            this.b = Movie.decodeStream(context.getResources().openRawResource(R.drawable.antivirussmileface));
        }

        /* access modifiers changed from: protected */
        public final void onDraw(Canvas canvas) {
            new Paint().setAntiAlias(true);
            long now = SystemClock.uptimeMillis();
            if (this.c == 0) {
                this.c = now;
            }
            if (this.b != null) {
                int dur = this.b.duration();
                if (dur == 0) {
                    dur = 1000;
                }
                int relTime = (int) ((now - this.c) % ((long) dur));
                if (relTime >= dur) {
                    this.b = null;
                    return;
                }
                this.b.setTime(relTime);
                this.b.draw(canvas, 0.0f, 0.0f);
                invalidate();
            }
        }
    }
}
