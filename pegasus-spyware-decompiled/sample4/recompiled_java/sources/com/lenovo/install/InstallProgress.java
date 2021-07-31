package com.lenovo.install;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.install.PackageUtil;
import com.lenovo.performancecenter.performance.DataLayerManagerAccelerate;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.support.CMDHelper;
import com.tencent.tmsecure.utils.Log;
import java.util.List;

public class InstallProgress extends Activity implements View.OnClickListener {
    private int a = 0;
    private a b = new a();
    private PackageParser.Package c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private RelativeLayout o;
    private RelativeLayout p;
    private boolean q;
    private Intent r;
    private boolean s = true;
    private boolean t = true;

    /* access modifiers changed from: package-private */
    public class a extends Handler {
        a() {
        }

        public final void handleMessage(Message msg) {
            List<ResolveInfo> list;
            switch (msg.what) {
                case 1:
                    InstallProgress.this.findViewById(R.id.layout_installt).setVisibility(8);
                    if (InstallProgress.this.q) {
                        if (!InstallProgress.this.getIntent().getBooleanExtra("has_boot", false) || InstallProgress.this.getBootAppInfoFromRealAllCls(InstallProgress.this, InstallProgress.this.c.packageName) == null) {
                            InstallProgress.this.p.setVisibility(8);
                        } else if (DataLayerManagerAccelerate.isManageTheBoot(InstallProgress.this, InstallProgress.this.c.packageName)) {
                            InstallProgress.this.p.setVisibility(0);
                        }
                        InstallProgress.this.l.setText(R.string.install_success);
                        InstallProgress.this.l.setTextColor(InstallProgress.this.getResources().getColor(R.color.green5));
                        InstallProgress.this.j.setEnabled(true);
                        InstallProgress.this.j.setTextColor(InstallProgress.this.getResources().getColor(R.color.white));
                        InstallProgress.this.r = InstallProgress.this.getPackageManager().getLaunchIntentForPackage(InstallProgress.this.c.packageName);
                        boolean enabled = false;
                        if (!(InstallProgress.this.r == null || (list = InstallProgress.this.getPackageManager().queryIntentActivities(InstallProgress.this.r, 0)) == null || list.size() <= 0)) {
                            enabled = true;
                        }
                        if (enabled) {
                            InstallProgress.this.k.setEnabled(true);
                            InstallProgress.this.k.setTextColor(InstallProgress.this.getResources().getColor(R.color.white));
                        }
                        InstallProgress.this.initBoot(InstallProgress.this.c.packageName);
                        if (InterceptUtils.notificationFilter(InstallProgress.this, InstallProgress.this.c.packageName)) {
                            InstallProgress.this.o.setVisibility(8);
                            return;
                        }
                        InstallProgress.this.o.setVisibility(0);
                        InstallProgress.this.initAdv(InstallProgress.this.c.packageName);
                        return;
                    }
                    InstallProgress.this.findViewById(R.id.layout_installt).setVisibility(8);
                    InstallProgress.this.l.setText(R.string.install_fail);
                    InstallProgress.this.l.setTextColor(InstallProgress.this.getResources().getColor(R.color.red1));
                    InstallProgress.this.k.setVisibility(8);
                    InstallProgress.this.j.setEnabled(true);
                    InstallProgress.this.j.setText(R.string.ok);
                    InstallProgress.this.j.setTextColor(InstallProgress.this.getResources().getColor(R.color.white));
                    return;
                case 2:
                    InstallProgress.this.startActivity(InstallProgress.this.r);
                    InstallProgress.this.finish();
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.installprogress);
        findView();
        try {
            this.c = PackageUtil.getPackageInfo(Uri.parse(getIntent().getStringExtra("uri")));
            PackageUtil.AppSnippet as = PackageUtil.getAppSnippet(this, this.c.applicationInfo, Uri.parse(getIntent().getStringExtra("uri")));
            this.d.setImageDrawable(as.b);
            this.i.setText(as.a);
            new Thread() {
                /* class com.lenovo.install.InstallProgress.AnonymousClass1 */

                public final void run() {
                    HttpUtils.isInstall = true;
                    InstallProgress.this.q = CMDHelper.installAPK(InstallProgress.this, Uri.parse(InstallProgress.this.getIntent().getStringExtra("uri")).getPath(), InstallProgress.this.c.packageName);
                    InstallProgress.this.b.sendEmptyMessage(1);
                }
            }.start();
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    public void translate(ImageView view) {
        Animation animation = AnimationUtils.loadAnimation(this, R.anim.scanvirus_in_install);
        animation.setDuration(1000);
        animation.setRepeatCount(-1);
        view.startAnimation(animation);
    }

    public void findView() {
        this.d = (ImageView) findViewById(R.id.appicon);
        this.i = (TextView) findViewById(R.id.appname);
        this.o = (RelativeLayout) findViewById(R.id.adver_lin);
        this.p = (RelativeLayout) findViewById(R.id.boot_lin);
        this.j = (TextView) findViewById(R.id.btn_cancel);
        this.k = (TextView) findViewById(R.id.btn_install);
        this.l = (TextView) findViewById(R.id.txt_install);
        this.l.setText(R.string.installing);
        this.e = (ImageView) findViewById(R.id.noti_icon);
        this.f = (ImageView) findViewById(R.id.boot_icon);
        this.g = (ImageView) findViewById(R.id.imageview03);
        this.h = (ImageView) findViewById(R.id.imageview04);
        this.j.setEnabled(false);
        this.k.setEnabled(false);
        this.f.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.m = (TextView) findViewById(R.id.boot);
        this.n = (TextView) findViewById(R.id.adv);
        findViewById(R.id.virus_warning).setVisibility(getIntent().getBooleanExtra("has_virus", false) ? 0 : 8);
        translate(this.h);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_cancel /*{ENCODED_INT: 2131296947}*/:
                updateData(this.c.packageName);
                finish();
                return;
            case R.id.btn_install /*{ENCODED_INT: 2131297135}*/:
                updateData(this.c.packageName);
                Log.i("www", this.r.getComponent().getPackageName() + "===" + this.r.getComponent().getClassName());
                startActivity(this.r);
                finish();
                return;
            case R.id.boot_icon /*{ENCODED_INT: 2131297163}*/:
                if (this.s) {
                    this.s = false;
                    this.f.setImageResource(R.drawable.dark_off);
                    this.m.setText(R.string.install_boot_stitle_off);
                    DataLayerManagerAccelerate.setAppBoot(this, getBootAppInfoFromRealAllCls(this, this.c.packageName), false);
                    return;
                }
                this.s = true;
                this.f.setImageResource(R.drawable.dark_on);
                this.m.setText(R.string.install_boot_stitle_on);
                DataLayerManagerAccelerate.setAppBoot(this, getBootAppInfoFromRealAllCls(this, this.c.packageName), true);
                return;
            case R.id.noti_icon /*{ENCODED_INT: 2131297167}*/:
                if (this.t) {
                    this.t = false;
                    this.e.setImageResource(R.drawable.dark_off);
                    this.n.setText(R.string.install_adv_stitle_off);
                    return;
                }
                this.t = true;
                this.e.setImageResource(R.drawable.dark_on);
                this.n.setText(R.string.install_adv_stitle_on);
                return;
            default:
                return;
        }
    }

    public void updateData(String pkgName) {
        if (this.o.getVisibility() != 0) {
            return;
        }
        if (this.t) {
            InterceptUtils.notificationAllow(this, pkgName);
        } else {
            InterceptUtils.notificationForbid(this, pkgName);
        }
    }

    public void initBoot(String pkgName) {
        if (!getIntent().getBooleanExtra("has_boot", false)) {
            return;
        }
        if (DataLayerManagerAccelerate.isAppCanBoot(this, pkgName)) {
            this.s = true;
            this.f.setImageResource(R.drawable.dark_on);
            this.m.setText(R.string.install_boot_stitle_on);
            return;
        }
        this.s = false;
        this.f.setImageResource(R.drawable.dark_off);
        this.m.setText(R.string.install_boot_stitle_off);
    }

    public void initAdv(String pkgName) {
        if (InterceptUtils.getNotificationAllow(this, pkgName)) {
            this.t = true;
            this.e.setImageResource(R.drawable.dark_on);
            this.n.setText(R.string.install_adv_stitle_on);
            return;
        }
        this.t = false;
        this.e.setImageResource(R.drawable.dark_off);
        this.n.setText(R.string.install_adv_stitle_off);
    }

    public String[] getBootAppInfoFromRealAllCls(Context context, String pkgname) {
        String[] strs = new String[2];
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo resolve : packageManager.queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600)) {
            ApplicationInfo app = resolve.activityInfo.applicationInfo;
            if ((app.flags & 1) == 0 && app.packageName.equals(pkgname)) {
                packageManager.getComponentEnabledSetting(new ComponentName(app.packageName, resolve.activityInfo.name));
                strs[0] = app.packageName;
                strs[1] = resolve.activityInfo.name;
                return strs;
            }
        }
        return null;
    }
}
