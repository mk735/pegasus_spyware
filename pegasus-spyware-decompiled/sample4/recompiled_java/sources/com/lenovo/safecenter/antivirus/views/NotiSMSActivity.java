package com.lenovo.safecenter.antivirus.views;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.Untils;

public class NotiSMSActivity extends Activity {
    private String a;
    private String b;
    private String c;
    private String d;
    private PackageManager e;
    private ApplicationInfo f;
    private a g;
    private NotificationManager h;
    private boolean i = false;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.e = getPackageManager();
        Intent smsIntent = getIntent();
        this.c = smsIntent.getStringExtra(DatabaseTables.LOG_MESSAGE);
        this.a = smsIntent.getStringExtra("packageName");
        this.h = (NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION);
        this.d = getIntent().getStringExtra("virustype");
        this.g = new a(this);
        registerAction();
        try {
            this.f = this.e.getApplicationInfo(this.a, 8192);
        } catch (PackageManager.NameNotFoundException e2) {
            this.i = true;
            e2.printStackTrace();
            finish();
        }
        setTitle(R.string.antivirusapp_name);
        setContentView(R.layout.antivirusnoti_sms);
        ImageView imageView = (ImageView) findViewById(R.id.antivirusapp_icon_sms);
        TextView textView = (TextView) findViewById(R.id.antivirusapp_name_sms);
        TextView textView2 = (TextView) findViewById(R.id.antivirusvirus_notifyname);
        TextView textView3 = (TextView) findViewById(R.id.antivirusvirus_notifyadvice);
        TextView textView4 = (TextView) findViewById(R.id.antivirusdes);
        final Button button = (Button) findViewById(R.id.antivirussend);
        final Button button2 = (Button) findViewById(R.id.antivirusunsent);
        try {
            imageView.setBackgroundDrawable(this.e.getApplicationIcon(this.a));
            this.b = (String) this.f.loadLabel(this.e);
        } catch (PackageManager.NameNotFoundException e3) {
            e3.printStackTrace();
            imageView.setImageResource(R.drawable.icon3);
        }
        textView.setText(this.b);
        if (this.c == null || this.c.equals("")) {
            if (getIntent().getStringExtra("virustype").equals(DatabaseTables.SYSTEM_MARK)) {
                this.c = getString(R.string.antivirusvirusnomatch);
            } else {
                this.c = getString(R.string.antivirusvirus_dangerousdesc);
            }
        }
        textView4.setText(this.c);
        if (getIntent().getStringExtra("virustype").equals(DatabaseTables.SYSTEM_MARK)) {
            textView2.setVisibility(8);
            textView3.setText(R.string.antivirusvirus_notifyadvicetwo);
        } else {
            textView2.setVisibility(0);
            String format = String.format(getString(R.string.antivirusvirusname), getIntent().getStringExtra("virusname"));
            SpannableString spannableString = new SpannableString(format);
            spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.red)), format.length() - getIntent().getStringExtra("virusname").length(), format.length(), 33);
            textView2.setText(spannableString);
            textView3.setText(R.string.antivirusvirus_notifyadvice);
        }
        AnonymousClass1 r2 = new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.NotiSMSActivity.AnonymousClass1 */

            public final void onClick(View v) {
                if (v.getId() == button.getId()) {
                    NotiSMSActivity.this.removePackageActivity(NotiSMSActivity.this.a);
                } else if (v.getId() == button2.getId()) {
                    NotiSMSActivity.this.finish();
                }
            }
        };
        button.setOnClickListener(r2);
        button2.setOnClickListener(r2);
        initVirus();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    public void initVirus() {
        HttpUtils.hasVirus = true;
        String virus_pkgname = HttpUtils.execService("viruspkgname", this);
        if (!virus_pkgname.equalsIgnoreCase("")) {
            boolean isexist = false;
            String[] arr = virus_pkgname.split(",");
            int len$ = arr.length;
            int i$ = 0;
            while (true) {
                if (i$ >= len$) {
                    break;
                } else if (arr[i$].equals(this.a)) {
                    isexist = true;
                    break;
                } else {
                    i$++;
                }
            }
            if (!isexist) {
                virus_pkgname = virus_pkgname + "," + this.a;
            }
        } else {
            virus_pkgname = this.a;
        }
        HttpUtils.UpdateConfig("viruspkgname", virus_pkgname, this);
        HttpUtils.UpdateConfig(AppUtils.getVirusDescKey(virus_pkgname), this.c, this);
        LeSafeObservable.get(this).noticeHasVirus();
    }

    public void notifyVirus() {
        try {
            String[] virus_pkgname_split = HttpUtils.execService("viruspkgname", this).split(",");
            StringBuilder sb = new StringBuilder();
            for (String str : virus_pkgname_split) {
                sb.append(this.e.getApplicationInfo(str, 8192).loadLabel(this.e)).append(Untils.PAUSE);
            }
            Intent showVirus = new Intent(this, ScanVirusActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("fromnotify", "notify");
            showVirus.putExtras(bundle);
            showVirus.setFlags(536870912);
            PendingIntent intent = PendingIntent.getActivity(this, 0, showVirus, 0);
            Notification mNotification = new Notification(R.drawable.antiviruswarning, getString(R.string.antivirusvirus_notify), System.currentTimeMillis());
            mNotification.flags = 10;
            mNotification.setLatestEventInfo(this, getString(R.string.antivirusvirus_notify), String.format(getString(R.string.antivirusvirus_notifycontent), sb.deleteCharAt(sb.length() - 1).toString()), intent);
            this.h.notify(554, mNotification);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: package-private */
    public class a extends BroadcastReceiver {
        Context a;

        public a(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                String pname = intent.getDataString().substring(8);
                if (pname.equals(NotiSMSActivity.this.a)) {
                    NotiSMSActivity.this.i = true;
                    NotiSMSActivity.this.finish();
                }
                HttpUtils.removeConfig(AppUtils.getVirusDescKey(pname), context);
            }
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.g, filter);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.g);
        if (!this.i && this.d.equals(DatabaseTables.USER_MARK)) {
            notifyVirus();
        }
    }

    public void removePackageActivity(String pkgName) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgName)));
    }
}
