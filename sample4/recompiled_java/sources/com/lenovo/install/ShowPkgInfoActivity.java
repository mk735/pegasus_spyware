package com.lenovo.install;

import android.app.Activity;
import android.content.pm.PackageParser;
import android.content.pm.PermissionInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.install.PackageUtil;
import com.lenovo.safecenter.R;
import com.tencent.tmsecure.utils.Log;
import java.util.List;

public class ShowPkgInfoActivity extends Activity {
    private LinearLayout a;
    private TextView b;
    private TextView c;
    private ImageView d;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.install_appinfo);
        this.a = (LinearLayout) findViewById(R.id.pression_list);
        this.b = (TextView) findViewById(R.id.error_txt);
        this.c = (TextView) findViewById(R.id.appname);
        this.d = (ImageView) findViewById(R.id.appicon);
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.install.ShowPkgInfoActivity.AnonymousClass1 */

            public final void onClick(View v) {
                ShowPkgInfoActivity.this.finish();
            }
        });
        PackageParser.Package mPkgInfo = PackageUtil.getPackageInfo(Uri.parse(getIntent().getStringExtra("uri")));
        List<PermissionInfo> listpre = PackageUtil.getPerssions(mPkgInfo, this);
        if (listpre.size() > 0) {
            for (PermissionInfo info : listpre) {
                this.a.addView(getView(info.loadLabel(getPackageManager()).toString(), info.loadLogo(getPackageManager())));
            }
            Log.i("ww", "");
        }
        PackageUtil.AppSnippet as = PackageUtil.getAppSnippet(this, mPkgInfo.applicationInfo, Uri.parse(getIntent().getStringExtra("uri")));
        this.c.setText(as.a);
        this.d.setImageDrawable(as.b);
    }

    public View getView(String str, Drawable drawID) {
        View view1 = LayoutInflater.from(this).inflate(R.layout.permission_detail_item, (ViewGroup) null);
        ((TextView) view1.findViewById(R.id.tab_name)).setText(str);
        return view1;
    }
}
