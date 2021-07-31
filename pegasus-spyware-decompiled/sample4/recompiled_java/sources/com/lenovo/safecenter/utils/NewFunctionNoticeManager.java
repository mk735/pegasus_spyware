package com.lenovo.safecenter.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.systeminfo.ui.activity.DailyTools;

public class NewFunctionNoticeManager {
    public static final String ACTION_APP_USENET_CONTROL = "action_app_usenet_contorl";
    public static final String ACTION_GUESTMODE = "action_guestmode";
    public static final String ACTION_KIDMODE = "action_kidmode";
    public static final String TYPE_TOOLS = "type_tools";
    public static final String TYPE_TRAFFIC_MONITOR = "type_traffic_monitor";

    public static void init(Context context) {
        a(context, TYPE_TRAFFIC_MONITOR);
        a(context, TYPE_TOOLS);
        if (DailyTools.isShowKidmode(context)) {
            a(context, TYPE_TOOLS, ACTION_KIDMODE);
        }
        if (TrafficStatsService.nacServerIsExist()) {
            a(context, TYPE_TOOLS, ACTION_GUESTMODE);
        }
    }

    public static boolean hasContentInType(Context context, String type) {
        Log.i("wu0wu", "hasContentInType content=" + getContentForType(context, type) + ",type=" + type);
        return !TextUtils.isEmpty(getContentForType(context, type));
    }

    public static String getContentForType(Context context, String type) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(type, "");
    }

    public static void removeActionToType(Context context, String type, String action) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        String content = sp.getString(type, "");
        Log.i("wu0wu", "start removeActionToType content=" + content);
        if (!TextUtils.isEmpty(content)) {
            String[] items = content.split(c.O);
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < items.length; i++) {
                if (!action.equals(items[i])) {
                    sb.append(items[i]).append(c.O);
                }
            }
            sp.edit().remove(type).putString(type, sb.toString()).commit();
        }
        Log.i("wu0wu", "end removeActionToType content=" + sp.getString(type, ""));
    }

    public static boolean hasActionInType(Context context, String type, String action) {
        String content = PreferenceManager.getDefaultSharedPreferences(context).getString(type, "");
        if (!TextUtils.isEmpty(content)) {
            return content.contains(action);
        }
        return false;
    }

    private static void a(Context context, String type) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove(type).commit();
    }

    private static void a(Context context, String type, String action) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        String content = sp.getString(type, "");
        StringBuffer sb = new StringBuffer();
        sb.append(content).append(action).append(c.O);
        sp.edit().remove(type).putString(type, sb.toString()).commit();
    }
}
