package com.lenovo.safecenter.safemode;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import java.util.HashMap;

public class PrivateMainActivity extends BaseTitleActivity {
    private PrivateItemApater a;
    private TextView b;
    private ListView c;
    private ImageView d;
    private CustomDialog e;
    private HashMap<String, Long> f = new HashMap<>();
    private a g;
    private LeSafeUpdate h;
    private boolean i;
    private Handler j = new Handler() {
        /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((InputMethodManager) PrivateMainActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(PrivateMainActivity x0, final String x1) {
        if (PwdUtil.hasPassword(x0)) {
            View inflate = LayoutInflater.from(x0).inflate(R.layout.input_password_content, (ViewGroup) null);
            final TextView textView = (TextView) inflate.findViewById(R.id.txt_message);
            textView.setText(R.string.input_privacy_pwd);
            final EditText editText = (EditText) inflate.findViewById(R.id.edt_input_pwd);
            if (x0.e == null) {
                x0.e = new CustomDialog.Builder(x0).setTitle(R.string.input_pwd).setContentView(inflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass5 */

                    public final void onClick(DialogInterface dialog, int which) {
                        String newPwd = editText.getText().toString();
                        if (PwdUtil.checkPassword(PrivateMainActivity.this.getApplicationContext(), newPwd)) {
                            try {
                                PrivateMainActivity.this.i = false;
                                Intent i = new Intent(x1);
                                i.putExtra("pwd", PwdUtil.getPassword(PrivateMainActivity.this));
                                PrivateMainActivity.this.startActivity(i);
                            } catch (Exception e) {
                                Toast.makeText(PrivateMainActivity.this, (int) R.string.no_app, 0).show();
                            }
                            PrivateMainActivity.this.e.dismiss();
                        } else if (newPwd.length() == 0) {
                            textView.setText(R.string.error_tips_null);
                            editText.startAnimation(AnimationUtils.loadAnimation(PrivateMainActivity.this, R.anim.shake));
                        } else {
                            editText.startAnimation(AnimationUtils.loadAnimation(PrivateMainActivity.this, R.anim.shake));
                            editText.setText("");
                            textView.setText(R.string.pwd_error_tips);
                        }
                    }
                }, false).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass4 */

                    public final void onClick(DialogInterface dialog, int which) {
                        PrivateMainActivity.this.e = null;
                    }
                }).create();
            }
            x0.e.setOnDismissListener(new DialogInterface.OnDismissListener() {
                /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass6 */

                public final void onDismiss(DialogInterface dialog) {
                    PrivateMainActivity.this.e = null;
                }
            });
            if (!x0.e.isShowing()) {
                x0.e.show();
            }
            x0.j.sendEmptyMessageDelayed(1, 500);
        }
    }

    static /* synthetic */ void c(PrivateMainActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.down_info).setMessage(R.string.down_safebox).setPositiveButton(R.string.down_now, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                if (WflUtils.isNetworkAvailable(PrivateMainActivity.this)) {
                    if (PrivateMainActivity.this.h == null) {
                        PrivateMainActivity.this.h = new LeSafeUpdate(PrivateMainActivity.this, Const.PACKAGENAME_APP_LOCK, 0, AppDownloadActivity.CHANNEL_KEY_SELF, true, false, false, null);
                    }
                    PrivateMainActivity.this.h.upDate(true);
                    return;
                }
                DialogUtil.createManualUpdateDialog(PrivateMainActivity.this, 4, null);
            }
        }).setNegativeButton(R.string.last_time_do, (DialogInterface.OnClickListener) null).show();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.privatemain);
        this.i = false;
        if (getIntent().getStringExtra("pwd") != null) {
            if (getIntent().getStringExtra("pwd").equals(DataHelpUtils.execService("pwd", this)) && !PwdUtil.checkPassword(getApplicationContext(), getIntent().getStringExtra("pwd"), false)) {
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.privacy_safe, (Integer) null);
            } else if (PwdUtil.checkPassword(getApplicationContext(), getIntent().getStringExtra("pwd"), false)) {
                setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.privacy_safe, Integer.valueOf((int) R.drawable.rf_perf_title_right));
            }
            findViews();
            this.g = new a(this, (byte) 0);
            registerReceiver(this.g, new IntentFilter("android.intent.action.SCREEN_OFF"));
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() == R.id.base_title_right) {
            startActivity(new Intent(this, ContractSetting.class));
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.f.put("timespace", Long.valueOf(System.currentTimeMillis()));
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        this.a = new PrivateItemApater();
        this.c.setAdapter((ListAdapter) this.a);
        if (this.f.get("timespace") != null && this.f.get("timespace").longValue() + TrafficCorrectSetting.TIME < System.currentTimeMillis()) {
            this.i = true;
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(PrivateMainActivity x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                PrivateMainActivity.this.finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        this.i = false;
        unregisterReceiver(this.g);
        this.f = null;
        try {
            ErrorWhiteContract.list.clear();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void findViews() {
        this.c = (ListView) findViewById(R.id.signmain_list);
        this.b = (TextView) findViewById(R.id.signmain_empty);
        this.c.setItemsCanFocus(false);
        this.c.setEmptyView(this.b);
        this.d = (ImageView) findViewById(R.id.signmain_icon);
        this.d.setImageResource(R.drawable.privatemain_icon);
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.PrivateMainActivity.AnonymousClass3 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
                if (arg2 == 0) {
                    try {
                        if (PrivateMainActivity.this.i) {
                            PrivateMainActivity.a(PrivateMainActivity.this, "com.lenovo.safecenter.safemode.SofeModeMain");
                            return;
                        }
                        Intent i = new Intent("com.lenovo.safecenter.safemode.SofeModeMain");
                        i.putExtra("pwd", PrivateMainActivity.this.getIntent().getStringExtra("pwd"));
                        i.addFlags(8388608);
                        PrivateMainActivity.this.startActivity(i);
                    } catch (Exception e) {
                        try {
                            PrivateMainActivity.c(PrivateMainActivity.this);
                        } catch (ActivityNotFoundException e2) {
                            PrivateMainActivity.c(PrivateMainActivity.this);
                            e2.printStackTrace();
                        }
                    }
                } else if (arg2 == 1) {
                    try {
                        if (PrivateMainActivity.this.i) {
                            PrivateMainActivity.a(PrivateMainActivity.this, "com.lenovo.safecenter.LENOVO_SAFEBOX");
                        } else if (PwdUtil.checkPassword(PrivateMainActivity.this.getApplicationContext(), PrivateMainActivity.this.getIntent().getStringExtra("pwd"), false)) {
                            Intent i2 = new Intent("com.lenovo.safecenter.LENOVO_SAFEBOX");
                            i2.putExtra("pwd", PrivateMainActivity.this.getIntent().getStringExtra("pwd"));
                            i2.addFlags(8388608);
                            PrivateMainActivity.this.startActivity(i2);
                        } else {
                            PrivateMainActivity.c(PrivateMainActivity.this);
                        }
                    } catch (Exception e3) {
                        PrivateMainActivity.c(PrivateMainActivity.this);
                    }
                } else if (arg2 == 2) {
                    try {
                        if (PrivateMainActivity.this.i) {
                            PrivateMainActivity.a(PrivateMainActivity.this, Const.ACTION_JUMP_APP_LOCK);
                        } else if (PwdUtil.checkPassword(PrivateMainActivity.this.getApplicationContext(), PrivateMainActivity.this.getIntent().getStringExtra("pwd"), false)) {
                            Intent i3 = new Intent(Const.ACTION_JUMP_APP_LOCK);
                            i3.putExtra("pwd", PrivateMainActivity.this.getIntent().getStringExtra("pwd"));
                            i3.addFlags(8388608);
                            PrivateMainActivity.this.startActivity(i3);
                        } else {
                            PrivateMainActivity.c(PrivateMainActivity.this);
                        }
                    } catch (Exception e4) {
                        PrivateMainActivity.c(PrivateMainActivity.this);
                    }
                }
            }
        });
    }

    public class PrivateItemApater extends BaseAdapter {
        public PrivateItemApater() {
        }

        public int getCount() {
            try {
                if (!TrafficStatsService.nacServerIsExist() && PrivateMainActivity.this.getPackageManager().getPackageInfo(Const.PACKAGENAME_APP_LOCK, 8192).versionName.startsWith("1.0")) {
                }
            } catch (Exception e) {
            }
            return 3;
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
                convertView = LayoutInflater.from(PrivateMainActivity.this).inflate(R.layout.privatezone_itempage, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (TextView) convertView.findViewById(R.id.private_btitle);
                holder.b = (TextView) convertView.findViewById(R.id.private_stitle);
                holder.c = (ImageView) convertView.findViewById(R.id.private_cion);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            if (position == 0) {
                holder.a.setText(R.string.private_onebig);
                holder.b.setText(R.string.private_onesmall);
                holder.c.setImageResource(R.drawable.private1);
            } else if (position == 1) {
                holder.a.setText(R.string.private_twobig);
                holder.b.setText(R.string.private_twosmall);
                holder.c.setImageResource(R.drawable.private2);
            } else if (position == 2) {
                holder.a.setText(R.string.private_threebig);
                holder.b.setText(R.string.private_threesmall);
                holder.c.setImageResource(R.drawable.private3);
            }
            return convertView;
        }

        private class a {
            TextView a;
            TextView b;
            ImageView c;

            private a() {
            }

            /* synthetic */ a(PrivateItemApater x0, byte b2) {
                this();
            }
        }
    }
}
