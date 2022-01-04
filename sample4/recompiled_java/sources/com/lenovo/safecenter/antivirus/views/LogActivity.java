package com.lenovo.safecenter.antivirus.views;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.VirusLog;
import com.lenovo.safecenter.antivirus.support.AntiVirusDBHelper;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.text.SimpleDateFormat;
import java.util.List;

public class LogActivity extends BaseTitleActivity {
    private TextView a;
    private Button b;
    private VirusAdapter c;
    private ListView d;
    private AntiVirusDBHelper e;
    private List<VirusLog> f;
    private Handler g = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.LogActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    LogActivity.this.f.clear();
                    LogActivity.this.c.notifyDataSetChanged();
                    LogActivity.this.d.invalidateViews();
                    if (LogActivity.this.f.size() == 0) {
                        LogActivity.this.b.setEnabled(false);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void g(LogActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.clean_logs_sure).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.LogActivity.AnonymousClass3 */

            public final void onClick(DialogInterface arg0, int arg1) {
                LogActivity.this.e.delLog();
                LogActivity.this.g.sendEmptyMessage(1);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.LogActivity.AnonymousClass2 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusmydisplaylog);
        this.b = (Button) findViewById(R.id.antivirusbtn_clean_logs);
        this.a = (TextView) findViewById(R.id.antiviruslog_txt_empty);
        this.d = (ListView) findViewById(R.id.antiviruslog_listview);
        this.d.setDivider(null);
        this.e = new AntiVirusDBHelper(this);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antivirusscan_log, (Integer) null);
        OnBtnClick();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        this.f = this.e.getLog();
        Log.i("mm", this.f.size() + "=====");
        this.c = new VirusAdapter(this, this.f);
        this.d.setAdapter((ListAdapter) this.c);
        this.d.setEmptyView(this.a);
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void OnBtnClick() {
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.LogActivity.AnonymousClass4 */

            public final void onClick(View v) {
                LogActivity.g(LogActivity.this);
            }
        });
    }

    public String formatAllTime(String time) {
        return new SimpleDateFormat("HH:mm").format(Long.valueOf(Long.parseLong(time)));
    }

    public class VirusAdapter extends BaseAdapter {
        private Context b;
        private List<VirusLog> c;

        public VirusAdapter(Context context, List<VirusLog> list) {
            this.b = context;
            this.c = list;
        }

        public int getCount() {
            return this.c.size();
        }

        public Object getItem(int position) {
            return this.c.get(position);
        }

        public boolean isEnabled(int position) {
            return false;
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.b).inflate(R.layout.antivirusnew_loglist_item, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (LinearLayout) convertView.findViewById(R.id.antiviruslog_layout);
                holder.b = (TextView) convertView.findViewById(R.id.antiviruslog_time);
                holder.c = (TextView) convertView.findViewById(R.id.antivirusevent_time);
                holder.d = (TextView) convertView.findViewById(R.id.antivirusevent_content);
                holder.f = (ImageView) convertView.findViewById(R.id.antiviruslog_icon);
                holder.e = convertView.findViewById(R.id.div_bg);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            VirusLog log = this.c.get(position);
            if (log.logdate == null) {
                holder.a.setVisibility(0);
                holder.d.setText(log.eventcontent);
                holder.c.setText(LogActivity.this.formatAllTime(log.eventtime));
                holder.b.setVisibility(8);
                holder.e.setVisibility(0);
                if (log.eventicon.equals("0")) {
                    holder.f.setImageDrawable(LogActivity.this.getResources().getDrawable(R.drawable.antivirusperm_grant));
                } else {
                    holder.f.setImageDrawable(LogActivity.this.getResources().getDrawable(R.drawable.antivirusperm_prompt));
                }
            } else {
                holder.b.setVisibility(0);
                holder.b.setText(log.logdate);
                holder.e.setVisibility(8);
                holder.a.setVisibility(8);
            }
            return convertView;
        }

        private class a {
            LinearLayout a;
            TextView b;
            TextView c;
            TextView d;
            View e;
            ImageView f;

            private a() {
            }

            /* synthetic */ a(VirusAdapter x0, byte b2) {
                this();
            }
        }
    }
}
