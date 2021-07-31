package com.lenovo.performancecenter.service.object;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class KillAllPackageReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.i("KillAllPackageReceiver", "onReceive ---> " + action);
        if ("com.lenovo.safecenter.clearapp".equals(action)) {
            String packageName = intent.getData().getSchemeSpecificPart();
            if (packageName == null || "".equals(packageName)) {
                ScanApplicationInfo.killAllProcess(null, context, ScanApplicationInfo.getRunningAppList(context));
            } else {
                ScanApplicationInfo.killProcess(context, packageName);
            }
        } else if ("com.lenovo.safecenter.PERFORMANCE_KILL_ALL_PROCESSES".equals(action)) {
            int[] killedCount = a(context);
            Intent it = new Intent("com.lenovo.safecenter.PERFORMANCE_GET_KILL_RESULT");
            it.putExtra("com.lenovo.safecenter.PERFORMANCE_KILL_COUNT", killedCount);
            context.sendBroadcast(it);
            Log.i("KillAllPackageReceiver", "onReceive ---> com.lenovo.safecenter.PERFORMANCE_KILL_COUNT num == " + killedCount[0] + " memory == " + killedCount[1]);
        } else if ("com.lenovo.safecenter.PERFORMANCE_KILL_SINGLE_PROCESS".equals(action)) {
            String pkgName = intent.getStringExtra("com.lenovo.safecenter.PERFORMANCE_SINGLE_PROCESS_PKGNAME");
            RootPassage.execRootCmd(pkgName, " -fs ", context);
            Log.i("KillAllPackageReceiver", "onReceive ---> com.lenovo.safecenter.PERFORMANCE_KILL_SINGLE_PROCESS..." + pkgName);
        } else if ("com.lenovo.safecenterwidget.RECORD_KILL_EVENT".equals(action)) {
            long killTime = intent.getLongExtra("com.lenovo.safecenterwidget.KILL_TIME", 0);
            int killPosition = intent.getIntExtra("com.lenovo.safecenterwidget.KILL_POSITION", 0);
            if (killTime != 0 && killPosition != 0) {
                Utils.recordKillTimeAndPosition(context, killTime, killPosition);
            }
        }
    }

    private static int[] a(Context context) {
        HashMap<String, int[]> readRunningAppCount = ScanApplicationInfo.getRunningAppInfo(context);
        int killedCount = 0;
        int clearedMemory = 0;
        ArrayList<String> pkgList = new ArrayList<>();
        for (Map.Entry<String, int[]> element : readRunningAppCount.entrySet()) {
            pkgList.add(element.getKey());
            clearedMemory += element.getValue()[1];
            if (element.getValue()[2] == 1) {
                killedCount++;
            }
        }
        RootPassage.execRootCmd(null, pkgList, " -fs ", context);
        return new int[]{killedCount, clearedMemory};
    }

    public static void sendBroadcastAboutExeClearShortcut(Context context, int endMemory) {
        Intent intent = new Intent("com.lenovo.safecenter.PERFORMANCE_EXE_SHORTCUT");
        intent.putExtra("com.lenovo.safecenter.PERFORMANCE_SHORTCUT_END_MEMORY", endMemory);
        context.sendBroadcast(intent);
    }

    public static void sendBroadcastAboutKillEvent(Context context, long killTime, int killPosition) {
        Intent intent = new Intent("com.lenovo.safecenter.PERFORMANCE_RECORD_KILL_EVENT");
        intent.putExtra("com.lenovo.safecenter.PERFORMANCE_KILL_TIME", killTime);
        intent.putExtra("com.lenovo.safecenter.PERFORMANCE_KILL_POSITION", killPosition);
        context.sendBroadcast(intent);
    }
}
