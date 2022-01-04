package com.lenovo.safecenter.antivirus.views;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.view.View;
import android.widget.AppSecurityPermissions;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;

public class VirusInfo extends BaseTitleActivity {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private ImageView g;
    private Button h;
    private String i;
    private ApplicationInfo j;
    private PackageManager k;
    private b l;
    private PackageStats m;
    private a n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.VirusInfo.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    VirusInfo.a(VirusInfo.this, msg);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(VirusInfo x0, Message x1) {
        PackageStats packageStats = (PackageStats) x1.getData().getParcelable("pStats");
        long j2 = packageStats.cacheSize + packageStats.codeSize + packageStats.dataSize;
        if (x0.m == null) {
            x0.m = packageStats;
            String a2 = x0.a(j2);
            x0.c.setText(String.format(x0.getString(R.string.antivirusvirus_size), a2));
        } else if (j2 != x0.m.cacheSize + x0.m.codeSize + x0.m.dataSize) {
            String a3 = x0.a(j2);
            x0.c.setText(String.format(x0.getString(R.string.antivirusvirus_size), a3));
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusvirusviewer);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.virus_info, (Integer) null);
        this.a = (TextView) findViewById(R.id.antivirustext_showtitle);
        this.b = (TextView) findViewById(R.id.antivirustext_version);
        this.c = (TextView) findViewById(R.id.antivirustext_size);
        this.d = (TextView) findViewById(R.id.antivirustext_info);
        this.g = (ImageView) findViewById(R.id.antivirusimage_icon);
        this.e = (TextView) findViewById(R.id.antivirustext_virusstate);
        this.f = (TextView) findViewById(R.id.antivirustext_virusadvice);
        this.h = (Button) findViewById(R.id.antivirusvirusinfo_uninstall);
        this.i = getIntent().getStringExtra(QueryPermissions.PACKAGENAME);
        this.l = new b();
        this.n = new a(this);
        registerAction();
        this.k = getPackageManager();
        a(this.i);
        LinearLayout permsView = (LinearLayout) findViewById(R.id.antiviruspermissions_section);
        AppSecurityPermissions asp = new AppSecurityPermissions(this, this.j.packageName);
        if (asp.getPermissionCount() > 0) {
            permsView.setVisibility(0);
            ((LinearLayout) permsView.findViewById(R.id.antivirussecurity_settings_list)).addView(asp.getPermissionsView());
        } else {
            permsView.setVisibility(8);
        }
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.VirusInfo.AnonymousClass2 */

            public final void onClick(View v) {
                VirusInfo.this.removePackageActivity(VirusInfo.this.i);
            }
        });
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void removePackageActivity(String pkgName) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgName)));
    }

    /* access modifiers changed from: package-private */
    public class a extends BroadcastReceiver {
        Context a;

        public a(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                String packageName = intent.getDataString().substring(8);
                if (packageName.equals(VirusInfo.this.i)) {
                    VirusInfo.this.finish();
                }
                HttpUtils.removeConfig(AppUtils.getVirusDescKey(packageName), context);
            }
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.n, filter);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.n);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        String state = getString(R.string.antivirusvirus_state);
        String advice = getString(R.string.antivirusvirus_readvice);
        if (getIntent().getIntExtra("type", 1) == 0) {
            if (getIntent().getStringExtra("desc") == null || getIntent().getStringExtra("desc").equals("")) {
                this.d.setText(R.string.antivirusvirus_dangerousdesc);
            } else {
                this.d.setText(getIntent().getStringExtra("desc"));
            }
            String state2 = String.format(state, getString(R.string.antivirusvirus_statedescone));
            String advice2 = String.format(advice, getString(R.string.antivirusvirus_readviceone));
            this.e.setText(state2);
            this.f.setText(advice2);
        } else {
            if (getIntent().getStringExtra("desc") == null || getIntent().getStringExtra("desc").equals("")) {
                this.d.setText(R.string.antivirusvirusnomatch);
            } else {
                this.d.setText(getIntent().getStringExtra("desc"));
            }
            String state3 = String.format(state, getString(R.string.antivirusvirus_statedesctwo));
            String advice3 = String.format(advice, getString(R.string.antivirusvirus_readvicetwo));
            this.e.setText(state3);
            this.f.setText(advice3);
        }
        try {
            PackageInfo pkgInfo = this.k.getPackageInfo(this.j.packageName, 8192);
            try {
                this.g.setImageDrawable(this.j.loadIcon(this.k));
            } catch (Exception e2) {
                this.g.setImageResource(R.drawable.icon3);
                e2.printStackTrace();
            }
            this.a.setText(this.j.loadLabel(this.k));
            if (pkgInfo == null || pkgInfo.versionName == null) {
                this.b.setVisibility(4);
            } else {
                this.b.setVisibility(0);
                this.b.setText(String.format(getString(R.string.antivirusvirus_version), pkgInfo.versionName));
            }
            if (!(this.j == null || this.j.packageName == null)) {
                this.k.getPackageSizeInfo(this.j.packageName, this.l);
            }
            TrackEvent.trackResume(this);
        } catch (PackageManager.NameNotFoundException e3) {
            e3.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    private boolean a(String packageName) {
        try {
            this.j = getPackageManager().getApplicationInfo(packageName, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private String a(long size) {
        if (size == -1) {
            return null;
        }
        return Formatter.formatFileSize(this, size);
    }

    class b extends IPackageStatsObserver.Stub {
        b() {
        }

        @Override // android.content.pm.IPackageStatsObserver
        public final void onGetStatsCompleted(PackageStats pStats, boolean succeeded) {
            Message msg = VirusInfo.this.o.obtainMessage(1);
            Bundle data = new Bundle();
            data.putParcelable("pStats", pStats);
            msg.setData(data);
            VirusInfo.this.o.sendMessage(msg);
        }
    }
}
