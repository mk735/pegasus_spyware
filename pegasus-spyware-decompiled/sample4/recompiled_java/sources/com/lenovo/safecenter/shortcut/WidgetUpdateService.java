package com.lenovo.safecenter.shortcut;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.widget.RemoteViews;
import com.lenovo.safecenter.R;

public class WidgetUpdateService extends Service {
    public static final int DATA_STATE_CHANGE = 2;
    public static final int REMAINTIME_CHANGE = 0;
    public static final int SHOW_BATTERY_CHANGE = 4;
    public static final int SHOW_MODE_CHANGE = 5;
    public static final int SIM_STATE_CHANGE = 3;
    public static final String TAG = "WidgetUpdateService";
    public static final int WIFI_STATE_CHANGE = 1;
    private a a;
    private RemoteViews b;
    private int c;

    public void refresh(int flag) {
        if (this.b == null) {
            this.b = a();
        }
        b(this.b);
        a(this.b);
    }

    public void onCreate() {
        super.onCreate();
        startForeground(0, new Notification());
        this.a = new a();
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.lenovo.safecenter.ONEKEY_WIDGET_REFRESH");
        registerReceiver(this.a, filter);
    }

    public void onDestroy() {
        if (this.a != null) {
            unregisterReceiver(this.a);
            this.a = null;
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        showRemoteView();
        return super.onStartCommand(intent, 1, startId);
    }

    public void showRemoteView() {
        if (this.b == null) {
            this.b = a();
        }
        b(this.b);
        a(this.b);
    }

    private void a(RemoteViews remoteViews) {
        AppWidgetManager.getInstance(getApplicationContext()).updateAppWidget(new ComponentName(getApplicationContext(), WidgetProvider.class), remoteViews);
    }

    private void b(RemoteViews remoteViews) {
        this.c = R.drawable.onkey_shutcut_green;
        remoteViews.setImageViewResource(R.id.bkg_image, this.c);
    }

    private RemoteViews a() {
        RemoteViews remoteViews = new RemoteViews(getPackageName(), (int) R.layout.widget_onekey);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.putExtra(ClearnView.ONEKEY_LAUNCHER, ClearnView.ONEKEY_WIDGET);
        intent.setComponent(new ComponentName(getApplicationContext(), CleanViewService.class));
        remoteViews.setOnClickPendingIntent(R.id.widget_onekey, PendingIntent.getService(this, 0, intent, 0));
        return remoteViews;
    }

    class a extends BroadcastReceiver {
        a() {
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.lenovo.safecenter.ONEKEY_WIDGET_REFRESH")) {
                WidgetUpdateService.this.refresh(0);
            }
        }
    }
}
