package com.lenovo.safecenter.safemode;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.whiteSmsbyNumberAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.platform.DoubleCardUtils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.Constant;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.tencent.tmsecure.module.software.AppEntity;
import java.util.List;

public class WhiteSmsShowByNumber extends BaseTitleActivity {
    Button a;
    Button b;
    EditText c;
    LinearLayout d;
    private ListView e;
    private TextView f;
    private TextView g;
    private List<Contract> h;
    public Handler hand = new Handler() {
        /* class com.lenovo.safecenter.safemode.WhiteSmsShowByNumber.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (msg.getData().getString(AppDatabase.NUMBER).equals(WhiteSmsShowByNumber.this.k)) {
                        WhiteSmsShowByNumber.this.initData();
                        WhiteSmsShowByNumber.this.i.updateSmsStatus(WhiteSmsShowByNumber.this.k, 0);
                        WhiteSmsShowByNumber.this.e.setSelectionFromTop(WhiteSmsShowByNumber.this.h.size() - 1, 0);
                    } else if (DataHelpUtils.getActivityByName("WhiteSms") != null) {
                        ((WhiteSms) DataHelpUtils.getActivityByName("WhiteSms")).hand.sendEmptyMessage(1);
                    }
                    ((NotificationManager) WhiteSmsShowByNumber.this.getSystemService(DatabaseTables.LOG_NOTIFICATION)).cancel(Constant.SMS_NOTI_ID);
                    return;
                case 5:
                    if (WhiteSmsShowByNumber.this.h.size() > 0) {
                        WhiteSmsShowByNumber.this.e.setSelectionFromTop(WhiteSmsShowByNumber.this.h.size() - 1, 0);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private AppDatabase i;
    private whiteSmsbyNumberAdapter j;
    private String k;
    private ContractHelpUtils l;
    private int m = 0;
    private a n;
    private String o;
    private Contract p;
    private long q = 0;

    static /* synthetic */ void a(WhiteSmsShowByNumber x0, final Contract x1) {
        String[] strArr = {x0.getString(R.string.delete_sms), x0.getString(R.string.safemode_callto)};
        if (x1.getSmstype() != 1) {
            strArr = new String[]{x0.getString(R.string.delete_sms)};
        }
        String name = x1.getName();
        if (TextUtils.isEmpty(x1.getName())) {
            name = x1.getPhoneNumber();
        }
        new CustomDialog.Builder(x0).setTitle(name).setItems(strArr, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSmsShowByNumber.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        WhiteSmsShowByNumber.this.i.deleteSms(x1.getId());
                        WhiteSmsShowByNumber.this.h.remove(WhiteSmsShowByNumber.this.m);
                        if (WhiteSmsShowByNumber.this.h.size() == 0) {
                            WhiteSmsShowByNumber.this.initData();
                        }
                        WhiteSmsShowByNumber.this.e.invalidateViews();
                        return;
                    case 1:
                        try {
                            WhiteSmsShowByNumber.this.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + x1.getPhoneNumber())));
                            return;
                        } catch (Exception e) {
                            Toast.makeText(WhiteSmsShowByNumber.this, (int) R.string.opensms_error, 0).show();
                            e.printStackTrace();
                            return;
                        }
                    case 2:
                        SecurityService.beginTime = System.currentTimeMillis();
                        WhiteSmsShowByNumber.this.l.backToSms(x1, WhiteSmsShowByNumber.this);
                        WhiteSmsShowByNumber.this.i.deleteSms(x1.getId());
                        WhiteSmsShowByNumber.this.h.remove(WhiteSmsShowByNumber.this.m);
                        if (WhiteSmsShowByNumber.this.h.size() == 0) {
                            WhiteSmsShowByNumber.this.initData();
                        }
                        WhiteSmsShowByNumber.this.e.invalidateViews();
                        return;
                    default:
                        return;
                }
            }
        }).create().show();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.whitesmsshowlist);
        getWindow().setSoftInputMode(34);
        this.e = (ListView) findViewById(R.id.safemode_log_list);
        this.e.setDivider(null);
        this.f = (TextView) findViewById(R.id.safemode_empty_textview);
        this.a = (Button) findViewById(R.id.safemode_operat_btn);
        this.c = (EditText) findViewById(R.id.safemode_send_textview);
        this.g = (TextView) findViewById(R.id.txtdesc);
        this.g.setVisibility(8);
        this.c.setVisibility(0);
        this.b = (Button) findViewById(R.id.safemode_operat_btn1);
        this.d = (LinearLayout) findViewById(R.id.safemode_lin_operate);
        this.d.setVisibility(0);
        this.a.setText(R.string.replay_sms_card1);
        this.k = getIntent().getStringExtra(AppDatabase.NUMBER);
        this.l = new ContractHelpUtils();
        this.i = new AppDatabase(this);
        this.p = DataHelpUtils.getContractModel(this, this.k);
        onBtnClick();
        DataHelpUtils.allActivity.add(this);
        int[] states = MyMultiSIMUtils.getAllSimState(this);
        if (MyMultiSIMUtils.isMultiSim(this)) {
            this.b.setVisibility(0);
            if (states[0] == 5 || states[0] == 2 || states[0] == 3) {
                this.a.setEnabled(true);
            } else {
                this.a.setEnabled(false);
            }
            if (states[1] == 5 || states[1] == 2 || states[1] == 3) {
                this.b.setEnabled(true);
            } else {
                this.b.setEnabled(false);
            }
        } else {
            this.a.setText(R.string.replay_sms2);
            this.b.setVisibility(8);
        }
        this.n = new a(this, (byte) 0);
        registerReceiver(this.n, new IntentFilter("android.intent.action.SCREEN_OFF"));
        this.h = this.i.getwhiteSmsInfo(this.k);
        if (this.h.size() >= 0) {
            if (this.h.size() > 0 && !TextUtils.isEmpty(this.h.get(0).getName())) {
                this.o = this.h.get(0).getName();
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), getSubStr(this.h.get(0).getName(), 14), (Integer) null);
            } else if (this.p == null) {
                this.o = this.k;
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), this.k, (Integer) null);
            } else if (TextUtils.isEmpty(this.p.getName())) {
                this.o = this.k;
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), this.k, (Integer) null);
            } else {
                this.o = this.p.getName();
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), getSubStr(this.p.getName(), 14), (Integer) null);
            }
            this.e.setEmptyView(this.f);
            this.j = new whiteSmsbyNumberAdapter(this, this.h);
            this.e.setAdapter((ListAdapter) this.j);
            this.hand.sendEmptyMessage(5);
        }
    }

    public String getSubStr(String str, int size) {
        if (getWordCount(str) > size) {
            return str.substring(0, 6) + "...";
        }
        return str;
    }

    public int getWordCount(String s) {
        int length = 0;
        for (int i2 = 0; i2 < s.length(); i2++) {
            int ascii = Character.codePointAt(s, i2);
            if (ascii < 0 || ascii > 255) {
                length += 2;
            } else {
                length++;
            }
        }
        return length;
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(WhiteSmsShowByNumber x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                WhiteSmsShowByNumber.this.finish();
            }
        }
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
        if (this.q == 0 || System.currentTimeMillis() - this.q <= 112000) {
            this.i.updateSmsStatus(this.k, 0);
            TrackEvent.trackResume(this);
            return;
        }
        HttpUtils.private_isOpenSec = false;
        finish();
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
        if (DataHelpUtils.getActivityByName("SofeModeMain") != null) {
            ((SofeModeMain) DataHelpUtils.getActivityByName("SofeModeMain")).hand.sendEmptyMessage(1);
        }
        if (DataHelpUtils.getActivityByName("WhiteSmsShowByNumber") != null) {
            DataHelpUtils.allActivity.remove(this);
        }
        unregisterReceiver(this.n);
        HttpUtils.private_isOpenSec = false;
        this.q = 0;
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.q = System.currentTimeMillis();
    }

    public void initData() {
        this.h = this.i.getwhiteSmsInfo(this.k);
        this.j = new whiteSmsbyNumberAdapter(this, this.h);
        this.e.setAdapter((ListAdapter) this.j);
    }

    public void onBtnClick() {
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSmsShowByNumber.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                WhiteSmsShowByNumber.this.m = position;
                WhiteSmsShowByNumber.a(WhiteSmsShowByNumber.this, (Contract) WhiteSmsShowByNumber.this.e.getItemAtPosition(position));
            }
        });
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSmsShowByNumber.AnonymousClass3 */

            public final void onClick(View v) {
                if (WhiteSmsShowByNumber.this.c.getText() != null && !WhiteSmsShowByNumber.this.c.getText().toString().equals("")) {
                    String content = WhiteSmsShowByNumber.this.c.getText().toString();
                    if (MyMultiSIMUtils.isMultiSim(WhiteSmsShowByNumber.this)) {
                        if (Settings.System.getInt(WhiteSmsShowByNumber.this.getContentResolver(), "airplane_mode_on", 0) == 0) {
                            DoubleCardUtils.privateSendMessage(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.k, content, true, 0);
                        } else {
                            Toast.makeText(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.getString(R.string.net_notavilable), 0).show();
                            return;
                        }
                    } else if (Settings.System.getInt(WhiteSmsShowByNumber.this.getContentResolver(), "airplane_mode_on", 0) == 0) {
                        DoubleCardUtils.sendMessage(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.k, content, true);
                    } else {
                        Toast.makeText(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.getString(R.string.net_notavilable), 0).show();
                        return;
                    }
                    Const.isTariff = false;
                    Contract sms = new Contract();
                    sms.setSmsContent(content);
                    sms.setSmstype(2);
                    sms.setDate(String.valueOf(System.currentTimeMillis()));
                    sms.setPhoneNumber(WhiteSmsShowByNumber.this.k);
                    sms.setIsRead(0);
                    sms.setName(WhiteSmsShowByNumber.this.o);
                    WhiteSmsShowByNumber.this.i.insertSms(sms);
                    SecurityService.beginTime = System.currentTimeMillis();
                    WhiteSmsShowByNumber.this.initData();
                    WhiteSmsShowByNumber.this.hand.sendEmptyMessage(5);
                    if (WhiteSmsShowByNumber.this.p == null) {
                        WhiteSmsShowByNumber.this.backToSms(sms, WhiteSmsShowByNumber.this);
                    }
                    Log.i(AppEntity.KEY_SIZE_LONG, WhiteSmsShowByNumber.this.h.size() + "666" + content);
                    WhiteSmsShowByNumber.this.c.setText("");
                }
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.WhiteSmsShowByNumber.AnonymousClass4 */

            public final void onClick(View v) {
                if (TextUtils.isEmpty(WhiteSmsShowByNumber.this.c.getText())) {
                    return;
                }
                if (Settings.System.getInt(WhiteSmsShowByNumber.this.getContentResolver(), "airplane_mode_on", 0) == 0) {
                    DoubleCardUtils.privateSendMessage(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.k, WhiteSmsShowByNumber.this.c.getText().toString(), true, 1);
                    Const.isTariff = false;
                    Contract sms = new Contract();
                    sms.setSmsContent(WhiteSmsShowByNumber.this.c.getText().toString());
                    sms.setSmstype(2);
                    sms.setDate(String.valueOf(System.currentTimeMillis()));
                    sms.setPhoneNumber(WhiteSmsShowByNumber.this.k);
                    sms.setIsRead(0);
                    sms.setName(WhiteSmsShowByNumber.this.o);
                    WhiteSmsShowByNumber.this.i.insertSms(sms);
                    SecurityService.beginTime = System.currentTimeMillis();
                    WhiteSmsShowByNumber.this.initData();
                    WhiteSmsShowByNumber.this.hand.sendEmptyMessage(5);
                    if (WhiteSmsShowByNumber.this.p == null) {
                        WhiteSmsShowByNumber.this.backToSms(sms, WhiteSmsShowByNumber.this);
                    }
                    WhiteSmsShowByNumber.this.c.setText("");
                    return;
                }
                Toast.makeText(WhiteSmsShowByNumber.this, WhiteSmsShowByNumber.this.getString(R.string.net_notavilable), 0).show();
            }
        });
    }

    public void backToSms(Contract con, Context context) {
        ContentValues values = new ContentValues();
        values.put("address", con.getPhoneNumber());
        values.put("date", String.valueOf(con.getDate()));
        values.put(PushReceiver.READ, (Integer) 1);
        values.put("status", (Integer) -1);
        values.put("type", Integer.valueOf(con.getSmstype()));
        values.put(PushReceiver.BODY, con.getSmsContent());
        context.getContentResolver().insert(Uri.parse("content://sms"), values);
    }
}
