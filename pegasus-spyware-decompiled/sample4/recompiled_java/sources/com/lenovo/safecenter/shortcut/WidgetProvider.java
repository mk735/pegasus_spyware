package com.lenovo.safecenter.shortcut;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class WidgetProvider extends AppWidgetProvider {
    public void onEnabled(Context context) {
        super.onEnabled(context);
    }

    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Log.i("Widget", "WidgetProvider onUpdate");
        context.startService(new Intent(context, WidgetUpdateService.class));
    }

    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        if (intent.getAction().equals("com.lenovo.safecenter.ONEKEY_WIDGET_REFRESH")) {
            context.startService(new Intent(context, WidgetUpdateService.class));
        }
    }

    public void onDisabled(Context context) {
        super.onDisabled(context);
        context.stopService(new Intent(context, WidgetUpdateService.class));
    }

    public void onDeleted(Context context, int[] appWidgetIds) {
        super.onDeleted(context, appWidgetIds);
    }
}
