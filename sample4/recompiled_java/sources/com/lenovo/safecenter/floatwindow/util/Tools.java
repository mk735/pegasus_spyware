package com.lenovo.safecenter.floatwindow.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.shortcut.ShortcutActivity;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Tools {
    private Context a;

    public Tools(Context context) {
        this.a = context;
    }

    public static int getDisplayWidth(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static int getDisplayHeight(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public int getUeageSize(String totalstr1, String totalstr2) {
        return stringtoInt(totalstr1) - stringtoInt(totalstr2);
    }

    public String getTotalMemory() {
        long initial_memory = 0;
        try {
            BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            String str2 = localBufferedReader.readLine();
            if (str2 != null) {
                initial_memory = (long) (Integer.valueOf(str2.split("\\s+")[1]).intValue() / 1024);
            }
            localBufferedReader.close();
        } catch (IOException e) {
        }
        return String.valueOf(initial_memory);
    }

    public int stringtoInt(String string) {
        String str2 = string.replace("MB", "").replace("%", "");
        if (str2.indexOf(".") != -1) {
            return Integer.valueOf(str2.substring(0, str2.indexOf("."))).intValue();
        }
        return Integer.valueOf(str2.trim()).intValue();
    }

    public String inttostring(int mem) {
        return String.valueOf(mem) + "MB";
    }

    public int getUeageRate(String totalstr1, String totalstr2) {
        float local01 = (float) stringtoInt(totalstr1);
        return Math.round(100.0f * ((local01 - ((float) stringtoInt(totalstr2))) / local01));
    }

    public int getUeageRate1(String totalstr1, String totalstr2) {
        return Math.round(100.0f * (((float) stringtoInt(totalstr2)) / ((float) stringtoInt(totalstr1))));
    }

    public String getAvailMemory() {
        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
        ((ActivityManager) this.a.getSystemService("activity")).getMemoryInfo(mi);
        return String.valueOf(mi.availMem / 1048576);
    }

    public static void createFloatwindowShortCut(Context context, int iconResId, int appnameResId) {
        if (!hasfFloatwindowShortcut(context)) {
            Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent.putExtra("duplicate", false);
            intent.putExtra("android.intent.extra.shortcut.NAME", context.getString(R.string.switcher_app_name));
            intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context.getApplicationContext(), iconResId));
            intent.putExtra("android.intent.extra.shortcut.INTENT", new Intent(context.getApplicationContext(), ShortcutActivity.class));
            context.sendBroadcast(intent);
        }
    }

    public static boolean hasfFloatwindowShortcut(Context context) {
        String uriStr;
        if (Build.VERSION.SDK_INT < 8) {
            uriStr = "content://com.android.launcher.settings/favorites?notify=true";
        } else {
            uriStr = "content://com.android.launcher2.settings/favorites?notify=true";
        }
        Uri CONTENT_URI = Uri.parse(uriStr);
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, " iconPackage=? and iconResource=? ", new String[]{TrafficStatsService.PACKAGE_NAME, "com.lenovo.safecenter:drawable/shortcut_app_icon"}, null);
        if (cursor == null || cursor.getCount() <= 0) {
            return false;
        }
        return true;
    }
}
