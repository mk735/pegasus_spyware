package com.lenovo.performancecenter.coreui.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;
import com.lenovo.performancecenter.LeemCenterJNITools;
import com.lenovo.performancecenter.service.object.KillAllPackageReceiver;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.shortcut.CleanAcitivty;
import com.lenovo.safecenter.utils.Const;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.SoftReference;
import java.util.ArrayList;

public class Utils {
    public static final long CLICK_INTERVAL = 15000;
    public static final String SP_SHORTCUT = "SHORTCUT";
    public static final String SP_SHORTCUT_CLICKPOSTION = "SHORTCUT_CLICKPOSTION";
    public static final String SP_SHORTCUT_ENDMEMORY = "SHORTCUT_ENDMEMORY";
    public static final String SP_SHORTCUT_LASTCLICK = "SHORTCUT_LASTCLICK";
    private static long a;
    private static ArrayList<String> b;
    private static boolean c;
    public static boolean isPerfRoot;

    public static <T> T getSoftreference(T ref) {
        return (T) new SoftReference(ref).get();
    }

    public static void recordBootTime(long bootTime) {
        a = bootTime;
    }

    public static long getBootTime() {
        return a;
    }

    public static void recordOpenPkgList(String pkgName) {
        if (b == null) {
            b = new ArrayList<>();
        }
        b.add(pkgName);
    }

    public static ArrayList<String> getRecordPkgList() {
        if (b == null) {
            b = new ArrayList<>();
        }
        return b;
    }

    public static void recordKillTimeAndPosition(Context context, long killTime, int position) {
        SharedPreferences.Editor editor = context.getSharedPreferences(SP_SHORTCUT, 0).edit();
        editor.putLong(SP_SHORTCUT_LASTCLICK, killTime);
        editor.putInt(SP_SHORTCUT_CLICKPOSTION, position);
        editor.commit();
        KillAllPackageReceiver.sendBroadcastAboutKillEvent(context, killTime, position);
    }

    public static long getLastKillTime(Context context) {
        return context.getSharedPreferences(SP_SHORTCUT, 0).getLong(SP_SHORTCUT_LASTCLICK, 0);
    }

    public static int getLastClickPosition(Context context) {
        return context.getSharedPreferences(SP_SHORTCUT, 0).getInt(SP_SHORTCUT_CLICKPOSTION, 0);
    }

    public static void recordEndMemory(Context context, int endMeomory) {
        SharedPreferences.Editor editor = context.getSharedPreferences(SP_SHORTCUT, 0).edit();
        editor.putInt(SP_SHORTCUT_ENDMEMORY, endMeomory);
        editor.commit();
    }

    public static int getEndMemory(Context context) {
        return context.getSharedPreferences(SP_SHORTCUT, 0).getInt(SP_SHORTCUT_ENDMEMORY, 1);
    }

    public static ProgressDialog showDialog(Context context, String showMessage) {
        ProgressDialog dialog = new ProgressDialog(context);
        dialog.setMessage(showMessage);
        dialog.setIndeterminate(true);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
            /* class com.lenovo.performancecenter.coreui.util.Utils.AnonymousClass1 */

            public final boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                return true;
            }
        });
        dialog.show();
        return dialog;
    }

    public static int getTotleCpu() {
        long start = System.currentTimeMillis();
        float totleCpu = LeemCenterJNITools.getTotalCpuload_native();
        Log.i("test", "getTotleCpu() " + (System.currentTimeMillis() - start) + "");
        return (int) totleCpu;
    }

    public static int readCpuUsage() {
        int result;
        long start = System.currentTimeMillis();
        try {
            RandomAccessFile reader = new RandomAccessFile("/proc/stat", "r");
            String[] toks = reader.readLine().split(" ");
            long idle1 = Long.parseLong(toks[5]);
            long cpu1 = Long.parseLong(toks[2]) + Long.parseLong(toks[3]) + Long.parseLong(toks[4]) + Long.parseLong(toks[6]) + Long.parseLong(toks[7]) + Long.parseLong(toks[8]);
            try {
                Thread.sleep(360);
            } catch (Exception e) {
            }
            reader.seek(0);
            String load = reader.readLine();
            reader.close();
            String[] toks2 = load.split(" ");
            long idle2 = Long.parseLong(toks2[5]);
            long cpu2 = Long.parseLong(toks2[2]) + Long.parseLong(toks2[3]) + Long.parseLong(toks2[4]) + Long.parseLong(toks2[6]) + Long.parseLong(toks2[7]) + Long.parseLong(toks2[8]);
            long totalDiff = (cpu2 + idle2) - (cpu1 + idle1);
            if (totalDiff == 0) {
                result = 0;
            } else {
                result = (int) ((100 * (cpu2 - cpu1)) / totalDiff);
            }
            Log.i("test", "readCpuUsage() " + (System.currentTimeMillis() - start) + "   " + result + "%");
            return result;
        } catch (IOException ex) {
            ex.printStackTrace();
            return 0;
        }
    }

    public static boolean isLenovoApk(String pkgName) {
        if (Const.LENOVO_APKS == null || Const.LENOVO_APKS.equals("")) {
            return false;
        }
        return Const.LENOVO_APKS.contains(pkgName);
    }

    public static void createShortCut(Context context, int iconResId, int appnameResId) {
        if (!hasShortcut(context)) {
            a(context, iconResId, appnameResId);
        }
    }

    public static void createShortCut(Context context, int iconResId, int appnameResId, boolean toast) {
        if (hasShortcut(context)) {
            Toast.makeText(context, context.getText(R.string.setting_shortcut_exact), 0).show();
        } else {
            a(context, iconResId, appnameResId);
        }
    }

    private static void a(Context context, int iconResId, int appnameResId) {
        Intent shortcutintent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        shortcutintent.putExtra("duplicate", false);
        shortcutintent.putExtra("android.intent.extra.shortcut.NAME", context.getString(appnameResId));
        shortcutintent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context.getApplicationContext(), iconResId));
        shortcutintent.putExtra("android.intent.extra.shortcut.INTENT", new Intent(context.getApplicationContext(), CleanAcitivty.class));
        context.sendBroadcast(shortcutintent);
    }

    public static boolean hasShortcut(Context context) {
        String uriStr;
        if (Build.VERSION.SDK_INT < 8) {
            uriStr = "content://com.android.launcher.settings/favorites?notify=true";
        } else {
            uriStr = "content://com.android.launcher2.settings/favorites?notify=true";
        }
        Uri CONTENT_URI = Uri.parse(uriStr);
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, " iconPackage=? and iconResource=? ", new String[]{TrafficStatsService.PACKAGE_NAME, "com.lenovo.safecenter:drawable/onkey_shutcut_green"}, null);
        if (cursor == null || cursor.getCount() <= 0) {
            return false;
        }
        return true;
    }

    public static boolean getIsRoot() {
        if (!TrafficStatsService.nacServerIsExist()) {
            new Thread(new Runnable() {
                /* class com.lenovo.performancecenter.coreui.util.Utils.AnonymousClass2 */

                /* JADX WARNING: Removed duplicated region for block: B:16:0x0093  */
                /* JADX WARNING: Removed duplicated region for block: B:19:0x009a  */
                /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public final void run() {
                    /*
                    // Method dump skipped, instructions count: 166
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.lenovo.performancecenter.coreui.util.Utils.AnonymousClass2.run():void");
                }
            }).start();
            return c;
        }
    }
}
