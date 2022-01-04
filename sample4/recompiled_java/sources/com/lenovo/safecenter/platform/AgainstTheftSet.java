package com.lenovo.safecenter.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;

public class AgainstTheftSet extends Activity {
    public static boolean sendMail = false;
    CustomDialog a;
    private CheckBox b;
    private CheckBox c;
    private ImageView d;
    private boolean e;
    private boolean f;
    private boolean g;
    private TextView h;
    private TextView i;
    private TextView j;
    private SharedPreferences k;
    private String l;
    private String m;
    private RelativeLayout n;
    private RelativeLayout o;
    private LinearLayout p;
    private TelephonyManager q;
    private int r;
    private TextView s;
    private ActivityManager t;
    private a u;
    private Handler v = new Handler() {
        /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass13 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    AgainstTheftSet.sendMail = false;
                    AgainstTheftSet.this.a();
                    Toast.makeText(AgainstTheftSet.this.getApplicationContext(), AgainstTheftSet.this.getApplicationContext().getString(R.string.mail_send) + AgainstTheftSet.this.getApplicationContext().getString(R.string.backup_to_phone_ok_activity), 1).show();
                    return;
                case 2:
                    AgainstTheftSet.sendMail = false;
                    AgainstTheftSet.this.a();
                    Toast.makeText(AgainstTheftSet.this.getApplicationContext(), (int) R.string.backup_to_phone_no_activity, 1).show();
                    return;
                case 3:
                    AgainstTheftSet.sendMail = true;
                    AgainstTheftSet.this.a();
                    Toast.makeText(AgainstTheftSet.this.getApplicationContext(), (int) R.string.sending, 1).show();
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void e(AgainstTheftSet x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.disable_antitheft_tip).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
                Const.setProtecThiefSwitchState(false);
                AgainstTheftSet.this.stopService(new Intent("com.lenovo.antitheft.ALARM"));
                AgainstTheftSet.this.k.edit().putBoolean("all", false).commit();
                AgainstTheftSet.this.k.edit().putBoolean("locked", false).commit();
                AgainstTheftSet.this.k.edit().putBoolean("alarm", false).commit();
                AgainstTheftSet.this.k.edit().putBoolean("sim_changed_locked_screen", false).commit();
                AgainstTheftSet.this.a(false);
                AgainstTheftSet.this.d.setImageResource(R.drawable.btn_off);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).setColorPositiveButton(false).setColorNegativeButton(true).show();
    }

    static /* synthetic */ void g(AgainstTheftSet x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.first_set_safephone).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).setPositiveButton(R.string.set_now, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                Intent i = new Intent(AgainstTheftSet.this.getApplicationContext(), AgainstTheftSafePhoneSetActivity.class);
                i.setFlags(1073741824);
                i.putExtra("firstsetphone", true);
                AgainstTheftSet.this.startActivityForResult(i, 0);
            }
        }).setColorPositiveButton(true).setColorNegativeButton(false).show();
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(AgainstTheftSet x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                AgainstTheftSet.this.finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.u);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.againsttheftset_main);
        b();
        this.u = new a(this, (byte) 0);
        registerReceiver(this.u, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    private void b() {
        Log.i("ydp", "init~");
        this.q = (TelephonyManager) getSystemService("phone");
        this.t = (ActivityManager) getSystemService("activity");
        this.k = getSharedPreferences("antitheft", 0);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.theft);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass1 */

            public final void onClick(View v) {
                AgainstTheftSet.this.finish();
            }
        });
        this.n = (RelativeLayout) findViewById(R.id.safephone_parent);
        this.o = (RelativeLayout) findViewById(R.id.backup_mail_parent);
        this.p = (LinearLayout) findViewById(R.id.linearLayout1);
        this.b = (CheckBox) findViewById(R.id.checkBox_sim_alarm_sms);
        this.c = (CheckBox) findViewById(R.id.checkBox_sim_alarm_screen);
        this.d = (ImageView) findViewById(R.id.a_switch_protect_thief);
        this.h = (TextView) findViewById(R.id.detail_safephone);
        this.i = (TextView) findViewById(R.id.detail_backup_mail);
        this.j = (TextView) findViewById(R.id.detail_protect_thief);
        this.l = Const.getSafePhoneNumber();
        this.m = Const.getSafeMail();
        this.s = (TextView) findViewById(R.id.backup_now_btn);
        if (this.m.equals("")) {
            this.s.setVisibility(8);
        } else {
            this.s.setVisibility(0);
        }
        a();
        this.s.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass6 */

            public final void onClick(View v) {
                new Thread() {
                    /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass6.AnonymousClass1 */

                    public final void run() {
                        if (MyUtils.getNetWorksState(AgainstTheftSet.this)) {
                            AgainstTheftSet.this.v.sendEmptyMessage(3);
                        }
                        AgainstTheftSet.this.v.sendEmptyMessage(MyUtils.backupToMail(AgainstTheftSet.this.getApplicationContext(), "", Const.getSafeMail()));
                    }
                }.start();
            }
        });
        this.e = this.k.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false);
        this.f = this.k.getBoolean("sim_alarm_sms", false);
        this.g = this.k.getBoolean("sim_alarm_screen", false);
        this.r = this.q.getSimState();
        if (this.e) {
            this.d.setImageResource(R.drawable.btn_on);
        } else {
            this.d.setImageResource(R.drawable.btn_off);
        }
        a(this.e);
        this.b.setChecked(this.f);
        this.c.setChecked(this.g);
        if (this.l.equals("")) {
            this.h.setText(R.string.safe_phone_number_save_no);
            this.h.setTextColor(getResources().getColor(R.color.red));
        } else {
            this.h.setText(this.l);
            this.h.setTextColor(R.color.gray2);
        }
        if (this.m.equals("")) {
            this.i.setText(R.string.safe_mail_address_save_no);
            this.i.setTextColor(getResources().getColor(R.color.red));
        } else {
            this.i.setText(this.m);
            this.i.setTextColor(R.color.gray2);
        }
        this.n.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass7 */

            public final void onClick(View v) {
                boolean sim1Ready;
                boolean sim2Ready;
                if (MyMultiSIMUtils.isMultiSim(AgainstTheftSet.this)) {
                    int[] states = MyMultiSIMUtils.getAllSimState(AgainstTheftSet.this);
                    int simState0 = states[0];
                    int simState1 = states[1];
                    if (simState0 == 5 || simState0 == 2 || simState0 == 3) {
                        sim1Ready = true;
                    } else {
                        sim1Ready = false;
                    }
                    if (simState1 == 5 || simState1 == 2 || simState1 == 3) {
                        sim2Ready = true;
                    } else {
                        sim2Ready = false;
                    }
                    if (sim1Ready || sim2Ready) {
                        Intent i = new Intent(AgainstTheftSet.this.getApplicationContext(), AgainstTheftSafePhoneSetActivity.class);
                        i.setFlags(1073741824);
                        AgainstTheftSet.this.startActivityForResult(i, 0);
                        return;
                    }
                    if (AgainstTheftSet.this.a == null) {
                        AgainstTheftSet.this.a = new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(R.string.insert_sim).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).create();
                    }
                    if (!AgainstTheftSet.this.a.isShowing()) {
                        AgainstTheftSet.this.a.show();
                        return;
                    }
                    return;
                }
                AgainstTheftSet.this.r = AgainstTheftSet.this.q.getSimState();
                Log.d("test", "SimState: " + AgainstTheftSet.this.r);
                if (AgainstTheftSet.this.r == 1 || AgainstTheftSet.this.r == 0) {
                    if (AgainstTheftSet.this.a == null) {
                        AgainstTheftSet.this.a = new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(R.string.insert_sim).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).create();
                    }
                    if (!AgainstTheftSet.this.a.isShowing()) {
                        AgainstTheftSet.this.a.show();
                        return;
                    }
                    return;
                }
                Intent i2 = new Intent(AgainstTheftSet.this.getApplicationContext(), AgainstTheftSafePhoneSetActivity.class);
                i2.setFlags(1073741824);
                AgainstTheftSet.this.startActivityForResult(i2, 0);
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass8 */

            public final void onClick(View v) {
                Intent i = new Intent(AgainstTheftSet.this.getApplicationContext(), AgainstTheftSafeMailSetActivity.class);
                i.setFlags(1073741824);
                AgainstTheftSet.this.startActivityForResult(i, 0);
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass9 */

            public final void onClick(View v) {
                Intent i = new Intent(AgainstTheftSet.this.getApplicationContext(), AgainstTheftPromptActivity.class);
                i.setFlags(1073741824);
                AgainstTheftSet.this.startActivityForResult(i, 0);
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass10 */

            public final void onClick(View v) {
                String msg;
                boolean sim1Ready;
                String msg2;
                boolean sim2Ready = false;
                Log.e("ydp", "checkBox_thief click!" + AgainstTheftSet.this.k.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false));
                if (AgainstTheftSet.this.k.getBoolean(Const.KEY_IS_PROTECT_THIEF_ON, false)) {
                    AgainstTheftSet.e(AgainstTheftSet.this);
                } else if (MyMultiSIMUtils.isMultiSim(AgainstTheftSet.this)) {
                    int[] states = MyMultiSIMUtils.getAllSimState(AgainstTheftSet.this);
                    int simState0 = states[0];
                    int simState1 = states[1];
                    if (simState0 == 5) {
                        sim1Ready = true;
                    } else {
                        sim1Ready = false;
                    }
                    if (simState1 == 5) {
                        sim2Ready = true;
                    }
                    if (!sim1Ready && !sim2Ready) {
                        if (AgainstTheftSet.this.a == null) {
                            if (simState0 == 2 || simState0 == 3 || simState1 == 2 || simState1 == 3) {
                                msg2 = AgainstTheftSet.this.getString(R.string.sim_pin);
                            } else {
                                msg2 = AgainstTheftSet.this.getString(R.string.insert_sim);
                            }
                            AgainstTheftSet.this.a = new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(msg2).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).create();
                        }
                        if (!AgainstTheftSet.this.a.isShowing()) {
                            AgainstTheftSet.this.a.show();
                        }
                    } else if (AgainstTheftSet.this.l.equals("")) {
                        AgainstTheftSet.g(AgainstTheftSet.this);
                    } else {
                        Const.setProtecThiefSwitchState(true);
                        AgainstTheftSet.this.d.setImageResource(R.drawable.btn_on);
                        AgainstTheftSet.this.a(true);
                    }
                } else {
                    AgainstTheftSet.this.r = AgainstTheftSet.this.q.getSimState();
                    Log.d("test", "SimState: " + AgainstTheftSet.this.r);
                    if (AgainstTheftSet.this.r != 5) {
                        if (AgainstTheftSet.this.a == null) {
                            if (AgainstTheftSet.this.r == 2 || AgainstTheftSet.this.r == 3) {
                                msg = AgainstTheftSet.this.getString(R.string.sim_pin);
                            } else {
                                msg = AgainstTheftSet.this.getString(R.string.insert_sim);
                            }
                            AgainstTheftSet.this.a = new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(msg).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).create();
                        }
                        if (!AgainstTheftSet.this.a.isShowing()) {
                            AgainstTheftSet.this.a.show();
                        }
                    } else if (AgainstTheftSet.this.l.equals("")) {
                        AgainstTheftSet.g(AgainstTheftSet.this);
                    } else {
                        Const.setProtecThiefSwitchState(true);
                        AgainstTheftSet.this.d.setImageResource(R.drawable.btn_on);
                        AgainstTheftSet.this.a(true);
                    }
                }
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass11 */

            public final void onClick(View v) {
                String msg;
                if (!AgainstTheftSet.this.b.isChecked()) {
                    AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_sms", false).commit();
                } else if (MyMultiSIMUtils.isMultiSim(AgainstTheftSet.this)) {
                    int[] states = MyMultiSIMUtils.getAllSimState(AgainstTheftSet.this);
                    int simState0 = states[0];
                    int simState1 = states[1];
                    boolean sim1Ready = simState0 == 5;
                    boolean sim2Ready = simState1 == 5;
                    if (!sim1Ready && !sim2Ready) {
                        AgainstTheftSet.this.b.setChecked(false);
                        if (simState0 == 2 || simState0 == 3 || simState1 == 2 || simState1 == 3) {
                            msg = AgainstTheftSet.this.getString(R.string.sim_pin);
                        } else {
                            msg = AgainstTheftSet.this.getString(R.string.insert_sim);
                        }
                        new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(msg).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).show();
                    } else if (AgainstTheftSet.this.l.equals("")) {
                        Toast.makeText(AgainstTheftSet.this.getApplicationContext(), (int) R.string.safe_phone_number_save_no, 0).show();
                        AgainstTheftSet.this.b.setChecked(false);
                    } else {
                        AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_sms", true).commit();
                        Log.i("boot", "myutil  sim0" + simState0 + "sim1" + simState1);
                        String simSerialNumber1 = MyUtils.getSimSerialNumber(0, sim1Ready, AgainstTheftSet.this);
                        String simSerialNumber2 = MyUtils.getSimSerialNumber(1, sim2Ready, AgainstTheftSet.this);
                        if (simSerialNumber1 != null) {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER1", simSerialNumber1).commit();
                        } else {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER1", "").commit();
                        }
                        if (simSerialNumber2 != null) {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER2", simSerialNumber2).commit();
                        } else {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER2", "").commit();
                        }
                    }
                } else {
                    AgainstTheftSet.this.r = AgainstTheftSet.this.q.getSimState();
                    if (AgainstTheftSet.this.l.equals("")) {
                        Toast.makeText(AgainstTheftSet.this.getApplicationContext(), (int) R.string.safe_phone_number_save_no, 0).show();
                        AgainstTheftSet.this.b.setChecked(false);
                    } else if (AgainstTheftSet.this.r == 5 || AgainstTheftSet.this.r == 2 || AgainstTheftSet.this.r == 3) {
                        AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_sms", true).commit();
                        String simSerialNumber = AgainstTheftSet.this.q.getSubscriberId();
                        while (simSerialNumber == null) {
                            simSerialNumber = AgainstTheftSet.this.q.getSubscriberId();
                        }
                        AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER", simSerialNumber).commit();
                    } else {
                        AgainstTheftSet.this.b.setChecked(false);
                        new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(R.string.insert_sim).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).show();
                    }
                }
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.AgainstTheftSet.AnonymousClass12 */

            public final void onClick(View v) {
                String msg;
                if (!AgainstTheftSet.this.c.isChecked()) {
                    AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_screen", false).commit();
                } else if (MyMultiSIMUtils.isMultiSim(AgainstTheftSet.this)) {
                    int[] states = MyMultiSIMUtils.getAllSimState(AgainstTheftSet.this);
                    int simState0 = states[0];
                    int simState1 = states[1];
                    boolean sim1Ready = simState0 == 5;
                    boolean sim2Ready = simState1 == 5;
                    if (sim1Ready || sim2Ready) {
                        Log.i("boot", "sim0" + simState0 + "sim1" + simState1);
                        AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_screen", true).commit();
                        String simSerialNumber1 = MyUtils.getSimSerialNumber(0, sim1Ready, AgainstTheftSet.this);
                        String simSerialNumber2 = MyUtils.getSimSerialNumber(1, sim2Ready, AgainstTheftSet.this);
                        if (simSerialNumber1 != null) {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER1", simSerialNumber1).commit();
                        } else {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER1", "").commit();
                        }
                        if (simSerialNumber2 != null) {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER2", simSerialNumber2).commit();
                        } else {
                            AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER2", "").commit();
                        }
                    } else {
                        AgainstTheftSet.this.c.setChecked(false);
                        if (simState0 == 2 || simState0 == 3 || simState1 == 2 || simState1 == 3) {
                            msg = AgainstTheftSet.this.getString(R.string.sim_pin);
                        } else {
                            msg = AgainstTheftSet.this.getString(R.string.insert_sim);
                        }
                        new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(msg).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).show();
                    }
                } else {
                    AgainstTheftSet.this.r = AgainstTheftSet.this.q.getSimState();
                    if (AgainstTheftSet.this.r == 5 || AgainstTheftSet.this.r == 2 || AgainstTheftSet.this.r == 3) {
                        AgainstTheftSet.this.k.edit().putBoolean("sim_alarm_screen", true).commit();
                        String simSerialNumber = AgainstTheftSet.this.q.getSubscriberId();
                        if (simSerialNumber == null) {
                            simSerialNumber = AgainstTheftSet.this.q.getSubscriberId();
                        }
                        AgainstTheftSet.this.k.edit().putString("ORG_SIM_NUMBER", simSerialNumber).commit();
                        return;
                    }
                    AgainstTheftSet.this.c.setChecked(false);
                    new CustomDialog.Builder(AgainstTheftSet.this).setTitle(R.string.info).setMessage(R.string.insert_sim).setNeutralButton(R.string.sumbit, (DialogInterface.OnClickListener) null).show();
                }
            }
        });
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (sendMail) {
            this.s.setEnabled(false);
            this.s.setTextColor(getResources().getColor(R.color.gray2));
            return;
        }
        this.s.setEnabled(true);
        this.s.setTextColor(getResources().getColor(R.color.blue_btn));
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        LeSafeObservable.get(getApplicationContext()).noticeRefreshProtectThiefDetail();
        TrackEvent.trackPause(this);
        if (!this.t.getRunningTasks(1).get(0).topActivity.getPackageName().equals(getPackageName())) {
            finish();
        }
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        b();
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        super.onRestart();
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean b2) {
        Log.i("ydp", "updateswitch");
        if (b2) {
            this.j.setText(R.string.opend);
            this.j.setTextColor(getResources().getColor(R.color.gray2));
            return;
        }
        this.j.setText(R.string.closed);
        this.j.setTextColor(-65536);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.i("ydp", "requestCode:" + requestCode + "resultCode:" + resultCode);
        if (resultCode == 100) {
            finish();
        }
    }
}
