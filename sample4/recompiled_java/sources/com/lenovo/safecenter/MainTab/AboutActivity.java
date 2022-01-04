package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;

public class AboutActivity extends Activity implements View.OnClickListener {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.about_dialog_layout);
        this.b = (TextView) findViewById(R.id.homepageBtn);
        this.c = (TextView) findViewById(R.id.bbsBtn);
        this.d = (TextView) findViewById(R.id.weiboBtn);
        this.e = (TextView) findViewById(R.id.permission_server_tv);
        this.f = (TextView) findViewById(R.id.permission_contract_tv);
        this.e.getPaint().setFlags(8);
        this.e.getPaint().setAntiAlias(true);
        this.f.getPaint().setFlags(8);
        this.f.getPaint().setAntiAlias(true);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.a = (TextView) findViewById(R.id.version);
        try {
            PackageInfo pInfo = getApplicationContext().getPackageManager().getPackageInfo(getApplicationInfo().packageName, 32768);
            if (pInfo.versionName.length() > 6) {
                this.a.setText(pInfo.versionName.substring(0, 6));
            } else {
                this.a.setText(pInfo.versionName);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            this.a.setText("");
            e2.printStackTrace();
        }
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.about);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.AboutActivity.AnonymousClass1 */

            public final void onClick(View v) {
                AboutActivity.this.finish();
            }
        });
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.homepageBtn /*{ENCODED_INT: 2131296272}*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://safe.lenovo.com")));
                    return;
                } catch (Exception e2) {
                    Toast.makeText(this, (int) R.string.no_browser, 1).show();
                    return;
                }
            case R.id.bbsBtn /*{ENCODED_INT: 2131296273}*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://lefen.lenovo.com/forum-335-1.html")));
                    return;
                } catch (Exception e3) {
                    Toast.makeText(this, (int) R.string.no_browser, 1).show();
                    return;
                }
            case R.id.weiboBtn /*{ENCODED_INT: 2131296274}*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://weibo.com/leanquan")));
                    return;
                } catch (Exception e4) {
                    Toast.makeText(this, (int) R.string.no_browser, 1).show();
                    return;
                }
            case R.id.textView1 /*{ENCODED_INT: 2131296275}*/:
            default:
                return;
            case R.id.permission_contract_tv /*{ENCODED_INT: 2131296276}*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://safe.lenovo.com/new/safeMobile/contract.html")));
                    return;
                } catch (Exception e5) {
                    Toast.makeText(this, (int) R.string.no_browser, 1).show();
                    return;
                }
            case R.id.permission_server_tv /*{ENCODED_INT: 2131296277}*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://safe.lenovo.com/new/safeMobile/permission.html")));
                    return;
                } catch (Exception e6) {
                    Toast.makeText(this, (int) R.string.no_browser, 1).show();
                    return;
                }
        }
    }
}
