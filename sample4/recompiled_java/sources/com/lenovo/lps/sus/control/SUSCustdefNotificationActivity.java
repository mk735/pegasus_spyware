package com.lenovo.lps.sus.control;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import com.lenovo.providers.querypermissions.QueryPermissions;

public class SUSCustdefNotificationActivity extends Activity {
    private static String a = "sus_customdef_notification_dialog";
    private static String b = QueryPermissions.ID;
    private static Context c = null;
    private static Integer e = 3;
    private boolean d = true;
    private final int f = 1500;
    private Handler g = new Handler();
    private Button h = null;
    private Button i = null;
    private Runnable j = new e(this);

    public static void b() {
        if (c != null) {
            e = 3;
            ((Activity) c).finish();
            c = null;
        }
    }

    public void a() {
        if (this.g != null) {
            this.g.removeCallbacks(this.j);
            this.g = null;
        }
        if (c != null) {
            c = null;
        }
    }

    public void finish() {
        i.a(c.b, "SUSCustdefNotificationActivity finish isAbortUpdateFlag=" + this.d);
        a();
        c.d(false);
        super.finish();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        super.onCreate(bundle);
        i.a(c.b, "SUSCustdefNotificationActivity .onCreate() begin");
        c.d(true);
        setContentView(c.a(this, "layout", a));
        Intent intent = getIntent();
        c = this;
        String b2 = c.b(c, "SUS_NOTIFICATION_TITLE");
        if (b2 != null && b2.length() > 0) {
            setTitle(b2);
        }
        boolean booleanExtra = intent.getBooleanExtra("FailFlag", false);
        this.h = (Button) findViewById(c.a(c, b, "SUS_NOTIFICATION_CONTINUEBUTTON"));
        String b3 = c.b(c, "SUS_NOTIFICATION_HIDE_BUTTONTEXT");
        if (!(this.h == null || b3 == null || b3.length() <= 0)) {
            this.h.setOnClickListener(new ak(this));
            this.h.setText(b3);
        }
        this.i = (Button) findViewById(c.a(c, b, "SUS_NOTIFICATION_ABORTUPDATEBUTTON"));
        String b4 = c.b(c, "SUS_NOTIFICATION_ABORTUPDATE_BUTTONTEXT");
        if (this.i != null) {
            this.i.setOnClickListener(new j(this));
            this.i.setText(b4);
        }
        String b5 = booleanExtra ? c.b(c, "SUS_NOTIFICATION_TIMEOUTPROMPT") : c.b(c, "SUS_NOTIFICATION_UPDATINGPROMPT");
        if (!(b5 == null || b5.length() <= 0 || (textView4 = (TextView) findViewById(c.a(c, b, "SUS_NOTIFICATION_PROMPTINFO"))) == null)) {
            textView4.setText(b5);
        }
        String b6 = c.b(c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_1");
        String b7 = c.b(c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_2");
        String num = e.toString();
        if (!(b6 == null || b6.length() <= 0 || (textView3 = (TextView) findViewById(c.a(c, b, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_1"))) == null)) {
            textView3.setText(b6);
        }
        if (!(b7 == null || b7.length() <= 0 || (textView2 = (TextView) findViewById(c.a(c, b, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_2"))) == null)) {
            textView2.setText(b7);
        }
        if (!(num == null || num.length() <= 0 || (textView = (TextView) findViewById(c.a(c, b, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
            textView.setText(num);
        }
        if (this.g != null && this.j != null) {
            this.g.removeCallbacks(this.j);
            this.g.postDelayed(this.j, 1500);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        i.a(c.b, "SUSCustdefNotificationActivity onDestroy myContext=" + c);
        a();
        c.d(false);
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        super.onRestart();
    }
}
