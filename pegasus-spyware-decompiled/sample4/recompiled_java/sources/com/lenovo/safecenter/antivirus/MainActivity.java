package com.lenovo.safecenter.antivirus;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.MainTab.MyScrollLayout;
import com.lenovo.safecenter.MainTab.OnViewChangeListener;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.VirusLog;
import com.lenovo.safecenter.antivirus.support.AntiVirusDBHelper;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.views.AntiVirusSetting;
import com.lenovo.safecenter.antivirus.views.FullSystemScanActivity;
import com.lenovo.safecenter.antivirus.views.LogActivity;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class MainActivity extends BaseTitleActivity implements OnViewChangeListener, Observer {
    View a;
    MyScrollLayout b;
    LinearLayout c;
    int d;
    int e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private ListView j;
    private LocalBlackApater k;
    private AntiVirusDBHelper l;
    private VirusLog m;
    private LeSafeObservable n;
    private ImageView[] o;
    private Handler p = new Handler() {
        /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass4 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    HttpUtils.isDowning = false;
                    MainActivity.this.k.notifyDataSetChanged();
                    MainActivity.this.j.invalidateViews();
                    if (HttpUtils.execService("virus_state", MainActivity.this).equals("0")) {
                        Toast.makeText(MainActivity.this, (int) R.string.antivirusserver_disconnect, 0).show();
                        return;
                    } else if (HttpUtils.execService("virus_state", MainActivity.this).equals("3")) {
                        Toast.makeText(MainActivity.this, (int) R.string.antivirusversiondesc, 0).show();
                        return;
                    } else {
                        return;
                    }
                case 2:
                    if (HttpUtils.execService("virus_state", MainActivity.this).equals("3")) {
                        Toast.makeText(MainActivity.this, (int) R.string.antivirusdownsuccess, 0).show();
                    }
                    HttpUtils.isDowning = false;
                    MainActivity.this.k.notifyDataSetChanged();
                    MainActivity.this.j.invalidateViews();
                    return;
                case 10:
                    MainActivity.this.setNetShow();
                    return;
                default:
                    return;
            }
        }
    };
    private UpdateManager q = ((UpdateManager) ManagerCreator.getManager(UpdateManager.class));
    private List<UpdateInfo> r;

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusmainpage);
        HttpUtils.isOpen = true;
        this.j = (ListView) findViewById(R.id.antivirusmainistview);
        this.i = (TextView) findViewById(R.id.shwoaddnet);
        this.a = findViewById(R.id.antivirusmainpage_virus_status);
        if (Const.getScreenHeight() < 800) {
            this.a.setBackgroundResource(R.drawable.virus_status_green1);
        } else {
            this.a.setBackgroundResource(R.drawable.virus_status_green0);
        }
        this.g = (TextView) findViewById(R.id.detail_virus_home_page);
        this.h = (TextView) findViewById(R.id.button_virus_home_page);
        this.l = new AntiVirusDBHelper(this);
        Log.i("txt", this.f + "==" + findViewById(R.id.antivirusmainpage_title1));
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antivirusapp_name, Integer.valueOf((int) R.drawable.rf_perf_title_right));
        this.n = LeSafeObservable.get(getApplicationContext());
        this.n.addObserver(this);
        onBtnClick();
        initscroll();
    }

    public void setNetShow() {
        this.i.setVisibility(8);
    }

    @Override // com.lenovo.safecenter.MainTab.OnViewChangeListener
    public void OnViewChange(int position) {
        if (position >= 0 && position <= this.d - 1 && this.e != position) {
            this.o[this.e].setEnabled(true);
            this.o[position].setEnabled(false);
            this.e = position;
        }
    }

    public void initscroll() {
        this.b = (MyScrollLayout) findViewById(R.id.ScrollLayout);
        this.c = (LinearLayout) findViewById(R.id.llayout);
        if (Const.getScreenHeight() < 800) {
            findViewById(R.id.bottom_layout).setVisibility(8);
            return;
        }
        this.b.setVisibility(0);
        this.d = this.b.getChildCount();
        this.o = new ImageView[this.d];
        for (int i2 = 0; i2 < this.d; i2++) {
            this.o[i2] = (ImageView) this.c.getChildAt(i2);
            this.o[i2].setEnabled(true);
            this.o[i2].setTag(Integer.valueOf(i2));
        }
        this.o[this.e].setEnabled(false);
        this.b.SetOnViewChangeListener(this);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() == R.id.base_title_right) {
            startActivity(new Intent(this, AntiVirusSetting.class));
        }
    }

    public View getS_view(int title, int message, int iconImg) {
        View view = getLayoutInflater().inflate(R.layout.virusadv_item, (ViewGroup) null);
        TextView discription = (TextView) view.findViewById(R.id.tt3);
        ((TextView) view.findViewById(R.id.tt1)).setText(title);
        discription.setTextColor(-7829368);
        discription.setText(message);
        return view;
    }

    public void initGrally() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        try {
            this.m = this.l.getLatestLog();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        setNetShow();
        this.k = new LocalBlackApater(this);
        this.j.setAdapter((ListAdapter) this.k);
        a();
        if (HttpUtils.execService("del_viruslog", this).equals("")) {
            new Thread() {
                /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass1 */

                public final void run() {
                    try {
                        MainActivity.this.l.delVirus();
                        HttpUtils.UpdateConfig("del_viruslog", "done", MainActivity.this);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }.start();
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onBtnClick() {
        this.j.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (position != 2) {
                    if (position == 0) {
                        if (HttpUtils.isupdating || HttpUtils.isDowning) {
                            Toast.makeText(MainActivity.this, (int) R.string.dialogcontent, 0).show();
                            return;
                        }
                        HttpUtils.isfrom = true;
                        HttpUtils.isDowning = true;
                        Toast.makeText(MainActivity.this, (int) R.string.dialogcontent, 0).show();
                        MainActivity.this.update();
                    } else if (position != 1) {
                    } else {
                        if (MainActivity.this.m != null) {
                            MainActivity.this.startActivity(new Intent(MainActivity.this, LogActivity.class));
                        } else {
                            Toast.makeText(MainActivity.this, (int) R.string.antivirushasnolog, 0).show();
                        }
                    }
                }
            }
        });
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass3 */

            public final void onClick(View v) {
                MainActivity.this.startActivity(new Intent(MainActivity.this, FullSystemScanActivity.class));
            }
        });
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        HttpUtils.isOpen = false;
    }

    private void a() {
        int virusCount;
        SpannableString spannable;
        String execService = HttpUtils.execService("scantime", this);
        long j2 = 0;
        if (!TextUtils.isEmpty(execService)) {
            j2 = System.currentTimeMillis() - Long.valueOf(execService).longValue();
        }
        int scanInterval = (int) (j2 / 86400000);
        String execService2 = HttpUtils.execService("viruspkgname", this);
        if (TextUtils.isEmpty(execService2)) {
            virusCount = 0;
        } else {
            virusCount = execService2.split(",").length;
        }
        if (virusCount != 0) {
            if (scanInterval < 1) {
                spannable = new SpannableString(String.format(getString(R.string.detail4_has_virus_home_page), Integer.valueOf(virusCount)));
                if (Const.getScreenHeight() == 480) {
                    spannable.setSpan(new AbsoluteSizeSpan(30), 0, String.valueOf(virusCount).length() + 0, 33);
                } else {
                    spannable.setSpan(new AbsoluteSizeSpan(48), 0, String.valueOf(virusCount).length() + 0, 33);
                }
                spannable.setSpan(new ForegroundColorSpan(-65536), 0, String.valueOf(virusCount).length() + 0, 0);
                spannable.setSpan(new StyleSpan(2), 0, String.valueOf(virusCount).length() + 0, 33);
            } else {
                spannable = new SpannableString(String.format(getString(R.string.detail5_has_virus_home_page), Integer.valueOf(virusCount)));
                if (Const.getScreenHeight() == 480) {
                    spannable.setSpan(new AbsoluteSizeSpan(30), 7, String.valueOf(virusCount).length() + 7, 33);
                } else {
                    spannable.setSpan(new AbsoluteSizeSpan(48), 7, String.valueOf(scanInterval).length() + 7, 33);
                }
                spannable.setSpan(new ForegroundColorSpan(-65536), 7, String.valueOf(virusCount).length() + 7, 0);
                spannable.setSpan(new StyleSpan(2), 7, String.valueOf(virusCount).length() + 7, 33);
            }
            this.g.setText(spannable);
            this.h.setText(getString(R.string.button_kill_virus_home_page));
            this.a.setBackgroundResource(R.drawable.virus_status_red1);
        } else if (TextUtils.isEmpty(HttpUtils.execService("scantime", this))) {
            this.g.setText(new SpannableString(String.format(getString(R.string.detail_first_virus_home_page), Integer.valueOf(scanInterval))));
            this.h.setText(getString(R.string.button_kill_virus_home_page));
            this.a.setBackgroundResource(R.drawable.virus_status_green0);
        } else if (scanInterval <= 1) {
            TextView textView = (TextView) findViewById(R.id.detail_virus_home_page);
            String string = getString(R.string.detail5_no_virus_home_page);
            textView.setTextColor(getResources().getColor(R.color.black2));
            textView.setText(new SpannableString(string));
            findViewById(R.id.antivirusmainpage_virus_status).setBackgroundResource(R.drawable.virus_status_green0);
        } else if (scanInterval <= 99) {
            this.g.setText(new SpannableString(String.format(getString(R.string.detail4_no_virus_home_page), Integer.valueOf(scanInterval))));
            this.h.setText(getString(R.string.button_kill_virus_home_page));
            this.a.setBackgroundResource(R.drawable.virus_status_green0);
        } else {
            this.g.setText(new SpannableString(getString(R.string.detail6_no_virus_home_page)));
            this.h.setText(getString(R.string.button_kill_virus_home_page));
            this.a.setBackgroundResource(R.drawable.virus_status_green0);
        }
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 0:
                    this.j.invalidateViews();
                    HttpUtils.isDowning = false;
                    return;
                case 1:
                    this.j.invalidateViews();
                    return;
                case 17:
                    a();
                    return;
                case 18:
                    a();
                    return;
                case 19:
                    a();
                    return;
                default:
                    return;
            }
        }
    }

    public void update() {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass5 */

            public final void run() {
                try {
                    MainActivity.this.q.check(14, new ICheckListener() {
                        /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass5.AnonymousClass1 */

                        @Override // com.tencent.tmsecure.module.update.ICheckListener
                        public final void onCheckCanceled() {
                        }

                        @Override // com.tencent.tmsecure.module.update.ICheckListener
                        public final void onCheckEvent(int arg0) {
                            HttpUtils.UpdateConfig("virus_state", "0", MainActivity.this);
                            MainActivity.this.p.sendEmptyMessage(1);
                        }

                        @Override // com.tencent.tmsecure.module.update.ICheckListener
                        public final void onCheckFinished(CheckResult arg0) {
                            try {
                                MainActivity.this.r = arg0.mUpdateInfoList;
                                if (MainActivity.this.r == null || MainActivity.this.r.size() <= 0) {
                                    HttpUtils.UpdateConfig("virus_state", "3", MainActivity.this);
                                    MainActivity.this.p.sendEmptyMessage(1);
                                    return;
                                }
                                HttpUtils.UpdateConfig("virus_state", DatabaseTables.USER_MARK, MainActivity.this);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }

                        @Override // com.tencent.tmsecure.module.update.ICheckListener
                        public final void onCheckStarted() {
                        }
                    });
                    if (MainActivity.this.r != null && MainActivity.this.r.size() > 0) {
                        MainActivity.this.q.update(MainActivity.this.r, new IUpdateListener() {
                            /* class com.lenovo.safecenter.antivirus.MainActivity.AnonymousClass5.AnonymousClass2 */

                            @Override // com.tencent.tmsecure.module.update.IUpdateListener
                            public final void onProgressChanged(UpdateInfo arg0, int arg1) {
                                Log.i("demo", arg0.url + "=====");
                            }

                            @Override // com.tencent.tmsecure.module.update.IUpdateListener
                            public final void onUpdateEvent(UpdateInfo arg0, int arg1) {
                                HttpUtils.UpdateConfig("virus_state", "0", MainActivity.this);
                                MainActivity.this.p.sendEmptyMessage(1);
                            }

                            @Override // com.tencent.tmsecure.module.update.IUpdateListener
                            public final void onUpdateFinished() {
                                HttpUtils.UpdateConfig("virus_state", "3", MainActivity.this);
                                MainActivity.this.p.sendEmptyMessage(2);
                                LeSafeObservable.get(MainActivity.this).noticeUpdatedLab();
                                UpdateLabManager.setQueryLabStatus(0, 1);
                            }

                            @Override // com.tencent.tmsecure.module.update.IUpdateListener
                            public final void onUpdateStarted() {
                            }

                            @Override // com.tencent.tmsecure.module.update.IUpdateListener
                            public final void onUpdateCanceled() {
                            }
                        });
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Toast.makeText(MainActivity.this, (int) R.string.antivirusserver_disconnect, 0).show();
                }
            }
        }).start();
    }

    public static String getDate(String time) {
        String[] timeArray = new SimpleDateFormat("yyyy.M.dd.HH.mm").format(Long.valueOf(Long.parseLong(time))).split("\\.");
        return timeArray[0] + "-" + timeArray[1] + "-" + timeArray[2];
    }

    public class LocalBlackApater extends BaseAdapter {
        private Context b;

        public LocalBlackApater(Context context) {
            this.b = context;
        }

        public int getCount() {
            return 2;
        }

        public Object getItem(int position) {
            return null;
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.b).inflate(R.layout.antivirusmainitempage, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (ImageView) convertView.findViewById(R.id.antivirusmain_icon);
                holder.b = (ImageView) convertView.findViewById(R.id.antiviruslenovo);
                holder.c = (ImageView) convertView.findViewById(R.id.antivirusqq);
                holder.d = (ImageView) convertView.findViewById(R.id.antivirusidefend);
                holder.f = (TextView) convertView.findViewById(R.id.antivirusbigtitle);
                holder.g = (TextView) convertView.findViewById(R.id.antivirussmalltitle);
                holder.h = (TextView) convertView.findViewById(R.id.antivirustitledesc);
                holder.e = (ImageView) convertView.findViewById(R.id.antivirus_main_item_icon);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            if (position == 2) {
                holder.f.setText(R.string.antivirusdeepscan_title);
                holder.g.setText(MainActivity.this.getString(R.string.antivirusdeepscan_desc));
                holder.e.setBackgroundResource(R.drawable.deep_scan_icon);
                holder.a.setVisibility(0);
                holder.b.setVisibility(8);
                holder.c.setVisibility(8);
                holder.d.setVisibility(8);
                holder.h.setText("");
            } else if (position == 0) {
                holder.f.setText(R.string.antivirusupdatevirus_title);
                holder.g.setText(MainActivity.this.getString(R.string.antiviruslatest_update_virus_database));
                try {
                    if (HttpUtils.execService("virus_state", this.b).equals("0") || HttpUtils.execService("virus_state", this.b).equals("")) {
                        holder.h.setText(HttpUtils.getDate(String.valueOf(new File(MainActivity.this.getFilesDir() + "/qv_base.amf").lastModified())));
                        holder.b.setVisibility(8);
                        holder.c.setVisibility(8);
                        holder.d.setVisibility(8);
                        holder.e.setBackgroundResource(R.drawable.upt_data_icon);
                        holder.a.setVisibility(8);
                    } else {
                        if (HttpUtils.execService("virus_state", this.b).equals("3")) {
                            holder.h.setText(R.string.versiondesc);
                        } else if (HttpUtils.execService("virus_state", this.b).equals(DatabaseTables.USER_MARK)) {
                            holder.h.setText(R.string.has_new_update_note_text);
                        } else {
                            holder.h.setText("2012-11-13");
                        }
                        holder.b.setVisibility(8);
                        holder.c.setVisibility(8);
                        holder.d.setVisibility(8);
                        holder.e.setBackgroundResource(R.drawable.upt_data_icon);
                        holder.a.setVisibility(8);
                    }
                } catch (Exception e) {
                    holder.h.setText("2012-11-13");
                }
            } else if (position == 1) {
                holder.f.setText(R.string.antivirusscan_log);
                holder.g.setText(R.string.antiviruslatest_scantime);
                holder.b.setVisibility(8);
                holder.c.setVisibility(8);
                holder.d.setVisibility(8);
                if (MainActivity.this.m != null) {
                    holder.h.setText(MainActivity.this.m.eventcontent);
                } else {
                    holder.g.setText(R.string.antivirushasnolog);
                    holder.h.setText("");
                }
                holder.a.setVisibility(0);
                holder.a.setImageResource(R.drawable.arrow1);
                holder.e.setBackgroundResource(R.drawable.scan_log_icon);
            }
            return convertView;
        }

        private class a {
            ImageView a;
            ImageView b;
            ImageView c;
            ImageView d;
            ImageView e;
            TextView f;
            TextView g;
            TextView h;

            private a() {
            }

            /* synthetic */ a(LocalBlackApater x0, byte b2) {
                this();
            }
        }
    }
}
