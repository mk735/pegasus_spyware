package com.lenovo.lps.sus.control;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.b.d;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.net.URLDecoder;

public class SUSPromptActivity extends Activity {
    private static String a = "SUS_VERSIONUPDATE";
    private static String b = "layout";
    private static String c = "sus_updateinfo_dialog";
    private static String d = QueryPermissions.ID;
    private static String e = "SUS_newversioninfo";
    private static String f = "SUS_versiondescribe";
    private static String g = "versioninfo";
    private static String h = "newversioncode";
    private static Handler i = null;
    private static AlertDialog j = null;
    private Context k = null;
    private boolean l = true;
    private boolean m = false;
    private int n = 0;

    public static void a() {
        if (j != null) {
            j.dismiss();
        }
    }

    public static void a(Handler handler) {
        i = handler;
    }

    static /* synthetic */ void a(SUSPromptActivity sUSPromptActivity) {
        sUSPromptActivity.m = true;
    }

    static /* synthetic */ void a(SUSPromptActivity sUSPromptActivity, boolean z) {
        sUSPromptActivity.l = z;
    }

    public void finish() {
        i.a(c.b, "SUSPromptActivity finish isAbortUpdateFlag=" + this.l);
        if (this.m && !this.l) {
            ae.a(EventType.SUS_UPDATEPROMPT_USER_CONFIRM);
        } else if (this.l) {
            this.l = false;
            ae.a(EventType.SUS_UPDATEPROMPT_USER_CANCEL);
        }
        super.finish();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        new Settings.System();
        int i2 = configuration.orientation;
    }

    public void onCreate(Bundle bundle) {
        CheckBox checkBox;
        TextView textView;
        TextView textView2;
        super.onCreate(bundle);
        i.a(c.b, "SUSPromptActivity .onCreate() begin");
        Intent intent = getIntent();
        requestWindowFeature(1);
        String stringExtra = intent.getStringExtra(g);
        String stringExtra2 = intent.getStringExtra("UPDATE_DESC");
        int intExtra = intent.getIntExtra(h, 0);
        String decode = (stringExtra2 == null || stringExtra2.length() <= 0) ? stringExtra2 : URLDecoder.decode(stringExtra2);
        boolean booleanExtra = intent.getBooleanExtra("showUserSettingsEnable", false);
        this.k = this;
        this.n = getResources().getConfiguration().orientation;
        i.a(c.b, "SUSPromptActivity onCreate() orientation=" + this.n);
        this.m = false;
        d c2 = com.lenovo.lps.sus.b.c.c(intent.getIntExtra("usersettings", 0));
        View inflate = LayoutInflater.from(this).inflate(c.a(this, b, c), (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(c.b(this, a));
        builder.setView(inflate);
        i.a(c.b, "SUSPromptActivity popupPromptionDialog create");
        builder.setPositiveButton(c.b(this, "SUS_UPDATE"), new a(this));
        builder.setNegativeButton(c.b(this, "SUS_CANCEL"), new u(this));
        builder.setOnKeyListener(new s(this));
        j = builder.create();
        j.setCancelable(false);
        j.setOnCancelListener(new q(this));
        j.setOnDismissListener(new o(this));
        if (j == null) {
            i.a(c.b, "null == myCustomDialog!!!");
            ae.b();
            return;
        }
        j.show();
        if (!(stringExtra == null || stringExtra.length() <= 0 || (textView2 = (TextView) j.findViewById(c.a(this, d, e))) == null)) {
            textView2.setText(stringExtra);
        }
        if (!ae.h() && decode != null && decode.length() > 0 && (textView = (TextView) j.findViewById(c.a(this, d, f))) != null) {
            textView.setText(decode);
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        }
        if (!booleanExtra) {
            CheckBox checkBox2 = (CheckBox) j.findViewById(c.a(this, QueryPermissions.ID, "usersettings_newverprompt_checkbox"));
            if (checkBox2 != null) {
                checkBox2.setVisibility(8);
            }
        } else if (c.d() && (checkBox = (CheckBox) j.findViewById(c.a(this, QueryPermissions.ID, "usersettings_newverprompt_checkbox"))) != null) {
            checkBox.setText("  " + c.b(this, "SUS_SETTINGS_NEWVERPROMPT"));
            if (d.UPDATEACTION_NEWVERPROMPT == c2) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
            }
            checkBox.setOnCheckedChangeListener(new ad(this, intExtra));
        }
    }

    public void onDestroy() {
        i.a(c.b, "SUSPromptActivity onDestroy myContext=" + this.k);
        Integer valueOf = Integer.valueOf(getResources().getConfiguration().orientation);
        i.a(c.b, "SUSPromptActivity onDestroy() orientation=" + this.n + "; currentOrientation=" + valueOf);
        if (valueOf.equals(Integer.valueOf(this.n)) && this.l) {
            this.l = false;
            ae.b();
        }
        if (this.k != null) {
            this.k = null;
        }
        i.a(c.b, "SUSPromptActivity onDestroy myCustomDialog=" + j);
        if (j != null) {
            j.dismiss();
            j = null;
        }
        super.onDestroy();
    }

    public void onPause() {
        i.a(c.b, "SUSPromptActivity onPause");
        super.onPause();
    }

    public void onRestart() {
        i.a(c.b, "SUSPromptActivity onRestart");
        super.onRestart();
    }

    public void onResume() {
        i.a(c.b, "SUSPromptActivity onResume");
        super.onResume();
    }

    public void onStart() {
        i.a(c.b, "SUSPromptActivity onStart");
        super.onStart();
    }

    public void onStop() {
        i.a(c.b, "SUSPromptActivity onStop");
        super.onStop();
    }
}
