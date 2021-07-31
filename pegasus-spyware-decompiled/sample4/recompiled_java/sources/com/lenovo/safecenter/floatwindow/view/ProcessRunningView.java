package com.lenovo.safecenter.floatwindow.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.performancecenter.service.object.UsedAppInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.adapter.TaskAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProcessRunningView extends LinearLayout {
    public static final int SWITCHER_VIEW = 200;
    public static ProcessRunningView processrunning;
    private GridView a;
    private TaskAdapter b;
    private TextView c;
    public Context context;
    private CommonLoadingAnim d;
    private Handler e = new a(this, (byte) 0);
    private List<UsedAppInfo> f = new ArrayList();

    static /* synthetic */ ArrayList a(Context x1) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, int[]> entry : ScanApplicationInfo.getRunningAppInfoJustInLauncher(x1).entrySet()) {
            if (entry.getValue()[2] == 1) {
                arrayList.add(new UsedAppInfo(entry.getKey(), entry.getValue()[1]));
            }
        }
        return arrayList;
    }

    static /* synthetic */ void c(ProcessRunningView x0) {
        new Thread() {
            /* class com.lenovo.safecenter.floatwindow.view.ProcessRunningView.AnonymousClass2 */

            public final void run() {
                ProcessRunningView processRunningView = ProcessRunningView.this;
                ProcessRunningView processRunningView2 = ProcessRunningView.this;
                processRunningView.f = ProcessRunningView.a(ProcessRunningView.this.context);
                if (ProcessRunningView.this.f.size() == 0) {
                    ProcessRunningView.this.e.sendEmptyMessage(2);
                    return;
                }
                ProcessRunningView.this.b = new TaskAdapter(ProcessRunningView.this.context, ProcessRunningView.this.f);
                ProcessRunningView.this.e.sendEmptyMessage(1);
            }
        }.start();
    }

    public ProcessRunningView(Context context2, AttributeSet attrs) {
        super(context2, attrs);
        this.context = context2;
        inflate(this.context, R.layout.assist_process_running_view, this);
        this.a = (GridView) findViewById(R.id.float_grid1);
        this.c = (TextView) findViewById(R.id.running_process_empty);
        this.d = (CommonLoadingAnim) findViewById(R.id.loading_anim);
        this.e.sendEmptyMessage(0);
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.floatwindow.view.ProcessRunningView.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                RootPassage.execRootCmd(((UsedAppInfo) ProcessRunningView.this.f.get(position)).packageName, " -fs ", ProcessRunningView.this.context);
                ProcessClearView.instanceClearView.updateRunningView(((UsedAppInfo) ProcessRunningView.this.f.get(position)).memroy / 1024);
                ProcessRunningView.this.f.remove(position);
                ProcessRunningView.this.b.notifyDataSetChanged();
                if (ProcessRunningView.this.f.size() == 0) {
                    ProcessRunningView.this.clear_view();
                }
            }
        });
        processrunning = this;
    }

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(ProcessRunningView x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    ProcessRunningView.this.a.setVisibility(8);
                    ProcessRunningView.this.d.setVisibility(0);
                    ProcessRunningView.c(ProcessRunningView.this);
                    return;
                case 1:
                    ProcessRunningView.this.d.setVisibility(8);
                    ProcessRunningView.this.a.setVisibility(0);
                    ProcessRunningView.this.a.setAdapter((ListAdapter) ProcessRunningView.this.b);
                    return;
                case 2:
                    ProcessRunningView.this.d.setVisibility(8);
                    ProcessRunningView.this.clear_view();
                    return;
                default:
                    return;
            }
        }
    }

    public void clear_view() {
        this.a.setVisibility(8);
        this.c.setVisibility(0);
    }
}
