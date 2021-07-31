package com.lenovo.lps.sus.control;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.lenovo.lps.sus.b.a;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.b.d;
import com.lenovo.lps.sus.c.i;
import com.lenovo.lps.sus.d.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class am implements CompoundButton.OnCheckedChangeListener {
    private static c C = null;
    private static Runnable D = new l();
    private static String a = "SUS_VERSIONUPDATE";
    private static String b = "layout";
    private static String c = "sus_updateinfo_dialog";
    private static String d = QueryPermissions.ID;
    private static String e = "SUS_newversioninfo";
    private static String f = "SUS_versiondescribe";
    private static String g = "versioninfo";
    private static String h = "newversioncode";
    private static String i = "SUS_NOTIFICATION_TITLE";
    private static String j = "layout";
    private static String k = "sus_notification_dialog";
    private static String l = QueryPermissions.ID;
    private static AlertDialog m = null;
    private static AlertDialog n = null;
    private static boolean o = true;
    private static boolean p = false;
    private static Integer q = 3;
    private static Handler r = new Handler();
    private static boolean s = false;
    private static int t = 0;
    private static String u = null;
    private static String v = null;
    private static String w = null;
    private static boolean x = false;
    private static Context y = null;
    private static Handler z = null;
    private Notification A = null;
    private NotificationManager B = null;

    public am(Context context, Handler handler) {
        y = context;
        z = handler;
        i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler create!");
        SUSReceiver.a(z);
    }

    public static void a(int i2, String str, String str2, String str3, boolean z2) {
        TextView textView;
        TextView textView2;
        if (str3 != null && str3.length() > 0) {
            str3 = URLDecoder.decode(str3);
        }
        t = i2;
        u = str;
        v = str2;
        w = str3;
        x = z2;
        int intValue = Integer.valueOf(str2).intValue();
        d c2 = com.lenovo.lps.sus.b.c.c(i2);
        View inflate = LayoutInflater.from(y).inflate(com.lenovo.lps.sus.c.c.a(y, b, c), (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(y);
        builder.setTitle(com.lenovo.lps.sus.c.c.b(y, a));
        builder.setView(inflate);
        i.a(com.lenovo.lps.sus.c.c.b, "SUSPromptActivity popupPromptionDialog create");
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug1");
        builder.setPositiveButton(com.lenovo.lps.sus.c.c.b(y, "SUS_UPDATE"), new k());
        builder.setNegativeButton(com.lenovo.lps.sus.c.c.b(y, "SUS_CANCEL"), new n());
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug2");
        builder.setOnKeyListener(new m());
        m = builder.create();
        m.setCancelable(false);
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug3");
        m.setOnCancelListener(new r());
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug4");
        m.setOnDismissListener(new p());
        if (m == null) {
            i.a(com.lenovo.lps.sus.c.c.b, "null == myUpdateInfoAlertDialog!!!");
            ae.b();
            return;
        }
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug5");
        m.show();
        if (!(str == null || str.length() <= 0 || (textView2 = (TextView) m.findViewById(com.lenovo.lps.sus.c.c.a(y, d, e))) == null)) {
            textView2.setText(str);
        }
        if (!ae.h() && str3 != null && str3.length() > 0 && (textView = (TextView) m.findViewById(com.lenovo.lps.sus.c.c.a(y, d, f))) != null) {
            textView.setText(str3);
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        }
        i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug6");
        if (!z2) {
            CheckBox checkBox = (CheckBox) m.findViewById(com.lenovo.lps.sus.c.c.a(y, QueryPermissions.ID, "usersettings_newverprompt_checkbox"));
            i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug8");
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
        } else if (com.lenovo.lps.sus.c.c.d()) {
            CheckBox checkBox2 = (CheckBox) m.findViewById(com.lenovo.lps.sus.c.c.a(y, QueryPermissions.ID, "usersettings_newverprompt_checkbox"));
            i.a(com.lenovo.lps.sus.c.c.b, "popupPromptionDialog, Stoneage1 debug7");
            if (checkBox2 != null) {
                checkBox2.setText("  " + com.lenovo.lps.sus.c.c.b(y, "SUS_SETTINGS_NEWVERPROMPT"));
                if (d.UPDATEACTION_NEWVERPROMPT == c2) {
                    checkBox2.setChecked(true);
                } else {
                    checkBox2.setChecked(false);
                }
                checkBox2.setOnCheckedChangeListener(new w(intValue));
            }
        }
    }

    public static void a(Context context, boolean z2) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        View inflate = LayoutInflater.from(context).inflate(com.lenovo.lps.sus.c.c.a(context, "layout", k), (ViewGroup) null);
        s = z2;
        if (n != null) {
            n.dismiss();
            n = null;
        }
        com.lenovo.lps.sus.c.c.d(true);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(com.lenovo.lps.sus.c.c.b(context, i));
        builder.setView(inflate);
        if (q.intValue() == 0) {
            q = 3;
        }
        i.a(com.lenovo.lps.sus.c.c.b, "SUSNotificationActivity popupPromptionDialog create");
        builder.setPositiveButton(com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_HIDE_BUTTONTEXT"), new t());
        builder.setNegativeButton(com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_ABORTUPDATE_BUTTONTEXT"), new aa());
        builder.setOnKeyListener(new c());
        n = builder.create();
        n.setCancelable(false);
        n.setOnCancelListener(new b());
        n.setOnDismissListener(new d(context));
        if (n == null) {
            i.a(com.lenovo.lps.sus.c.c.b, "null == myPromptionInfoAlertDialog!!!");
            ae.b();
            return;
        }
        n.show();
        String b2 = z2 ? com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_TIMEOUTPROMPT") : com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_UPDATINGPROMPT");
        if (!(b2 == null || b2.length() <= 0 || (textView4 = (TextView) n.findViewById(com.lenovo.lps.sus.c.c.a(context, l, "SUS_NOTIFICATION_PROMPTINFO"))) == null)) {
            textView4.setText(b2);
        }
        String b3 = com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_1");
        String b4 = com.lenovo.lps.sus.c.c.b(context, "SUS_NOTIFICATION_AUTOHIDPROMPTINFO_2");
        String num = q.toString();
        if (!(b3 == null || b3.length() <= 0 || (textView3 = (TextView) n.findViewById(com.lenovo.lps.sus.c.c.a(context, l, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_1"))) == null)) {
            textView3.setText(b3);
        }
        if (!(b4 == null || b4.length() <= 0 || (textView2 = (TextView) n.findViewById(com.lenovo.lps.sus.c.c.a(context, l, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_2"))) == null)) {
            textView2.setText(b4);
        }
        if (!(num == null || num.length() <= 0 || (textView = (TextView) n.findViewById(com.lenovo.lps.sus.c.c.a(context, l, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
            textView.setText(num);
        }
        if (r != null && D != null) {
            r.removeCallbacks(D);
            r.postDelayed(D, 1500);
        }
    }

    public static void a(c cVar) {
        C = cVar;
    }

    public static void c() {
        if (n != null) {
            q = 3;
            n.dismiss();
            n = null;
        }
    }

    public void a() {
        i.a(com.lenovo.lps.sus.c.c.b, "susuihandler finish entry");
        if (this.B != null) {
            i.a(com.lenovo.lps.sus.c.c.b, "susuihandler call clearNotification");
            if (!com.lenovo.lps.sus.c.c.x() && !ae.g()) {
                i.a(com.lenovo.lps.sus.c.c.b, "clearNotification");
                b();
            }
            this.B = null;
        }
        if (C != null) {
            C.a();
            C = null;
        }
        y = null;
        z = null;
        i.a(com.lenovo.lps.sus.c.c.b, "susuihandler finish end");
    }

    public void a(int i2) {
        if (this.A != null && this.A.contentView != null && this.B != null) {
            this.A.contentView.setProgressBar(com.lenovo.lps.sus.c.c.c(y, "SUS_progress_bar"), 100, i2, false);
            this.A.contentView.setTextViewText(com.lenovo.lps.sus.c.c.c(y, "SUS_progress_text"), String.valueOf(String.valueOf(i2)) + "%");
            this.B.notify(93, this.A);
        }
    }

    public void a(int i2, String str, String str2, String str3, long j2, ai aiVar) {
        if (str != null && str2 != null) {
            try {
                i.a(com.lenovo.lps.sus.c.c.b, "downloadMode=" + aiVar);
                String b2 = com.lenovo.lps.sus.c.c.b(y, "SUS_DOWNLOAD_TITLE");
                if (!com.lenovo.lps.sus.c.c.x() && !ae.g()) {
                    i.a(com.lenovo.lps.sus.c.c.b, "addDownLoadProgressAtNotification");
                    Context context = y;
                    int a2 = com.lenovo.lps.sus.c.c.a(y, "drawable", "sus_downloadicon");
                    if (a2 == 0) {
                        a2 = 17301633;
                    }
                    this.A = new Notification(a2, "", System.currentTimeMillis());
                    this.A.flags = 10;
                    RemoteViews remoteViews = new RemoteViews(y.getPackageName(), com.lenovo.lps.sus.c.c.a(y, "layout", "sus_download_notification"));
                    remoteViews.setProgressBar(com.lenovo.lps.sus.c.c.c(y, "SUS_progress_bar"), 100, 0, false);
                    remoteViews.setTextViewText(com.lenovo.lps.sus.c.c.c(y, "SUS_progress_text"), "0%");
                    if (str3 == null || str3.length() <= 0) {
                        remoteViews.setTextViewText(com.lenovo.lps.sus.c.c.c(y, "SUS_title"), b2);
                    } else {
                        remoteViews.setTextViewText(com.lenovo.lps.sus.c.c.c(y, "SUS_title"), str3);
                    }
                    this.A.contentView = remoteViews;
                    Intent intent = new Intent();
                    this.A.contentIntent = PendingIntent.getActivity(y, 0, intent, 134217728);
                    this.B = (NotificationManager) y.getSystemService(DatabaseTables.LOG_NOTIFICATION);
                }
                String a3 = com.lenovo.lps.sus.a.a.a.c.a(str);
                C = new c();
                if (C != null && !C.a(i2, 1, y, this, str2, str3, a3, j2)) {
                    ae.b();
                }
            } catch (Exception e2) {
                i.b(com.lenovo.lps.sus.c.c.b, e2.getMessage());
                ae.b();
            }
        }
    }

    public void a(a aVar, d dVar, boolean z2) {
        String b2;
        if (y == null || aVar == null) {
            i.b(com.lenovo.lps.sus.c.c.b, "null == myApplicationContext || null == susVerInfo!!!");
            return;
        }
        i.a(com.lenovo.lps.sus.c.c.b, "showUpdatePromptActivity entry");
        String g2 = aVar.g();
        String d2 = aVar.d();
        String b3 = aVar.b();
        if (b3 == null || b3.length() <= 0) {
            b3 = d2;
        }
        String str = String.valueOf(com.lenovo.lps.sus.c.c.b(y, "SUS_UPDATEVERPROMPT_VERNAME")) + b3 + "\n" + com.lenovo.lps.sus.c.c.b(y, "SUS_UPDATEVERPROMPT_VERSIZE") + com.lenovo.lps.sus.c.c.b(aVar.f().longValue()) + "\n" + com.lenovo.lps.sus.c.c.b(y, "SUS_UPDATESIZEPROMPT_WLAN");
        i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), start UpdateActivity");
        if (g2 != null && com.lenovo.lps.sus.c.c.aA.equals(g2)) {
            g2 = null;
        }
        if (g2 != null && g2.length() > 0 && (b2 = com.lenovo.lps.sus.c.c.b(y, "SUS_UPDATEDESC")) != null && b2.length() > 0) {
            g2 = URLEncoder.encode(String.valueOf(b2) + "\n" + g2);
            i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), Stoneage1 debug3");
        }
        if (com.lenovo.lps.sus.c.c.w()) {
            a(dVar.ordinal(), str, aVar.d(), g2, z2);
        } else {
            b(dVar.ordinal(), str, aVar.d(), g2, z2);
        }
    }

    public void a(boolean z2) {
        if (z != null) {
            Message message = new Message();
            message.what = b.a(b.SUS_DOWNLOAD_EXCEPTION_EVENT);
            message.obj = Boolean.valueOf(z2);
            z.sendMessage(message);
        }
    }

    public void b() {
        if (this.B != null) {
            this.B.cancel(93);
        }
        this.A = null;
    }

    public void b(int i2, String str, String str2, String str3, boolean z2) {
        Intent intent = new Intent();
        intent.setClass(y, SUSPromptActivity.class);
        intent.putExtra("actiontype", "UPDATEPROMPT");
        intent.putExtra("versioninfo", str);
        i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), Stoneage1 debug0");
        intent.putExtra("showUserSettingsEnable", z2);
        intent.putExtra("usersettings", i2);
        i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), Stoneage1 debug01");
        intent.putExtra("newversioncode", Integer.valueOf(str2));
        i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), Stoneage1 debug1");
        if (str3 != null && str3.length() > 0) {
            intent.putExtra("UPDATE_DESC", str3);
            i.a(com.lenovo.lps.sus.c.c.b, "SUSUIHandler.showUpdatePromptActivity(), Stoneage1 debug2");
        }
        intent.setFlags(268435456);
        SUSPromptActivity.a(z);
        y.startActivity(intent);
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
    }
}
