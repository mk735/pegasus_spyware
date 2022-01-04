package com.lenovo.safecenter.safemode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.List;

public class HandActivity extends BaseTitleActivity {
    private EditText a;
    private EditText b;
    private Button c;
    private AppDatabase d;
    private ContractHelpUtils e;
    private a f;

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.handblack);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.privacy_mode_set, (Integer) null);
        this.a = (EditText) findViewById(R.id.safemode_hand_number_value);
        this.b = (EditText) findViewById(R.id.safemode_hand_name_value);
        this.c = (Button) findViewById(R.id.safemode_hand_numbre_add);
        this.d = new AppDatabase(this);
        this.e = new ContractHelpUtils();
        onBtnClick();
        this.f = new a(this, (byte) 0);
        registerReceiver(this.f, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
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

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f);
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(HandActivity x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                HandActivity.this.finish();
            }
        }
    }

    public void initCopyDel(final Contract con) {
        new Thread() {
            /* class com.lenovo.safecenter.safemode.HandActivity.AnonymousClass1 */

            public final void run() {
                try {
                    String optNumber = con.getPhoneNumber();
                    if (HandActivity.this.e.isMobileNO(optNumber)) {
                        optNumber = HandActivity.this.e.optNUmber(optNumber);
                    }
                    List<Contract> call = HandActivity.this.e.getCallContractByNUmber(HandActivity.this, optNumber, con.getPhoneNumber());
                    List<Contract> sms = HandActivity.this.e.getSmsByNUmber(HandActivity.this, optNumber, con.getPhoneNumber(), con.getName());
                    HandActivity.this.d.insertCall(call);
                    HandActivity.this.d.insertSms(sms);
                    if (call.size() > 0 || sms.size() > 0) {
                        HandActivity.this.e.operateNumber(optNumber, HandActivity.this, sms.size() > 0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void onBtnClick() {
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.HandActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (HandActivity.this.a.getText() == null || HandActivity.this.a.getText().toString().equalsIgnoreCase("")) {
                    Toast.makeText(HandActivity.this, (int) R.string.hand_number_null, 0).show();
                    return;
                }
                String number = HandActivity.this.a.getText().toString();
                Log.i("match", number + "==" + Patterns.PHONE.matcher(number).matches());
                if (!Patterns.PHONE.matcher(number).matches()) {
                    Toast.makeText(HandActivity.this, (int) R.string.hand_number_error, 0).show();
                } else if (HandActivity.this.d.getWhiteContract(number) == null) {
                    String name = null;
                    if (HandActivity.this.b.getText() != null && !HandActivity.this.b.getText().toString().equalsIgnoreCase("")) {
                        name = HandActivity.this.b.getText().toString();
                    }
                    Contract con = new Contract();
                    con.setName(name);
                    con.setPhoneNumber(number);
                    con.setRealnumber(HandActivity.this.e.getRealPhoneNumber(number));
                    HandActivity.this.d.insertContract(con);
                    ContractHelpUtils.sendBraodcast(HandActivity.this, "com.lenovo.securityperson.change");
                    Toast.makeText(HandActivity.this, (int) R.string.info_success, 0).show();
                    HandActivity.this.initCopyDel(con);
                    HandActivity.this.finish();
                } else {
                    Toast.makeText(HandActivity.this, (int) R.string.hand_number_error1, 0).show();
                }
            }
        });
    }
}
