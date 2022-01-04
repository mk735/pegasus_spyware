package com.lenovo.safecenter.floatwindow.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.lenovo.safecenter.floatwindow.util.Tools;

public class SaveData {
    public static final String FLOATVIEW_HEIGHT = "height";
    public static final String FLOATVIEW_OPTIONS_X = "optionsx";
    public static final String FLOATVIEW_OPTIONS_Y = "optionsy";
    public static final String FLOATVIEW_WIDTH = "width";
    public static final String FLOATWINDOW_STATE = "floatwindow_status";
    public static final String FLOATWINDOW__DESKTOP_SHOW = "floatwindow_desktop_show";
    public static final String FLOW_IMMOVE_STATUS = "net_immove_status";
    public static final String FLOW_STATUS = "net_status";
    public static final String FLOW_VIEW_OPTIONS_X = "flowOptionsx";
    public static final String FLOW_VIEW_OPTIONS_Y = "flowOptionsy";
    public static final String IS_HOME_RECEIVER = "is_home_receiver";
    public static final String VIEW_COUNT = "view_count";

    public static void save_FloatView_width(Context paramText, int width) {
        SharedPreferences.Editor localEidtor = PreferenceManager.getDefaultSharedPreferences(paramText).edit();
        localEidtor.putInt(FLOATVIEW_WIDTH, width);
        localEidtor.commit();
    }

    public static void save_FloatView_height(Context paramText, int height) {
        SharedPreferences.Editor localEidtor = PreferenceManager.getDefaultSharedPreferences(paramText).edit();
        localEidtor.putInt(FLOATVIEW_HEIGHT, height);
        localEidtor.commit();
    }

    public static int get_FloatView_width(Context paramText) {
        return PreferenceManager.getDefaultSharedPreferences(paramText).getInt(FLOATVIEW_WIDTH, Tools.getDisplayWidth(paramText));
    }

    public static int get_FloatView_height(Context paramText) {
        return PreferenceManager.getDefaultSharedPreferences(paramText).getInt(FLOATVIEW_HEIGHT, Tools.getDisplayWidth(paramText));
    }

    public static void sava_FloatView_options(Context paramText, int options_x, int options_y) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramText).edit();
        localEditor.putInt(FLOATVIEW_OPTIONS_X, options_x);
        localEditor.putInt(FLOATVIEW_OPTIONS_Y, options_y);
        localEditor.commit();
    }

    public static int[] get_FloatView_options(Context paramContext) {
        SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
        return new int[]{localSharedPreferences.getInt(FLOATVIEW_OPTIONS_X, 0), localSharedPreferences.getInt(FLOATVIEW_OPTIONS_Y, Tools.getDisplayHeight(paramContext) / 2)};
    }

    public static void save_floatwindow_state(Context paramContext, boolean paramboolean) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEditor.putBoolean(FLOATWINDOW_STATE, paramboolean);
        localEditor.commit();
    }

    public static boolean get_floatwindow_state(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(FLOATWINDOW_STATE, false);
    }

    public static void save_floatview_desktop_show(Context paramContext, boolean paramboolean) {
        SharedPreferences.Editor localEidtor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEidtor.putBoolean(FLOATWINDOW__DESKTOP_SHOW, paramboolean);
        localEidtor.commit();
    }

    public static boolean get_floatview_desktop_show(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(FLOATWINDOW__DESKTOP_SHOW, false);
    }

    public static boolean get_flow_status(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(FLOW_STATUS, false);
    }

    public static void save_flow_status(Context paramContext, boolean paramboolean) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEditor.putBoolean(FLOW_STATUS, paramboolean);
        localEditor.commit();
    }

    public static void save_flow_immove_state(Context paramContext, boolean paramboolean) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEditor.putBoolean(FLOW_IMMOVE_STATUS, paramboolean);
        localEditor.commit();
    }

    public static boolean get_flow_immove_state(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(FLOW_IMMOVE_STATUS, false);
    }

    public static boolean get_is_home_receiver(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(IS_HOME_RECEIVER, false);
    }

    public static void save_is_home_receiver(Context paramContext, boolean paramboolean) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEditor.putBoolean(IS_HOME_RECEIVER, paramboolean);
        localEditor.commit();
    }

    public static int getViewCount(Context paramContext) {
        return PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(VIEW_COUNT, 0);
    }

    public static void saveViewCount(Context paramContext, int count) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
        localEditor.putInt(VIEW_COUNT, count);
        localEditor.commit();
    }

    public static void savaFlowViewOptions(Context paramText, int options_x, int options_y) {
        SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramText).edit();
        localEditor.putInt(FLOW_VIEW_OPTIONS_X, options_x);
        localEditor.putInt(FLOW_VIEW_OPTIONS_Y, options_y);
        localEditor.commit();
    }

    public static int[] getFlowViewOptions(Context paramContext) {
        SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
        return new int[]{localSharedPreferences.getInt(FLOW_VIEW_OPTIONS_X, 0), localSharedPreferences.getInt(FLOW_VIEW_OPTIONS_Y, Tools.getDisplayHeight(paramContext) / 2)};
    }
}
