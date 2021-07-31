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
import com.lenovo.safecenter.antivirus.support.DeleteSDFileBroadcast;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.io.File;

public class VirusDeepInfo extends BaseTitleActivity {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private ImageView g;
    private Button h;
    private String i;
    private boolean j;
    private String k;
    private ApplicationInfo l;
    private PackageManager m;
    private b n;
    private PackageStats o;
    private a p;
    private c q;
    private Handler r = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.VirusDeepInfo.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    VirusDeepInfo.a(VirusDeepInfo.this, msg);
                    return;
                case 2:
                    VirusDeepInfo.b(VirusDeepInfo.this, msg);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(VirusDeepInfo x0, Message x1) {
        PackageStats packageStats = (PackageStats) x1.getData().getParcelable("pStats");
        long j2 = packageStats.cacheSize + packageStats.codeSize + packageStats.dataSize;
        if (x0.o == null) {
            x0.o = packageStats;
            String a2 = x0.a(j2);
            x0.c.setText(String.format(x0.getString(R.string.antivirusvirus_size), a2));
        } else if (j2 != x0.o.cacheSize + x0.o.codeSize + x0.o.dataSize) {
            String a3 = x0.a(j2);
            x0.c.setText(String.format(x0.getString(R.string.antivirusvirus_size), a3));
        }
    }

    static /* synthetic */ void b(VirusDeepInfo x0, Message x1) {
        String a2 = x0.a(new File(x1.obj.toString()).length());
        x0.c.setText(String.format(x0.getString(R.string.antivirusvirus_size), a2));
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusdeepvirusviewer);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.virus_info, (Integer) null);
        this.a = (TextView) findViewById(R.id.antivirusdeeptext_showtitle);
        this.b = (TextView) findViewById(R.id.antivirusdeeptext_version);
        this.c = (TextView) findViewById(R.id.antivirusdeeptext_size);
        this.d = (TextView) findViewById(R.id.antivirusdeeptext_info);
        this.g = (ImageView) findViewById(R.id.antivirusdeepimage_icon);
        this.e = (TextView) findViewById(R.id.antivirusdeeptext_virusstate);
        this.f = (TextView) findViewById(R.id.antivirusdeeptext_virusadvice);
        this.h = (Button) findViewById(R.id.antivirusdeepvirusinfo_uninstall);
        this.i = getIntent().getStringExtra(QueryPermissions.PACKAGENAME);
        this.j = getIntent().getBooleanExtra("isSD", false);
        this.k = getIntent().getStringExtra("filepath");
        this.n = new b();
        this.p = new a(this);
        this.q = new c(this);
        registerAction();
        this.m = getPackageManager();
        a(this.i, this.j, this.k);
        LinearLayout permsView = (LinearLayout) findViewById(R.id.antivirusdeeppermissions_section);
        if (!this.j) {
            AppSecurityPermissions asp = new AppSecurityPermissions(this, this.l.packageName);
            if (asp.getPermissionCount() > 0) {
                permsView.setVisibility(0);
                ((LinearLayout) permsView.findViewById(R.id.antivirusdeepsecurity_settings_list)).addView(asp.getPermissionsView());
            } else {
                permsView.setVisibility(8);
            }
            this.h.setText(R.string.antivirusvirus_uninstall);
        } else {
            permsView.setVisibility(8);
            this.h.setText(R.string.delete);
        }
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.VirusDeepInfo.AnonymousClass2 */

            public final void onClick(View v) {
                if (!VirusDeepInfo.this.j) {
                    VirusDeepInfo.this.removePackageActivity(VirusDeepInfo.this.i);
                } else {
                    VirusDeepInfo.this.deleteApkFromSD(VirusDeepInfo.this.k);
                }
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

    public void deleteApkFromSD(String filePath) {
        Intent intent = new Intent();
        intent.setAction(DeleteSDFileBroadcast.DELETE_SD_FILE);
        intent.putExtra("filePath", filePath);
        sendBroadcast(intent);
    }

    /* access modifiers changed from: package-private */
    public class a extends BroadcastReceiver {
        Context a;

        public a(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED") && intent.getDataString().substring(8).equals(VirusDeepInfo.this.i)) {
                VirusDeepInfo.this.finish();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends BroadcastReceiver {
        Context a;

        public c(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(DeleteSDFileBroadcast.DELETE_SD_FILE_COMPLETE) && intent.getStringExtra("filePath").equals(VirusDeepInfo.this.k) && intent.getBooleanExtra("sucess", false)) {
                VirusDeepInfo.this.finish();
            }
        }
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.p, filter);
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction(DeleteSDFileBroadcast.DELETE_SD_FILE_COMPLETE);
        registerReceiver(this.q, filter2);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.p);
        unregisterReceiver(this.q);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        String advice;
        PackageInfo pkgInfo;
        super.onResume();
        String state = getString(R.string.antivirusvirus_state);
        String advice2 = getString(R.string.antivirusvirus_readvice);
        if (getIntent().getStringExtra("desc") == null || getIntent().getStringExtra("desc").equals("")) {
            this.d.setText(R.string.antivirusvirus_dangerousdesc);
        } else {
            this.d.setText(getIntent().getStringExtra("desc"));
        }
        String state2 = String.format(state, getString(R.string.antivirusvirus_statedescone));
        if (this.j) {
            advice = String.format(advice2, getString(R.string.antivirusvirus_advice_delete));
        } else {
            advice = String.format(advice2, getString(R.string.antivirusvirus_readviceone));
        }
        this.e.setText(state2);
        this.f.setText(advice);
        try {
            if (this.j) {
                pkgInfo = this.m.getPackageArchiveInfo(this.k, 64);
            } else {
                pkgInfo = this.m.getPackageInfo(this.l.packageName, 8192);
            }
            this.g.setImageDrawable(this.l.loadIcon(this.m));
            this.a.setText(this.l.loadLabel(this.m));
            if (pkgInfo == null || pkgInfo.versionName == null) {
                this.b.setVisibility(4);
            } else {
                this.b.setVisibility(0);
                this.b.setText(String.format(getString(R.string.antivirusvirus_version), pkgInfo.versionName));
            }
            if (this.j) {
                Message msg = this.r.obtainMessage(2);
                msg.obj = this.k;
                this.r.sendMessage(msg);
            } else if (!(this.l == null || this.l.packageName == null)) {
                this.m.getPackageSizeInfo(this.l.packageName, this.n);
            }
            TrackEvent.trackResume(this);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    private boolean a(String packageName, boolean isSD, String filePath) {
        if (!isSD) {
            try {
                this.l = getPackageManager().getApplicationInfo(packageName, 8192);
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                return false;
            }
        } else {
            this.l = this.m.getPackageArchiveInfo(filePath, 64).applicationInfo;
        }
        return true;
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
            Message msg = VirusDeepInfo.this.r.obtainMessage(1);
            Bundle data = new Bundle();
            data.putParcelable("pStats", pStats);
            msg.setData(data);
            VirusDeepInfo.this.r.sendMessage(msg);
        }
    }
}
