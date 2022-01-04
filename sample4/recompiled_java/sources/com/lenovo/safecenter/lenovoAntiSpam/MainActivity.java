package com.lenovo.safecenter.lenovoAntiSpam;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SafeCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SmsCheckUtils;
import com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalBlackActivity;
import com.lenovo.safecenter.lenovoAntiSpam.views.ManLocalWhiteActivity;
import com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity;
import com.lenovo.safecenter.platform.BaseTitlePreferenceActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;

public class MainActivity extends BaseTitlePreferenceActivity {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private e f;
    private c g;
    private d h;
    private Handler i = new a(this, (byte) 0);

    /* access modifiers changed from: package-private */
    public class d extends BroadcastReceiver {
        d() {
        }

        public final void onReceive(Context context, Intent intent) {
            Log.i("onReceive", intent.getAction());
            if (intent.getAction().equals("com.lenovo.antispam.notify")) {
                Log.i("onReceive", intent.getAction());
                MainActivity.this.i.sendEmptyMessage(1);
            }
        }
    }

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(MainActivity x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    MainActivity.this.updateStatus();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        } else if (v.getId() == R.id.base_title_right) {
            startActivity(new Intent(this, NightPreActivity.class));
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.lenovo.antispam.notify");
        registerReceiver(this.h, filter);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamapp_name, Integer.valueOf((int) R.drawable.rf_perf_title_right));
        PreferenceScreen createPreferenceScreen = getPreferenceManager().createPreferenceScreen(this);
        this.f = new e(this);
        this.f.setKey("harss_preference");
        this.g = new c(this);
        this.g.setKey("ss");
        this.g.setSelectable(false);
        createPreferenceScreen.addPreference(this.g);
        PreferenceCategory preferenceCategory = new PreferenceCategory(this);
        preferenceCategory.setTitle(getString(R.string.safe_log));
        createPreferenceScreen.addPreference(preferenceCategory);
        this.a = new b(this);
        this.a.setKey("callsafelog");
        this.a.a(getString(R.string.antispammanlogdesc));
        this.a.a(R.drawable.antispamlog);
        Intent intent = new Intent();
        intent.setAction("com.lenovo.safecenter.view.DisplayLogTab");
        intent.putExtra("logType", "callharass");
        this.a.setIntent(intent);
        preferenceCategory.addPreference(this.a);
        PreferenceCategory preferenceCategory2 = new PreferenceCategory(this);
        preferenceCategory2.setTitle(R.string.antispammancallcategory);
        createPreferenceScreen.addPreference(preferenceCategory2);
        this.c = new b(this);
        this.c.setKey("backcallpreference");
        this.c.a(getString(R.string.antispammancallblack));
        this.c.b(-7829368);
        this.c.b(getString(R.string.antispammanblackcalldesc));
        this.c.a(R.drawable.antispamblack);
        Intent intent2 = new Intent(this, ManLocalBlackActivity.class);
        intent2.putExtra("type", 1);
        this.c.setIntent(intent2);
        preferenceCategory2.addPreference(this.c);
        this.d = new b(this);
        this.d.setKey("whitepreference");
        this.d.a(getString(R.string.antispammanwhite));
        this.d.b(-7829368);
        this.d.b(getString(R.string.antispammanwhitedesc));
        this.d.a(R.drawable.antispamwhite);
        this.d.setIntent(new Intent(this, ManLocalWhiteActivity.class));
        preferenceCategory2.addPreference(this.d);
        this.e = new b(this);
        this.e.setKey("backsmspreference");
        this.e.a(getString(R.string.antispammansmsblack));
        this.e.b(-7829368);
        this.e.b(getString(R.string.antispammanblacksmsdesc));
        this.e.a(R.drawable.antispammansmsblack);
        Intent intent3 = new Intent(this, ManLocalBlackActivity.class);
        intent3.putExtra("type", 0);
        this.e.setIntent(intent3);
        new PreferenceCategory(this).setTitle(R.string.antispamsetting);
        this.b = new b(this);
        this.b.setKey("setpre");
        this.b.a(getString(R.string.antispamsetting));
        this.b.b(-7829368);
        this.b.b(getString(R.string.antispamsettingdesc));
        this.b.a(R.drawable.antispamsetting);
        this.b.setIntent(new Intent(this, NightPreActivity.class));
        setPreferenceScreen(createPreferenceScreen);
        this.h = new d();
        registerAction();
        SharedPreferences preferences = getSharedPreferences("isFirst", 0);
        if (preferences.getBoolean("flag11", true)) {
            SafeCenter.setPathUrl(this);
            SmsCheckUtils.init(this);
            new HttpUtils().UpdateConfig("systime", "2011.02.13", this);
            SharedPreferences.Editor editor = preferences.edit();
            editor.putBoolean("flag11", false);
            editor.commit();
            new AppDatabase(this).initWhiteSMS();
        }
    }

    public boolean getHarssStatus() {
        return getSharedPreferences("HarssStatus", 1).getBoolean("status", true);
    }

    public void updateHarssStatus(boolean bool) {
        SharedPreferences.Editor editor = getSharedPreferences("HarssStatus", 1).edit();
        editor.putBoolean("status", bool);
        editor.commit();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.h);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onResume() {
        super.onResume();
        updateStatus();
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            this.c.setEnabled(false);
            this.d.setEnabled(false);
            this.e.setEnabled(false);
        } else {
            this.c.setEnabled(true);
            this.d.setEnabled(true);
            this.e.setEnabled(true);
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void updateStatus() {
        String smsstr = getString(R.string.antispamsafelogdesc) + CheckCenter.getHarassCount(this, "0") + getString(R.string.antispamsafelogdesc2);
        String str = getString(R.string.antispamsafelogdesc1) + CheckCenter.getHarassCount(this, DatabaseTables.SYSTEM_MARK) + getString(R.string.antispamsafelogdesc2);
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            smsstr = getString(R.string.antispamsafelogdesc) + "0" + getString(R.string.antispamsafelogdesc2);
            str = getString(R.string.antispamsafelogdesc1) + "0" + getString(R.string.antispamsafelogdesc2);
        }
        Log.i("onResume", "onResume==end" + str);
        if (CheckCenter.getHarassCount(this, "0") > 0 || CheckCenter.getHarassCount(this, DatabaseTables.SYSTEM_MARK) > 0) {
            this.a.b(Color.parseColor("#29b1ef"));
        } else {
            this.a.b(-7829368);
        }
        this.a.b(str + "," + smsstr);
        this.a.notifyChanged();
    }

    private class e extends Preference {
        private Context b;

        public e(Context context) {
            super(context);
            this.b = context;
        }

        /* access modifiers changed from: protected */
        public final View onCreateView(ViewGroup parent) {
            super.onCreateView(parent);
            View view = LayoutInflater.from(this.b).inflate(R.layout.title, (ViewGroup) null);
            ((TextView) view.findViewById(R.id.txt_title)).setText(R.string.antispamapp_name);
            return view;
        }
    }

    /* access modifiers changed from: private */
    public class c extends Preference {
        private Context b;

        static /* synthetic */ void a(c x0) {
            new CustomDialog.Builder(MainActivity.this).setTitle(R.string.info).setMessage(R.string.disable_antispam_tip).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.MainActivity.c.AnonymousClass2 */

                public final void onClick(DialogInterface dialog, int which) {
                    Const.setProtectHarassSwitchState(false);
                    MainActivity.this.g.notifyChanged();
                    LeSafeObservable.get(MainActivity.this).noticeRefreshProtectHarassDetail();
                }
            }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
        }

        public c(Context context) {
            super(context);
            this.b = context;
        }

        /* access modifiers changed from: protected */
        public final void notifyChanged() {
            super.notifyChanged();
        }

        /* access modifiers changed from: protected */
        public final View onCreateView(ViewGroup parent) {
            super.onCreateView(parent);
            View view = LayoutInflater.from(this.b).inflate(R.layout.antispamswitch, (ViewGroup) null);
            ImageView cc = (ImageView) view.findViewById(R.id.antispam_checkbox);
            TextView txt = (TextView) view.findViewById(R.id.antispam_checkboxtxt);
            cc.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.MainActivity.c.AnonymousClass1 */

                public final void onClick(View v) {
                    if (Const.getProtectHarassSwitchState()) {
                        c.a(c.this);
                        return;
                    }
                    Const.setProtectHarassSwitchState(true);
                    MainActivity.this.g.notifyChanged();
                    LeSafeObservable.get(MainActivity.this).noticeRefreshProtectHarassDetail();
                }
            });
            if (Const.getProtectHarassSwitchState()) {
                cc.setImageResource(R.drawable.btn_on);
                txt.setText(R.string.opend);
            } else {
                txt.setTextColor(-65536);
                txt.setText(R.string.closed);
                cc.setImageResource(R.drawable.btn_off);
            }
            return view;
        }
    }

    /* access modifiers changed from: private */
    public class b extends Preference {
        String a;
        String b;
        int c;
        int d;

        public b(Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        public final View onCreateView(ViewGroup parent) {
            super.onCreateView(parent);
            View view = MainActivity.this.getLayoutInflater().inflate(R.layout.main_item, (ViewGroup) null);
            TextView discription = (TextView) view.findViewById(R.id.tt3);
            ((TextView) view.findViewById(R.id.tt1)).setText(this.a);
            discription.setTextColor(this.d);
            discription.setText(this.b);
            ((ImageView) view.findViewById(R.id.icon_before)).setBackgroundResource(this.c);
            return view;
        }

        public final void a(String title) {
            this.a = title;
        }

        public final void b(String message) {
            this.b = message;
        }

        public final void a(int iconId) {
            this.c = iconId;
        }

        /* access modifiers changed from: protected */
        public final void notifyChanged() {
            super.notifyChanged();
        }

        public final void b(int color) {
            this.d = color;
        }
    }
}
