package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.util.MyRotateAnimations;
import com.lenovo.safecenter.floatwindow.util.Tools;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ProcessClearView extends LinearLayout implements View.OnClickListener {
    public static final String PREF_SWITCHER_OR_RUNNING_FLAG = "switcher_or_running_flag";
    public static final String PREF_SWITCHER_SHOW_FLAG = "switcher_windwo_show";
    public static ProcessClearView instanceClearView;
    private Button a;
    private TextView b;
    private TextView c;
    private TextView d;
    private ClearProcessBar e;
    private FrameLayout f;
    private ImageView g;
    private Context h;
    public Handler handler = new Handler() {
        /* class com.lenovo.safecenter.floatwindow.view.ProcessClearView.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 200:
                    TrackEvent.reportUserActionClickOneKeyClearInShortcutSwitch();
                    ProcessClearView.d(ProcessClearView.this);
                    return;
                case 201:
                    int clear_after_size = ProcessClearView.this.p.stringtoInt(ProcessClearView.this.c.getText().toString().replace(ProcessClearView.this.k.getString(R.string.process_usage_size_).toString(), "")) - ProcessClearView.this.q;
                    int uate = ProcessClearView.this.p.getUeageRate1(ProcessClearView.this.o, String.valueOf(clear_after_size));
                    ProcessClearView.this.b.setText(ProcessClearView.this.k.getString(R.string.process_clear_info_).toString() + ProcessClearView.this.q + ProcessClearView.this.k.getString(R.string.process_usage_size_m).toString());
                    ProcessClearView.this.e.showClearAnimation(ProcessClearView.this.i, uate, clear_after_size);
                    return;
                default:
                    return;
            }
        }
    };
    private int i = -1;
    private int j = -1;
    private Resources k;
    private Message l;
    private SharedPreferences m;
    private boolean n = true;
    private String o;
    private Tools p;
    private int q;

    static /* synthetic */ void d(ProcessClearView x0) {
        HashMap<String, int[]> runningAppInfoJustInLauncher = ScanApplicationInfo.getRunningAppInfoJustInLauncher(x0.h);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, int[]> entry : runningAppInfoJustInLauncher.entrySet()) {
            if (entry.getValue()[2] == 1) {
                x0.q = entry.getValue()[1] + x0.q;
            }
            arrayList.add(entry.getKey());
        }
        x0.q /= 1048576;
        RootPassage.execRootCmd(null, arrayList, " -fs ", x0.h);
        x0.handler.sendEmptyMessage(201);
    }

    public ProcessClearView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.h = context;
        if (this.p == null) {
            this.p = new Tools(context);
        }
        this.k = getResources();
        this.l = new Message();
        inflate(context, R.layout.assist_process_clear, this);
        this.a = (Button) findViewById(R.id.clear_all);
        this.b = (TextView) findViewById(R.id.process_clear_info);
        this.c = (TextView) findViewById(R.id.process_usage_size);
        this.d = (TextView) findViewById(R.id.process_usage_rate);
        this.o = this.p.getTotalMemory();
        this.j = this.p.getUeageSize(this.o, this.p.getAvailMemory());
        this.i = this.p.getUeageRate(this.o, this.p.getAvailMemory());
        this.c.setText(this.k.getString(R.string.process_usage_size_).toString() + this.j + this.k.getString(R.string.process_usage_size_m).toString());
        this.d.setText(this.k.getString(R.string.process_usage_rate_).toString() + this.i + this.k.getString(R.string.process_usage_rate_bai).toString());
        this.a.setOnClickListener(this);
        this.e = (ClearProcessBar) findViewById(R.id.cpb_memory_usage);
        this.e.showStartAnimation(this.i);
        this.f = (FrameLayout) findViewById(R.id.switch_screem);
        this.g = (ImageView) findViewById(R.id.img_fw_more_rotation_view);
        this.m = context.getSharedPreferences("switcher_or_running_flag", 0);
        this.n = this.m.getBoolean("switcher_windwo_show", true);
        if (this.n) {
            this.g.startAnimation(MyRotateAnimations.getRotateAnimation(-180.0f, 0.0f, 500));
        } else {
            this.g.startAnimation(MyRotateAnimations.getRotateAnimation(0.0f, -180.0f, 500));
        }
        this.f.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.floatwindow.view.ProcessClearView.AnonymousClass1 */

            public final void onClick(View v) {
                if (ProcessClearView.this.n) {
                    ProcessClearView.this.g.startAnimation(MyRotateAnimations.getRotateAnimation(0.0f, -180.0f, 500));
                } else {
                    ProcessClearView.this.g.startAnimation(MyRotateAnimations.getRotateAnimation(-180.0f, 0.0f, 500));
                }
                ProcessClearView.this.n = !ProcessClearView.this.n;
                ViewPagerSwitcher.instance.showSwitcherorRunningWindow(ProcessClearView.this.n, true);
                ProcessClearView.this.m.edit().putBoolean("switcher_windwo_show", ProcessClearView.this.n).commit();
            }
        });
        instanceClearView = this;
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.clear_all:
                this.handler.sendEmptyMessage(200);
                return;
            default:
                return;
        }
    }

    public void showClearOverView(int clear_after_size, int uate) {
        this.a.setVisibility(8);
        this.b.setVisibility(0);
        this.c.setText(this.k.getString(R.string.process_usage_size_).toString() + clear_after_size + this.k.getString(R.string.process_usage_size_m).toString());
        this.d.setText(this.k.getString(R.string.process_usage_rate_).toString() + uate + this.k.getString(R.string.process_usage_rate_bai).toString());
    }

    public void updateRunningView(int memsize) {
        int clear_before_rate = this.p.stringtoInt(this.d.getText().toString().replace(this.k.getString(R.string.process_usage_rate_).toString(), ""));
        int clear_after_size = this.p.getUeageSize(this.c.getText().toString().replace(this.k.getString(R.string.process_usage_size_).toString(), ""), this.p.inttostring(memsize / 1024));
        int uate = this.p.getUeageRate1(this.o, this.p.inttostring(clear_after_size));
        this.c.setText(this.k.getString(R.string.process_usage_size_).toString() + clear_after_size + this.k.getString(R.string.process_usage_size_m).toString());
        this.d.setText(this.k.getString(R.string.process_usage_rate_).toString() + uate + this.k.getString(R.string.process_usage_rate_bai).toString());
        this.e.showClearAnimation1(clear_before_rate, uate);
    }
}
