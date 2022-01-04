package com.lenovo.safecenter.utils.updateLab;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.httpApi.LeSafeAPI;

public class UpdateLabManager {
    public static final String ACTION_NOTICE_QUERY_NETBLACK_LAB = "com.lenovo.antispam.netblackquery";
    public static final String ACTION_NOTICE_QUERY_SIGNCALL_LAB = "com.lenovo.antispam.signcallquery";
    public static final String ACTION_NOTICE_QUERY_VIRUS_LAB = "com.lenovo.antivirus.query";
    public static final String ACTION_NOTICE_UPDATE_NETBLACK_LAB = "com.lenovo.antispam.netblackupdate";
    public static final String ACTION_NOTICE_UPDATE_SIGNCALL_LAB = "com.lenovo.antispam.signcallupdate";
    public static final String ACTION_NOTICE_UPDATE_SYS_LAB = "com.lenovo.antispam.sysupdate";
    public static final String ACTION_NOTICE_UPDATE_VIRUS_LAB = "com.lenovo.antivirus.update";
    public static final int UPDATE_STATUS_NET_ERROR = 2;
    public static final int UPDATE_STATUS_NEWEST = 1;
    public static final int UPDATE_STATUS_SUCCESS = 0;
    private static boolean[] a = new boolean[4];
    private static boolean[] b = new boolean[4];
    private static int[] c = new int[4];
    private static int[] d = new int[4];
    public static boolean isManualUpdateLab = false;

    public static int getUpdateLabStatus(int index) {
        return d[index];
    }

    public static void setUpdateLabStatus(int index, int state) {
        d[index] = state;
    }

    public static int getQueryLabStatus(int index) {
        return c[index];
    }

    public static void setQueryLabStatus(int index, int state) {
        c[index] = state;
    }

    public static boolean getIs_QueryLabing(int index) {
        return b[index];
    }

    public static void setIs_QueryLabing(int index, boolean isQuerying) {
        b[index] = isQuerying;
    }

    public static boolean getIs_UpdateLabing(int index) {
        return a[index];
    }

    public static void setIs_UpdateLabing(int index, boolean isUpdating) {
        a[index] = isUpdating;
    }

    public static void startServiceUpdateLab(Context context) {
        if (getQueryLabStatus(0) != 1 && !getIs_UpdateLabing(0)) {
            Log.i("wu0wu", "startServiceUpdateVirusLab-->");
            d[0] = -1;
            Intent intent = new Intent();
            intent.setAction(ACTION_NOTICE_UPDATE_VIRUS_LAB);
            context.startService(intent);
            setIs_UpdateLabing(0, true);
            LeSafeObservable.get(context).noticeUpdatingLab();
        }
        if (getQueryLabStatus(1) != 1 && !getIs_UpdateLabing(1)) {
            Log.i("wu0wu", "startServiceUpdateNetBlackLab-->");
            setUpdateLabStatus(1, -1);
            Intent intent2 = new Intent();
            intent2.setAction(ACTION_NOTICE_UPDATE_NETBLACK_LAB);
            context.startService(intent2);
            setIs_UpdateLabing(1, true);
            LeSafeObservable.get(context).noticeUpdatingLab();
        }
        if (getQueryLabStatus(2) != 1 && !getIs_UpdateLabing(2)) {
            Log.i("wu0wu", "startServiceUpdateSysLab-->");
            setUpdateLabStatus(2, -1);
            Intent intent3 = new Intent();
            intent3.setAction(ACTION_NOTICE_UPDATE_SYS_LAB);
            context.startService(intent3);
            setIs_UpdateLabing(2, true);
            LeSafeObservable.get(context).noticeUpdatingLab();
        }
        if (getQueryLabStatus(3) != 1 && !getIs_UpdateLabing(3)) {
            Log.i("wu0wu", "startServiceUpdateSignCallLab-->");
            setUpdateLabStatus(3, -1);
            Intent intent4 = new Intent();
            intent4.setAction(ACTION_NOTICE_UPDATE_SIGNCALL_LAB);
            context.startService(intent4);
            setIs_UpdateLabing(3, true);
            LeSafeObservable.get(context).noticeUpdatingLab();
        }
    }

    public static void useWifiUpdateVirusLab(Context context) {
        if (AutoUpdateLabManager.isAutoUpdate(context) && AutoUpdateLabManager.getAutoUpdateMode(context) == 0) {
            Log.i("wu0wu", "WifiConnectedReceiver is_auto_update=true");
            if (!WflUtils.isInTheSameDay(Const.getLastUpdateLabTime(), System.currentTimeMillis())) {
                Log.i("wu0wu", "WifiConnectedReceiver isInTheSameDay=false");
                if (WflUtils.isWifiNetwork(context)) {
                    Log.i("wu0wu", "WifiConnectedReceiver isWifiNetwork=true");
                    startServiceUpdateLab(context);
                    return;
                }
                return;
            }
            Log.i("wu0wu", "WifiConnectedReceiver isInTheSameDay=true");
        }
    }

    public static void startServiceQueryLab(Context context) {
        LeSafeAPI.getAppSync(context);
        if (!hasNewVersionLab() && !isAllNewVersionLab() && !WflUtils.isInTheSameDay(Const.getDialogNoticeUpdateTime(), System.currentTimeMillis()) && !WflUtils.isInTheSameDay(Const.getLastUpdateLabTime(), System.currentTimeMillis())) {
            if (!getIs_QueryLabing(0)) {
                Log.i("wu0wu", "startServiceQueryVirusLab-->");
                c[0] = -1;
                Intent intent = new Intent();
                intent.setAction(ACTION_NOTICE_QUERY_VIRUS_LAB);
                context.startService(intent);
                setIs_QueryLabing(0, true);
            }
            if (!getIs_QueryLabing(1)) {
                Log.i("wu0wu", "startServiceQueryNetBlackLab-->");
                setQueryLabStatus(1, -1);
                Intent intent2 = new Intent();
                intent2.setAction(ACTION_NOTICE_QUERY_NETBLACK_LAB);
                context.startService(intent2);
                setIs_QueryLabing(1, true);
            }
            if (!getIs_QueryLabing(2)) {
                Log.i("wu0wu", "startServiceQuerySysLab-->");
                setQueryLabStatus(2, -1);
                Intent intent3 = new Intent();
                intent3.setAction(Const.ACTION_NOTICE_QUERY_SYS_LAB);
                context.startService(intent3);
                setIs_QueryLabing(2, true);
            }
            if (!getIs_QueryLabing(3)) {
                Log.i("wu0wu", "startServiceQuerySignCallLab-->");
                setQueryLabStatus(3, -1);
                Intent intent4 = new Intent();
                intent4.setAction(ACTION_NOTICE_QUERY_SIGNCALL_LAB);
                context.startService(intent4);
                setIs_QueryLabing(3, true);
            }
        }
    }

    public static boolean isQueryedLab() {
        return !b[0] && !b[1] && !b[2] && !b[3];
    }

    public static boolean isUpdateingLab() {
        return a[0] || a[1] || a[2] || a[3];
    }

    public static void setQueryLabStatus() {
        if (d[0] != 2) {
            c[0] = -1;
        }
        if (d[1] != 2) {
            c[1] = -1;
        }
        if (d[2] != 2) {
            c[2] = -1;
        }
        if (d[3] != 2) {
            c[3] = -1;
        }
    }

    public static boolean hasNewVersionLab() {
        return c[0] == 0 || c[1] == 0 || c[2] == 0 || c[3] == 0;
    }

    public static boolean hasUpdatedSuccessLab() {
        return d[0] == 0 || d[1] == 0 || d[2] == 0 || d[3] == 0;
    }

    public static void initQueryLabStatus() {
        c[0] = -1;
        c[1] = -1;
        c[2] = -1;
        c[3] = -1;
    }

    public static boolean isAllNewVersionLab() {
        return c[0] == 1 && c[1] == 1 && c[2] == 1 && c[3] == 1;
    }
}
