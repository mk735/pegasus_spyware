package com.lenovo.performancecenter.performance;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.MemoryTools;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.coreui.widget.RotatePointerAniView2;
import com.lenovo.safecenter.R;

public class CpuAndMemeoryLayout extends LinearLayout {
    private Context a;
    private a b;
    private Thread c;
    private boolean d = true;
    private int e = 3;
    private RotatePointerAniView2 f;
    private TextView g;
    private TextView h;

    static /* synthetic */ void a(CpuAndMemeoryLayout x0, int x1, int x2) {
        if (x2 < 10) {
            x0.g.setText(" " + x2 + "%");
        } else {
            x0.g.setText(x2 + "%");
        }
        if (x1 < 10) {
            x0.h.setText(" " + x1 + "%");
        } else {
            x0.h.setText(x1 + "%");
        }
        x0.f.bpRotate((x2 * RotatePointerAniView2.MAX_DEGREES) / 100);
        x0.f.spRotate((x1 * RotatePointerAniView2.MAX_DEGREES) / 100);
    }

    static /* synthetic */ int e(CpuAndMemeoryLayout x0) {
        int i = x0.e;
        x0.e = i + 1;
        return i;
    }

    public CpuAndMemeoryLayout(Context context) {
        super(context);
        a(context);
    }

    public CpuAndMemeoryLayout(Context context, int i, AttributeSet as) {
        super(context, as);
        a(context);
    }

    public CpuAndMemeoryLayout(Context context, AttributeSet as) {
        super(context, as);
        Log.i("CpuAndMemeoryLayout", "three...");
        a(context);
    }

    private void a(Context context) {
        if (context == null) {
            context = getContext();
        }
        this.a = context;
        this.b = new a();
        LayoutInflater.from(context).inflate(R.layout.rf_perf_taskmanager_cpumemeory_new, (ViewGroup) this, true);
        this.f = (RotatePointerAniView2) findViewById(R.id.systemLayout);
        this.g = (TextView) findViewById(R.id.memoryUsage);
        this.h = (TextView) findViewById(R.id.cpuUsage);
    }

    public void startThread() {
        this.d = true;
        this.e = 0;
        this.c = new Thread(new Runnable() {
            /* class com.lenovo.performancecenter.performance.CpuAndMemeoryLayout.AnonymousClass1 */

            public final void run() {
                Log.i("CpuAndMemeoryLayout", "---> run()");
                while (CpuAndMemeoryLayout.this.d) {
                    Log.i("CpuAndMemeoryLayout", System.currentTimeMillis() + " ---> run() content");
                    MemoryTools mt = new MemoryTools();
                    Message msg = new Message();
                    int cpuUse = (int) (((double) Utils.readCpuUsage()) * 0.4d);
                    Log.i("CpuAndMemeoryLayout", "cpuUse == " + cpuUse);
                    if (cpuUse > 100) {
                        cpuUse = 100;
                    } else if (cpuUse < 0) {
                        cpuUse = 1;
                    }
                    msg.what = 0;
                    msg.arg1 = cpuUse;
                    int memoryUse = mt.getSystemMeminfo();
                    Log.i("CpuAndMemeoryLayout", "memoryUse == " + memoryUse);
                    if (memoryUse > 100) {
                        memoryUse = 100;
                    } else if (memoryUse < 0) {
                        memoryUse = 1;
                    }
                    msg.arg2 = memoryUse;
                    CpuAndMemeoryLayout.this.b.sendMessageDelayed(msg, 200);
                    try {
                        if (CpuAndMemeoryLayout.this.e <= 3) {
                            Thread unused = CpuAndMemeoryLayout.this.c;
                            Thread.sleep(1500);
                            CpuAndMemeoryLayout.e(CpuAndMemeoryLayout.this);
                        } else {
                            Thread unused2 = CpuAndMemeoryLayout.this.c;
                            Thread.sleep(5000);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        this.c.start();
    }

    public void onResume() {
        Log.i("CpuAndMemeoryLayout", "---> onResume");
        startThread();
    }

    public void onPause() {
        Log.i("CpuAndMemeoryLayout", "---> onPause");
        this.d = false;
    }

    public void onStop() {
        this.c = null;
    }

    /* access modifiers changed from: package-private */
    public class a extends Handler {
        a() {
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    CpuAndMemeoryLayout.a(CpuAndMemeoryLayout.this, msg.arg1, msg.arg2);
                    return;
                default:
                    return;
            }
        }
    }

    public void addView(View child) {
        Log.i("CpuAndMemeoryLayout", "addView()...view=" + child);
        super.addView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index) {
        super.addView(child, index);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int width, int height) {
        super.addView(child, width, height);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, ViewGroup.LayoutParams params) {
        super.addView(child, params);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int w, int h2, int oldw, int oldh) {
        super.onSizeChanged(w, h2, oldw, oldh);
    }
}
