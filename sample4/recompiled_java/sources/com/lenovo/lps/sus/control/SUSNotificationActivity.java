package com.lenovo.lps.sus.control;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import com.lenovo.providers.querypermissions.QueryPermissions;

public class SUSNotificationActivity extends Activity {
    private static String a = "SUS_NOTIFICATION_TITLE";
    private static String b = "sus_notification_dialog";
    private static String c = QueryPermissions.ID;
    private static AlertDialog d = null;
    private static Integer h = 3;
    private Context e = null;
    private boolean f = true;
    private int g = 0;
    private final int i = 1500;
    private Handler j = new Handler();
    private Runnable k = new ag(this);

    public static void a() {
        if (d != null) {
            h = 3;
            d.dismiss();
            d = null;
        }
    }

    public void finish() {
        i.a(c.b, "SUSNotificationActivity finish isAbortUpdateFlag=" + this.f);
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
        i.a(c.b, "SUSNotificationActivity .onCreate() begin");
        Intent intent = getIntent();
        requestWindowFeature(1);
        this.e = this;
        boolean booleanExtra = intent.getBooleanExtra("FailFlag", false);
        this.g = getResources().getConfiguration().orientation;
        i.a(c.b, "SUSNotificationActivity onCreate() orientation=" + this.g);
        c.d(true);
        Context context = this.e;
        View inflate = LayoutInflater.from(context).inflate(c.a(context, "layout", b), (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(c.b(context, a));
        builder.setView(inflate);
        if (h.intValue() == 0) {
            h = 3;
        }
        i.a(c.b, "SUSNotificationActivity popupPromptionDialog create");
        builder.setPositiveButton(c.b(context, "SUS_NOTIFICATION_HIDE_BUTTONTEXT"), new aj(this));
        builder.setNegativeButton(c.b(context, "SUS_NOTIFICATION_ABORTUPDATE_BUTTONTEXT"), new ac(this));
        builder.setOnKeyListener(new af(this));
        d = builder.create();
        d.setCancelable(false);
        d.setOnCancelListener(new y(this));
        d.setOnDismissListener(new ab(this));
        if (d == null) {
            i.a(c.b, "null == myCustomDialog!!!");
            ae.b();
        } else {
            d.show();
            String b2 = booleanExtra ? c.b(this.e, "SUS_NOTIFICATION_TIMEOUTPROMPT") : c.b(this.e, "SUS_NOTIFICATION_UPDATINGPROMPT");
            if (!(b2 == null || b2.length() <= 0 || (textView4 = (TextView) d.findViewById(c.a(context, c, "SUS_NOTIFICATION_PROMPTINFO"))) == null)) {
                textView4.setText(b2);
            }
            String b3 = c.b(this.e, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_1");
            String b4 = c.b(this.e, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_2");
            String num = h.toString();
            if (!(b3 == null || b3.length() <= 0 || (textView3 = (TextView) d.findViewById(c.a(context, c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_1"))) == null)) {
                textView3.setText(b3);
            }
            if (!(b4 == null || b4.length() <= 0 || (textView2 = (TextView) d.findViewById(c.a(context, c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_2"))) == null)) {
                textView2.setText(b4);
            }
            if (!(num == null || num.length() <= 0 || (textView = (TextView) d.findViewById(c.a(context, c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
                textView.setText(num);
            }
        }
        if (this.j != null && this.k != null) {
            this.j.removeCallbacks(this.k);
            this.j.postDelayed(this.k, 1500);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        i.a(c.b, "SUSNotificationActivity onDestroy myContext=" + this.e);
        if (this.e != null) {
            this.e = null;
        }
        i.a(c.b, "SUSNotificationActivity onDestroy myCustomDialog=" + d);
        if (d != null) {
            d.dismiss();
            d = null;
        }
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        i.a(c.b, "SUSNotificationActivity onPause");
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        i.a(c.b, "SUSNotificationActivity onRestart");
        super.onRestart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        i.a(c.b, "SUSNotificationActivity onResume");
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        i.a(c.b, "SUSNotificationActivity onStart");
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        i.a(c.b, "SUSNotificationActivity onStop");
        super.onStop();
    }
}
