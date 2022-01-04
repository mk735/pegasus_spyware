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
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.CallAdapter;
import com.lenovo.safecenter.adapter.SmsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ErrorAddContract extends BaseTitleActivity {
    Button a;
    LinearLayout b;
    private List<Contract> c;
    private ListView d;
    private TextView e;
    private ContractHelpUtils f;
    private int g;
    private BaseAdapter h;
    private boolean i = false;
    private ProgressDialog j;
    private a k;
    private int l = 0;
    private Handler m = new Handler() {
        /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ErrorAddContract.this.i = false;
                    if (ErrorAddContract.this.j != null) {
                        try {
                            ErrorAddContract.this.j.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (ErrorAddContract.this.c != null) {
                        if (ErrorAddContract.this.g <= 1) {
                            ErrorAddContract.this.h = new CallAdapter(ErrorAddContract.this, ErrorAddContract.this.c, ErrorAddContract.this.g);
                        } else if (ErrorAddContract.this.g == 2) {
                            ErrorAddContract.this.h = new SmsAdapter(ErrorAddContract.this, ErrorAddContract.this.c);
                        }
                        ErrorAddContract.this.d.setAdapter((ListAdapter) ErrorAddContract.this.h);
                        return;
                    }
                    return;
                case 1:
                    ErrorAddContract.this.i = false;
                    if (ErrorAddContract.this.j != null) {
                        try {
                            ErrorAddContract.this.j.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    ErrorAddContract.this.finish();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    ErrorAddContract.this.i = false;
                    if (ErrorAddContract.this.j != null) {
                        try {
                            ErrorAddContract.this.j.dismiss();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    ContractHelpUtils.sendBraodcast(ErrorAddContract.this, "com.lenovo.securityperson.change");
                    ErrorAddContract.this.finish();
                    return;
            }
        }
    };

    static /* synthetic */ int j(ErrorAddContract x0) {
        int i2 = x0.l;
        x0.l = i2 - 1;
        return i2;
    }

    static /* synthetic */ int k(ErrorAddContract x0) {
        int i2 = x0.l;
        x0.l = i2 + 1;
        return i2;
    }

    public void setAddBtnText() {
        if (this.l > 0) {
            this.a.setText(String.format(getString(R.string.add_count), Integer.valueOf(this.l)));
            return;
        }
        this.a.setText(R.string.antispamlocalblack_add);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.addprivate);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.privacy_mode_set, (Integer) null);
        this.b = (LinearLayout) findViewById(R.id.safemode_lin_operate);
        this.b.setVisibility(0);
        this.a = (Button) findViewById(R.id.safemode_operat_btn);
        this.a.setWidth(204);
        this.a.setHeight(60);
        this.d = (ListView) findViewById(R.id.safemode_log_list);
        this.e = (TextView) findViewById(R.id.safemode_empty_textview);
        this.f = new ContractHelpUtils();
        this.g = getIntent().getIntExtra("fromtype", 0);
        onBtnClick();
        if (this.e != null) {
            this.d.setEmptyView(this.e);
        }
        initData();
        this.k = new a(this, (byte) 0);
        registerReceiver(this.k, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initData() {
        this.e.setVisibility(8);
        this.j = new ProgressDialog(this);
        this.j.setMessage(getResources().getString(R.string.waitting));
        this.j.setCanceledOnTouchOutside(false);
        this.j.show();
        this.i = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass2 */

            public final void run() {
                ErrorAddContract.this.c = new ArrayList();
                ErrorAddContract.this.c = ErrorAddContract.this.f.getConNotInWhiteList(ErrorAddContract.this.c, ErrorAddContract.this, ErrorAddContract.this.g);
                ErrorAddContract.this.m.sendEmptyMessage(0);
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.k);
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(ErrorAddContract x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                ErrorAddContract.this.finish();
            }
        }
    }

    public void onBtnClick() {
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass3 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (ErrorAddContract.this.i) {
                    Toast.makeText(ErrorAddContract.this, (int) R.string.waitting, 0).show();
                    return;
                }
                Contract con = (Contract) ErrorAddContract.this.d.getItemAtPosition(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                    ErrorAddContract.j(ErrorAddContract.this);
                } else {
                    con.setSelect(true);
                    ErrorAddContract.k(ErrorAddContract.this);
                }
                ErrorAddContract.this.setAddBtnText();
                ErrorAddContract.this.d.invalidateViews();
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass4 */

            public final void onClick(View v) {
                if (ErrorAddContract.this.i) {
                    Toast.makeText(ErrorAddContract.this, (int) R.string.waitting, 0).show();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i = ErrorAddContract.this.c.size() - 1; i >= 0; i--) {
                    if (((Contract) ErrorAddContract.this.c.get(i)).isSelect()) {
                        arrayList.add(ErrorAddContract.this.c.get(i));
                    }
                }
                if (arrayList.size() > 0) {
                    ErrorWhiteContract.list.addAll(arrayList);
                    ErrorAddContract.this.finish();
                    return;
                }
                Toast.makeText(ErrorAddContract.this, (int) R.string.localblack_nullNotice, 0).show();
            }
        });
    }

    public void initInsert(final List<Contract> selectlist) {
        this.j = new ProgressDialog(this);
        this.j.setMessage(getResources().getString(R.string.waitting));
        this.j.show();
        this.i = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass5 */

            public final void run() {
                try {
                    long time1 = System.currentTimeMillis();
                    List<Contract> list_insert = ErrorAddContract.this.f.noContractRepeatList(selectlist);
                    Log.i(AppDatabase.TIME, (System.currentTimeMillis() - time1) + "");
                    ErrorWhiteContract.list = list_insert;
                    ErrorAddContract.this.m.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initCopyDel(final List<Contract> selectlist) {
        this.j = new ProgressDialog(this);
        this.j.setMessage(getResources().getString(R.string.waitting));
        this.j.show();
        this.i = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.ErrorAddContract.AnonymousClass6 */

            public final void run() {
                try {
                    for (Contract con : selectlist) {
                        String optNumber = con.getPhoneNumber();
                        if (ErrorAddContract.this.f.isMobileNO(optNumber)) {
                            optNumber = ErrorAddContract.this.f.optNUmber(optNumber);
                        }
                        ErrorAddContract.this.f.operateNumber(optNumber, ErrorAddContract.this, false);
                    }
                    ErrorAddContract.this.m.sendEmptyMessage(1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }
}
