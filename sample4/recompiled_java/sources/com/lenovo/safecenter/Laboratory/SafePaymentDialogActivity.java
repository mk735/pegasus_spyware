package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;

public class SafePaymentDialogActivity extends Activity {
    ActivityManager a;
    String b;
    String c;
    PackageManager d;
    boolean e = false;

    static /* synthetic */ void a(SafePaymentDialogActivity x0, String x1) {
        x0.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + x1)));
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        this.d = getPackageManager();
        this.a = (ActivityManager) getSystemService("activity");
        this.c = getIntent().getStringExtra("pkgName");
        this.b = getIntent().getStringExtra("safeAppName");
        setContentView(R.layout.dialog);
        ((TextView) findViewById(R.id.title)).setText(R.string.safepayment_dialog_title);
        ((TextView) findViewById(R.id.message)).setText(Html.fromHtml(getString(R.string.dialog_msg1) + this.b + getString(R.string.dialog_msg1_)));
        TextView textView = (TextView) findViewById(R.id.positiveButton);
        textView.setText(R.string.uninstall);
        textView.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentDialogActivity.AnonymousClass1 */

            public final void onClick(View v) {
                SafePaymentDialogActivity.a(SafePaymentDialogActivity.this, SafePaymentDialogActivity.this.c);
                SafePaymentDialogActivity.this.e = true;
                SafePaymentDialogActivity.this.finish();
            }
        });
        findViewById(R.id.neutralButton).setVisibility(8);
        TextView textView2 = (TextView) findViewById(R.id.negativeButton);
        textView2.setText(R.string.cancel);
        textView2.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentDialogActivity.AnonymousClass2 */

            public final void onClick(View v) {
                SafePaymentDialogActivity.this.e = true;
                SafePaymentDialogActivity.this.finish();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        Log.e("ydp", "dialog activity onPause()");
        TrackEvent.trackPause(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        Log.e("ydp", "dialog activity onStop()");
        if (!this.e) {
            finish();
        }
    }
}
