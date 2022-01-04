package com.lenovo.install;

import android.app.Activity;
import android.content.pm.PackageParser;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.install.PackageUtil;
import com.lenovo.safecenter.R;

public class InstallErrorActivity extends Activity {
    private TextView a;
    private TextView b;
    private TextView c;
    private ImageView d;
    private PackageParser.Package e;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.install_main);
        this.a = (TextView) findViewById(R.id.error_txt);
        this.c = (TextView) findViewById(R.id.errorcontent);
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.install.InstallErrorActivity.AnonymousClass1 */

            public final void onClick(View v) {
                InstallErrorActivity.this.finish();
            }
        });
        this.b = (TextView) findViewById(R.id.appname);
        this.d = (ImageView) findViewById(R.id.appicon);
        this.e = PackageUtil.getPackageInfo(Uri.parse(getIntent().getStringExtra("uri")));
        if (this.e == null) {
            this.d.setImageResource(R.drawable.net_traffic_out);
            this.c.setText(R.string.prase_error);
            return;
        }
        PackageUtil.AppSnippet as = PackageUtil.getAppSnippet(this, this.e.applicationInfo, Uri.parse(getIntent().getStringExtra("uri")));
        this.d.setImageDrawable(as.b);
        this.b.setText(as.a);
    }
}
