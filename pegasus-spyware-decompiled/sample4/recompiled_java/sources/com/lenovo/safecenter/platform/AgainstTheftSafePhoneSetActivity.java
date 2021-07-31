package com.lenovo.safecenter.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.regex.Pattern;

public class AgainstTheftSafePhoneSetActivity extends Activity {
    TextView a;
    EditText b;
    private SharedPreferences c;
    private String d;
    private String e;
    private int f;
    private TelephonyManager g;
    private ActivityManager h;
    private boolean i = false;

    static /* synthetic */ void d(AgainstTheftSafePhoneSetActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.send_sms_info).setPositiveButton(R.string.send_on, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafePhoneSetActivity.AnonymousClass5 */

            public final void onClick(DialogInterface arg0, int arg1) {
                DoubleCardUtils.sendMessage(AgainstTheftSafePhoneSetActivity.this.getApplicationContext(), AgainstTheftSafePhoneSetActivity.this.e, AgainstTheftSafePhoneSetActivity.this.getString(R.string.distant_com) + " " + PwdUtil.getPasswordWithJieMi(AgainstTheftSafePhoneSetActivity.this.getApplicationContext()) + AgainstTheftSafePhoneSetActivity.this.getString(R.string.command_content), true);
                Const.isTariff = false;
                Toast.makeText(AgainstTheftSafePhoneSetActivity.this.getApplicationContext(), (int) R.string.setting_pwdok, 1).show();
                AgainstTheftSafePhoneSetActivity.i(AgainstTheftSafePhoneSetActivity.this);
            }
        }).setNegativeButton(R.string.send_off_, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafePhoneSetActivity.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                Toast.makeText(AgainstTheftSafePhoneSetActivity.this.getApplicationContext(), (int) R.string.setting_pwdok, 1).show();
                AgainstTheftSafePhoneSetActivity.i(AgainstTheftSafePhoneSetActivity.this);
            }
        }).show();
    }

    static /* synthetic */ void h(AgainstTheftSafePhoneSetActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.error).setMessage(R.string.phonenumber_error).setNegativeButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafePhoneSetActivity.AnonymousClass3 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    static /* synthetic */ void i(AgainstTheftSafePhoneSetActivity x0) {
        if (x0.getIntent().getBooleanExtra("first_set_phone", false)) {
            x0.f = x0.g.getSimState();
            if (x0.f == 5 || x0.f == 2 || x0.f == 3) {
                x0.c.edit().putString("ORG_SIM_NUMBER", x0.g.getSubscriberId()).commit();
                x0.c.edit().putBoolean("sim_alarm_sms", true).commit();
                x0.c.edit().putBoolean("sim_alarm_screen", true).commit();
            } else {
                x0.c.edit().putBoolean("sim_alarm_sms", false).commit();
                x0.c.edit().putBoolean("sim_alarm_screen", false).commit();
            }
            if (x0.getIntent().getBooleanExtra("to_angist", false)) {
                x0.startActivity(new Intent(x0, AgainstTheftSet.class));
            }
            x0.finish();
            return;
        }
        x0.finish();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_antitheft_safephone_layout);
        getWindow().setSoftInputMode(34);
        this.g = (TelephonyManager) getSystemService("phone");
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.safe_phone_number_set);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafePhoneSetActivity.AnonymousClass1 */

            public final void onClick(View v) {
                AgainstTheftSafePhoneSetActivity.this.finish();
            }
        });
        this.h = (ActivityManager) getSystemService("activity");
        this.c = getSharedPreferences("antitheft", 0);
        this.d = Const.getSafePhoneNumber();
        this.i = getIntent().getBooleanExtra("firstsetphone", false);
        this.b = (EditText) findViewById(R.id.set_safephone_edittext);
        Log.i("ydp", this.d + "++++++++++++++");
        this.b.setText(this.d);
        this.a = (TextView) findViewById(R.id.okbtn);
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSafePhoneSetActivity.AnonymousClass2 */

            public final void onClick(View v) {
                boolean sim1Ready;
                boolean sim2Ready;
                AgainstTheftSafePhoneSetActivity.this.e = AgainstTheftSafePhoneSetActivity.this.b.getText().toString();
                if (AgainstTheftSafePhoneSetActivity.this.e.length() == 0) {
                    Const.setSafePhoneNumber("");
                    AgainstTheftSafePhoneSetActivity.this.c.edit().putBoolean("sim_alarm_sms", false).commit();
                    AgainstTheftSafePhoneSetActivity.this.finish();
                } else if (AgainstTheftSafePhoneSetActivity.this.isMobileNO(AgainstTheftSafePhoneSetActivity.this.e)) {
                    Const.setSafePhoneNumber(AgainstTheftSafePhoneSetActivity.this.e);
                    if (AgainstTheftSafePhoneSetActivity.this.d.equals(AgainstTheftSafePhoneSetActivity.this.e)) {
                        Toast.makeText(AgainstTheftSafePhoneSetActivity.this.getApplicationContext(), (int) R.string.no_edit, 1).show();
                        AgainstTheftSafePhoneSetActivity.this.finish();
                        return;
                    }
                    AgainstTheftSafePhoneSetActivity.d(AgainstTheftSafePhoneSetActivity.this);
                    if (AgainstTheftSafePhoneSetActivity.this.i) {
                        AgainstTheftSafePhoneSetActivity.this.c.edit().putBoolean("sim_alarm_sms", true).commit();
                        AgainstTheftSafePhoneSetActivity.this.c.edit().putBoolean("sim_alarm_screen", true).commit();
                        Const.setProtecThiefSwitchState(true);
                        if (MyMultiSIMUtils.isMultiSim(AgainstTheftSafePhoneSetActivity.this)) {
                            int[] states = MyMultiSIMUtils.getAllSimState(AgainstTheftSafePhoneSetActivity.this);
                            int simState0 = states[0];
                            int simState1 = states[1];
                            if (simState0 == 5) {
                                sim1Ready = true;
                            } else {
                                sim1Ready = false;
                            }
                            if (simState1 == 5) {
                                sim2Ready = true;
                            } else {
                                sim2Ready = false;
                            }
                            if (sim1Ready || sim2Ready) {
                                Log.i("boot", "sim0" + simState0 + "sim1" + simState1);
                                String simSerialNumber1 = MyUtils.getSimSerialNumber(0, sim1Ready, AgainstTheftSafePhoneSetActivity.this);
                                String simSerialNumber2 = MyUtils.getSimSerialNumber(1, sim2Ready, AgainstTheftSafePhoneSetActivity.this);
                                if (simSerialNumber1 != null) {
                                    AgainstTheftSafePhoneSetActivity.this.c.edit().putString("ORG_SIM_NUMBER1", simSerialNumber1).commit();
                                } else {
                                    AgainstTheftSafePhoneSetActivity.this.c.edit().putString("ORG_SIM_NUMBER1", "").commit();
                                }
                                if (simSerialNumber2 != null) {
                                    AgainstTheftSafePhoneSetActivity.this.c.edit().putString("ORG_SIM_NUMBER2", simSerialNumber2).commit();
                                } else {
                                    AgainstTheftSafePhoneSetActivity.this.c.edit().putString("ORG_SIM_NUMBER2", "").commit();
                                }
                            }
                        } else {
                            AgainstTheftSafePhoneSetActivity.this.f = AgainstTheftSafePhoneSetActivity.this.g.getSimState();
                            if (AgainstTheftSafePhoneSetActivity.this.f == 5) {
                                String simSerialNumber = AgainstTheftSafePhoneSetActivity.this.g.getSubscriberId();
                                if (simSerialNumber == null) {
                                    simSerialNumber = AgainstTheftSafePhoneSetActivity.this.g.getSubscriberId();
                                }
                                AgainstTheftSafePhoneSetActivity.this.c.edit().putString("ORG_SIM_NUMBER", simSerialNumber).commit();
                            }
                        }
                    }
                } else {
                    AgainstTheftSafePhoneSetActivity.h(AgainstTheftSafePhoneSetActivity.this);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        Log.i("ydp", "result pkg" + this.h.getRunningTasks(1).get(0).topActivity.getPackageName());
        if (!this.h.getRunningTasks(1).get(0).topActivity.getPackageName().equals(getPackageName())) {
            setResult(100);
            finish();
        }
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    public boolean isMobileNO(String mobiles) {
        return Pattern.compile("^((\\+86)|(86))?((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$").matcher(mobiles).matches();
    }
}
