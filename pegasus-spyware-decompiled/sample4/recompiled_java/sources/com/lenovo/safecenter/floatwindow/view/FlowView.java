package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.TrackEvent;
import java.text.DecimalFormat;

public class FlowView extends FrameLayout {
    private static Thread n;
    private static boolean o = true;
    private static long p = 0;
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.floatwindow.view.FlowView.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    FlowView.this.j = TrafficStats.getTotalRxBytes() + TrafficStats.getTotalTxBytes();
                    postDelayed(FlowView.this.b, c.ap);
                    return;
                case 1:
                    FlowView.this.d.setText(FlowView.a(FlowView.this));
                    FlowView.this.a.sendEmptyMessage(0);
                    return;
                case 2:
                default:
                    return;
                case 3:
                    if (FlowView.this.g.getVisibility() == 0) {
                        FlowView.this.g.setVisibility(8);
                    }
                    FlowView.this.i.setImageDrawable(FlowView.this.l);
                    return;
            }
        }
    };
    Runnable b = new Runnable() {
        /* class com.lenovo.safecenter.floatwindow.view.FlowView.AnonymousClass2 */

        public final void run() {
            FlowView.this.k = TrafficStats.getTotalRxBytes() + TrafficStats.getTotalTxBytes();
            FlowView.this.d.setText(FlowView.a(FlowView.this));
            FlowView.this.a.sendEmptyMessage(0);
        }
    };
    private Context c;
    private TextView d;
    private ImageView e;
    private FrameLayout f;
    private FrameLayout g;
    private ViewStub h;
    private ImageView i;
    private long j;
    private long k;
    private Drawable l;
    private ProgressBar m;

    static /* synthetic */ String a(FlowView x0) {
        long j2 = 0;
        long j3 = x0.k - x0.j;
        if (j3 > 0) {
            j2 = j3 / 3;
        }
        int dataCardPosition = TrafficStatsService.getDataCardPosition(x0.c);
        if (dataCardPosition != -1) {
            if (dataCardPosition == 0) {
                if (NetCache.getTraffic_used_progress() >= 100) {
                    x0.m.setProgress(100);
                } else {
                    x0.m.setProgress(0);
                }
            } else if (dataCardPosition != 1) {
                x0.m.setProgress(0);
            } else if (NetCache.getTraffic_used_progress2() >= 100) {
                x0.m.setProgress(100);
            } else {
                x0.m.setProgress(0);
            }
        }
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("0");
        sb.append(((double) j2) > Math.pow(1024.0d, 4.0d) ? decimalFormat.format((double) ((((((float) j2) / 1024.0f) / 1024.0f) / 1024.0f) / 1024.0f)) + "T" : ((double) j2) > Math.pow(1024.0d, 3.0d) ? decimalFormat.format((double) (((((float) j2) / 1024.0f) / 1024.0f) / 1024.0f)) + "G" : j2 > 1048576 ? decimalFormat.format((double) ((((float) j2) / 1024.0f) / 1024.0f)) + "M" : j2 > 1024 ? decimalFormat.format((double) (((float) j2) / 1024.0f)) + "K" : j2 + "B");
        sb.append("/S");
        return sb.toString();
    }

    public FlowView(Context context) {
        super(context);
        this.c = context;
        inflate(this.c, R.layout.assist_flow_content, this);
        this.d = (TextView) findViewById(R.id.float_window_flow);
        this.e = (ImageView) findViewById(R.id.flow_window_interruption_free);
        this.h = (ViewStub) findViewById(R.id.flow_window_dialog_viewstub);
        this.g = (FrameLayout) findViewById(R.id.flow_window_interruption_free_container);
        this.f = (FrameLayout) findViewById(R.id.layout_flow_main);
        this.i = (ImageView) findViewById(R.id.flow_window_icon_status_net);
        this.m = (ProgressBar) findViewById(R.id.float_window_progress);
        this.e.setOnClickListener(new a(this, (byte) 0));
    }

    public void setFlowDrawable(int status) {
        if (status == 1) {
            this.i.setImageResource(R.drawable.assist_flow_wifi);
        } else {
            this.i.setImageResource(R.drawable.assist_flow_mobile);
        }
    }

    public void sendHanderMessage() {
        this.a.sendEmptyMessage(1);
    }

    public void removeHanderMessage() {
        this.a.removeMessages(0);
    }

    public void setViewGone() {
        if (this.h.getVisibility() == 0) {
            this.h.setVisibility(8);
            this.f.setVisibility(0);
            this.g.setVisibility(8);
        }
    }

    public class FlowWindowListener implements View.OnClickListener {
        public FlowWindowListener() {
        }

        public void onClick(View v) {
            if (FlowView.this.g.getVisibility() == 0) {
                FlowView.this.g.setVisibility(8);
            } else {
                FlowView.this.g.setVisibility(0);
            }
        }
    }

    private class a implements View.OnClickListener {
        private a() {
        }

        /* synthetic */ a(FlowView x0, byte b) {
            this();
        }

        public final void onClick(View v) {
            FlowView.this.f.setVisibility(8);
            FlowView.this.h.setVisibility(0);
            Button float_btn_left = (Button) FlowView.this.findViewById(R.id.float_btn_left);
            Button float_btn_right = (Button) FlowView.this.findViewById(R.id.float_btn_right);
            ((TextView) FlowView.this.findViewById(R.id.float_dialog_msg)).setText(FlowView.this.c.getResources().getString(R.string.float_window_dialog_msg_disable));
            ((CheckBox) FlowView.this.findViewById(R.id.float_checkbox)).setVisibility(8);
            float_btn_left.setText(FlowView.this.getResources().getString(R.string.ok));
            float_btn_right.setText(FlowView.this.getResources().getString(R.string.cancel));
            float_btn_left.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.floatwindow.view.FlowView.a.AnonymousClass1 */

                public final void onClick(View v) {
                    FlowView.this.h.setVisibility(8);
                    FlowView.this.g.setVisibility(8);
                    FlowView.this.f.setVisibility(0);
                    if (SecurityService.instance != null) {
                        SecurityService.instance.setFlowVisibility(8);
                    }
                    SaveData.save_flow_status(FlowView.this.c, false);
                    TrackEvent.reportCloseTrafficFloatwindow();
                    Intent i = new Intent();
                    i.setAction("com.lenovo.safecenter.flowrefresh");
                    FlowView.this.c.sendBroadcast(i);
                }
            });
            float_btn_right.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.floatwindow.view.FlowView.a.AnonymousClass2 */

                public final void onClick(View v) {
                    FlowView.this.setViewGone();
                    ConnectivityManager conectivityManager = (ConnectivityManager) FlowView.this.c.getSystemService("connectivity");
                    if (conectivityManager.getActiveNetworkInfo() == null || conectivityManager.getActiveNetworkInfo().getState() != NetworkInfo.State.CONNECTED) {
                        FlowView.this.i.setImageDrawable(FlowView.this.l);
                    } else {
                        FlowView.this.setFlowDrawable(conectivityManager.getActiveNetworkInfo().getType());
                    }
                    TrackEvent.reportCloseTrafficFloatwindow();
                }
            });
        }
    }

    public void setOnclickContent() {
        if (this.g.getVisibility() == 0) {
            this.i.setImageDrawable(this.l);
            this.g.setVisibility(8);
            return;
        }
        this.l = this.i.getDrawable();
        this.i.setImageResource(R.drawable.atat_safe_icon);
        this.g.setVisibility(0);
        if (n == null) {
            n = new Thread() {
                /* class com.lenovo.safecenter.floatwindow.view.FlowView.AnonymousClass3 */

                public final void run() {
                    try {
                        long unused = FlowView.p = System.currentTimeMillis();
                        while (FlowView.o) {
                            Thread.sleep(100);
                            if (System.currentTimeMillis() - FlowView.p > 2000) {
                                break;
                            }
                        }
                        Thread unused2 = FlowView.n = null;
                        FlowView.this.a.sendMessage(FlowView.this.a.obtainMessage(3));
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            };
            n.start();
            return;
        }
        p = System.currentTimeMillis();
    }
}
