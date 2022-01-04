package com.lenovo.safecenter.safemode;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
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
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class AddContract extends BaseTitleActivity {
    Button a;
    LinearLayout b;
    private AppDatabase c;
    private List<Contract> d;
    private ListView e;
    private TextView f;
    private ContractHelpUtils g;
    private int h;
    private BaseAdapter i;
    private boolean j = false;
    private ProgressDialog k;
    private a l;
    private int m = 0;
    private Handler n = new Handler() {
        /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    AddContract.this.j = false;
                    if (AddContract.this.k != null) {
                        try {
                            AddContract.this.k.dismiss();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (AddContract.this.d != null) {
                        if (AddContract.this.h <= 1) {
                            AddContract.this.i = new CallAdapter(AddContract.this, AddContract.this.d, AddContract.this.h);
                        } else if (AddContract.this.h == 2) {
                            AddContract.this.i = new SmsAdapter(AddContract.this, AddContract.this.d);
                        }
                        AddContract.this.e.setAdapter((ListAdapter) AddContract.this.i);
                        return;
                    }
                    return;
                case 1:
                    AddContract.this.j = false;
                    if (AddContract.this.k != null) {
                        try {
                            AddContract.this.k.dismiss();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    AddContract.this.finish();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    AddContract.this.j = false;
                    if (AddContract.this.k != null) {
                        try {
                            AddContract.this.k.dismiss();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    ContractHelpUtils.sendBraodcast(AddContract.this, "com.lenovo.securityperson.change");
                    AddContract.this.finish();
                    return;
            }
        }
    };
    private long o = 0;

    static /* synthetic */ int k(AddContract x0) {
        int i2 = x0.m;
        x0.m = i2 - 1;
        return i2;
    }

    static /* synthetic */ int l(AddContract x0) {
        int i2 = x0.m;
        x0.m = i2 + 1;
        return i2;
    }

    public void setAddBtnText() {
        if (this.m > 0) {
            this.a.setText(String.format(getString(R.string.add_count), Integer.valueOf(this.m)));
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
        if (Const.getScreenHeight() <= 480) {
            this.a.setWidth(130);
            this.a.setHeight(36);
        } else {
            this.a.setWidth(204);
            this.a.setHeight(60);
        }
        this.e = (ListView) findViewById(R.id.safemode_log_list);
        this.f = (TextView) findViewById(R.id.safemode_empty_textview);
        this.c = new AppDatabase(this);
        this.g = new ContractHelpUtils();
        this.h = getIntent().getIntExtra("fromtype", 0);
        onBtnClick();
        if (this.f != null) {
            if (this.h == 0) {
                this.f.setText(R.string.localblack_hasNoData1);
            }
            this.e.setEmptyView(this.f);
        }
        initData();
        this.l = new a(this, (byte) 0);
        registerReceiver(this.l, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initData() {
        this.f.setVisibility(8);
        this.k = new ProgressDialog(this);
        this.k.setMessage(getResources().getString(R.string.waitting));
        this.k.setCanceledOnTouchOutside(false);
        this.k.show();
        this.j = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass3 */

            public final void run() {
                AddContract.this.d = AddContract.this.c.getAllWhiteContract();
                AddContract.this.d = AddContract.this.g.getConNotInWhiteList(AddContract.this.d, AddContract.this, AddContract.this.h);
                AddContract.this.n.sendEmptyMessage(0);
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        if (this.o == 0 || System.currentTimeMillis() - this.o <= 114000) {
            TrackEvent.trackResume(this);
            return;
        }
        HttpUtils.private_isOpenSec = false;
        finish();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.o = System.currentTimeMillis();
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
        unregisterReceiver(this.l);
        this.o = 0;
        HttpUtils.private_isOpenSec = false;
    }

    public void initCopyDel1(List<Contract> selectlist) {
        for (Contract con : selectlist) {
            String optNumber = con.getPhoneNumber();
            if (this.g.isMobileNO(optNumber)) {
                optNumber = this.g.optNUmber(optNumber);
            }
            List<Contract> call = this.g.getCallContractByNUmber(this, optNumber, con.getPhoneNumber());
            List<Contract> sms = this.g.getSmsByNUmber(this, optNumber, con.getPhoneNumber(), con.getName());
            this.c.insertCall(call);
            this.c.insertSms(sms);
            if (call.size() > 0 || sms.size() > 0) {
                this.g.operateNumber(optNumber, this, sms.size() > 0);
            }
        }
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(AddContract x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                AddContract.this.finish();
            }
        }
    }

    public void onBtnClick() {
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass4 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (AddContract.this.j) {
                    Toast.makeText(AddContract.this, (int) R.string.waitting, 0).show();
                    return;
                }
                Contract con = (Contract) AddContract.this.e.getItemAtPosition(position);
                if (con.isSelect()) {
                    con.setSelect(false);
                    AddContract.k(AddContract.this);
                } else {
                    con.setSelect(true);
                    AddContract.l(AddContract.this);
                }
                AddContract.this.setAddBtnText();
                AddContract.this.e.invalidateViews();
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass5 */

            public final void onClick(View v) {
                if (AddContract.this.j) {
                    Toast.makeText(AddContract.this, (int) R.string.waitting, 0).show();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i = AddContract.this.d.size() - 1; i >= 0; i--) {
                    if (((Contract) AddContract.this.d.get(i)).isSelect()) {
                        arrayList.add(AddContract.this.d.get(i));
                    }
                }
                if (arrayList.size() > 0) {
                    AddContract.this.initInsert(arrayList);
                } else {
                    Toast.makeText(AddContract.this, (int) R.string.localblack_nullNotice, 0).show();
                }
            }
        });
    }

    public void showDialogAdd(final List<Contract> selectlist) {
        new CustomDialog.Builder(this).setTitle(R.string.safemode_notice).setMessage(R.string.noticecontent).setPositiveButton(R.string.safemode_yes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                AddContract.this.initApp_deleteBlack(selectlist);
            }
        }).setNegativeButton(R.string.safemode_no, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                if (selectlist.size() > 1) {
                    AddContract.this.initApp_expectBlack(selectlist);
                } else {
                    AddContract.this.finish();
                }
            }
        }).create().show();
    }

    public void initInsert(final List<Contract> selectlist) {
        this.k = new ProgressDialog(this);
        this.k.setMessage(getResources().getString(R.string.waitting));
        this.k.show();
        this.j = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass8 */

            public final void run() {
                try {
                    long time1 = System.currentTimeMillis();
                    List<Contract> list_insert = AddContract.this.g.noContractRepeatList(selectlist);
                    Log.i(AppDatabase.TIME, (System.currentTimeMillis() - time1) + "");
                    AddContract.this.c.insertContract(list_insert);
                    AddContract.this.initCopyDel1(list_insert);
                    AddContract.this.n.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_deleteBlack(final List<Contract> selList) {
        this.k = new ProgressDialog(this);
        this.k.setMessage(getResources().getString(R.string.waitting));
        this.k.show();
        this.j = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass9 */

            public final void run() {
                try {
                    List<Contract> list_help = AddContract.this.g.noContractRepeatList(selList);
                    AddContract.this.g.deleteBlack(AddContract.this, AddContract.this.g.getBlackFromadd(list_help, AddContract.this));
                    AddContract.this.c.insertContract(list_help);
                    AddContract.this.initCopyDel1(list_help);
                    AddContract.this.n.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initApp_expectBlack(final List<Contract> selList) {
        this.k = new ProgressDialog(this);
        this.k.setMessage(getResources().getString(R.string.waitting));
        this.k.show();
        this.j = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass10 */

            public final void run() {
                try {
                    List<Contract> list_help = AddContract.this.g.noContractRepeatList(selList);
                    List<Contract> list_help2 = AddContract.this.g.getAddlist(list_help, AddContract.this.g.getBlackFromadd(list_help, AddContract.this));
                    AddContract.this.c.insertContract(list_help2);
                    AddContract.this.initCopyDel1(list_help2);
                    AddContract.this.n.sendEmptyMessage(3);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void initCopyDel(final List<Contract> selectlist) {
        this.k = new ProgressDialog(this);
        this.k.setMessage(getResources().getString(R.string.waitting));
        this.k.show();
        this.j = true;
        new Thread() {
            /* class com.lenovo.safecenter.safemode.AddContract.AnonymousClass2 */

            public final void run() {
                try {
                    for (Contract con : selectlist) {
                        String optNumber = con.getPhoneNumber();
                        if (AddContract.this.g.isMobileNO(optNumber)) {
                            optNumber = AddContract.this.g.optNUmber(optNumber);
                        }
                        List<Contract> call = AddContract.this.g.getCallContractByNUmber(AddContract.this, optNumber, con.getPhoneNumber());
                        List<Contract> sms = AddContract.this.g.getSmsByNUmber(AddContract.this, optNumber, con.getPhoneNumber(), con.getName());
                        AddContract.this.c.insertCall(call);
                        AddContract.this.c.insertSms(sms);
                        if (call.size() > 0 || sms.size() > 0) {
                            AddContract.this.g.operateNumber(optNumber, AddContract.this, sms.size() > 0);
                        }
                    }
                    AddContract.this.n.sendEmptyMessage(1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }
}
