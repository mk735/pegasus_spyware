package com.lenovo.safecenter.safemode;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.ManwhiteSmsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ManWhiteSms extends BaseTitleActivity {
    private Button a;
    private Button b;
    private Button c;
    private int d;
    private ListView e;
    private List<Contract> f;
    private ManwhiteSmsAdapter g;
    private AppDatabase h;
    private boolean i;
    private ProgressDialog j;
    private boolean k = false;
    private b l;
    private Handler m = new a(this, (byte) 0);

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(ManWhiteSms x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ManWhiteSms.this.k = false;
                    if (ManWhiteSms.this.j != null) {
                        try {
                            ManWhiteSms.this.j.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    ManWhiteSms.this.finish();
                    return;
                default:
                    return;
            }
        }
    }

    private class b extends BroadcastReceiver {
        private b() {
        }

        /* synthetic */ b(ManWhiteSms x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                ManWhiteSms.this.finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.l);
        HttpUtils.private_isOpenSec = false;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.manwhitesms);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.privacy_safe, (Integer) null);
        this.e = (ListView) findViewById(R.id.safemode_man_whitelist);
        this.a = (Button) findViewById(R.id.safemode_white_del);
        this.b = (Button) findViewById(R.id.safemode_white_select);
        this.c = (Button) findViewById(R.id.safemode_white_back);
        this.h = new AppDatabase(this);
        this.i = false;
        this.d = getIntent().getIntExtra("type", 0);
        if (this.d == 0) {
            this.a.setText(R.string.menu_del);
        } else if (this.d == 1) {
            this.a.setText(R.string.menu_recover);
        }
        initData();
        onBtnClick();
        this.l = new b(this, (byte) 0);
        registerReceiver(this.l, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initData() {
        this.f = this.h.getwhiteSms();
        if (this.f != null) {
            this.g = new ManwhiteSmsAdapter(this, this.f);
            this.e.setAdapter((ListAdapter) this.g);
        }
    }

    public void onBtnClick() {
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ManWhiteSms.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) ManWhiteSms.this.e.getItemAtPosition(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                } else {
                    con.setSelect(true);
                }
                ManWhiteSms.this.e.invalidateViews();
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ManWhiteSms.AnonymousClass2 */

            public final void onClick(View v) {
                ManWhiteSms.this.finish();
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ManWhiteSms.AnonymousClass3 */

            public final void onClick(View v) {
                if (!ManWhiteSms.this.i) {
                    ManWhiteSms.this.i = true;
                } else {
                    ManWhiteSms.this.i = false;
                }
                for (Contract con : ManWhiteSms.this.f) {
                    if (ManWhiteSms.this.i) {
                        con.setSelect(true);
                        ManWhiteSms.this.b.setText(R.string.cancelselect);
                        Log.i("txt", ((Object) ManWhiteSms.this.b.getText()) + "!isAllSelect");
                    } else {
                        con.setSelect(false);
                        ManWhiteSms.this.b.setText(R.string.selectall);
                        Log.i("txt", ((Object) ManWhiteSms.this.b.getText()) + "isAllSelect");
                    }
                }
                ManWhiteSms.this.e.invalidateViews();
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ManWhiteSms.AnonymousClass4 */

            public final void onClick(View v) {
                if (!ManWhiteSms.this.k) {
                    List<String> numbers = new ArrayList<>();
                    for (Contract con : ManWhiteSms.this.f) {
                        if (con.isSelect()) {
                            numbers.add(con.getPhoneNumber());
                        }
                    }
                    if (numbers.size() > 0) {
                        if (ManWhiteSms.this.d == 0) {
                            ManWhiteSms.this.h.deleteSmsByNo(numbers);
                            ManWhiteSms.this.finish();
                        } else if (ManWhiteSms.this.d == 1) {
                            ManWhiteSms.this.init_recovery(numbers);
                        }
                        ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(1);
                    }
                }
            }
        });
    }

    public void init_recovery(final List<String> select_numbers) {
        this.j = new ProgressDialog(this);
        this.j.setProgressStyle(0);
        this.j.setMessage(getResources().getString(R.string.running));
        this.j.show();
        this.k = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.ManWhiteSms.AnonymousClass5 */

            public final void run() {
                ManWhiteSms.this.h.getwhiteSmsByNumbers(select_numbers);
                ManWhiteSms.this.h.deleteSmsByNo(select_numbers);
                ManWhiteSms.this.m.sendEmptyMessage(0);
            }
        }.start();
    }
}
