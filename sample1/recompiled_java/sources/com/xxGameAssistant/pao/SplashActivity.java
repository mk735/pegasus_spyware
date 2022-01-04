package com.xxGameAssistant.pao;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.widget.TextView;
import java.util.ArrayList;

public class SplashActivity extends Activity {
    private final int SPLASH_DISPLAY_LENGHT = 3000;
    public boolean go = true;
    public ArrayList<String> mChannelString = new ArrayList<>();
    public ArrayList<String> mPackageString = new ArrayList<>();

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        long start = System.currentTimeMillis();
        new Handler().postDelayed(new Runnable() {
            /* class com.xxGameAssistant.pao.SplashActivity.AnonymousClass1 */

            public void run() {
                SplashActivity.this.go = false;
                MTApplication.mPackageString = SplashActivity.this.mPackageString;
                MTApplication.mChannelString = SplashActivity.this.mChannelString;
                SplashActivity.this.startActivity(new Intent(SplashActivity.this, MainActivity.class));
                SplashActivity.this.finish();
            }
        }, 3000);
        ((MTApplication) getApplication()).getThread().start();
        scanAllApp();
        try {
            PackageManager packageManager = getPackageManager();
            ((TextView) findViewById(R.id.mt_soft_info)).setText("版本：" + packageManager.getPackageInfo(getPackageName(), 0).versionName);
            String lianmeng = packageManager.getPackageInfo("com.tencent.pao", 0).versionName;
            Log.d("版本", lianmeng);
            if (lianmeng.equals("1.0.7.0")) {
                MTApplication.mIsNewestVersion = true;
            } else {
                MTApplication.mIsNewestVersion = false;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        Log.d("time2", new StringBuilder().append(System.currentTimeMillis() - start).toString());
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main_surface, menu);
        return true;
    }

    public void scanAllApp() {
        String[] tChannel = getResources().getStringArray(R.array.channel_name);
        String[] tPackage_key = getResources().getStringArray(R.array.package_key);
        for (PackageInfo tp : getPackageManager().getInstalledPackages(0)) {
            if (tp.packageName.compareTo(tPackage_key[0]) == 0) {
                this.mPackageString.add(tp.packageName);
                this.mChannelString.add(tChannel[0]);
            }
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getRepeatCount() == 0) {
            finish();
            this.go = false;
        }
        return super.onKeyDown(keyCode, event);
    }
}
