package com.lenovo.performancecenter.framework;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.performancecenter.LeemCenterTools;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.DataLayerManageBoot;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.safecenter.utils.AppCheck;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

public class LeemCenterReceiver extends BroadcastReceiver {
    private ActivityManager a;
    private Timer b;
    private long c;
    private a d;
    private Context e;

    static /* synthetic */ void a(Context x1) {
        ArrayList<String> bootForbidedList = new DataLayerManageBoot().getBootForbidedList(x1);
        ArrayList<String> recordPkgList = Utils.getRecordPkgList();
        for (int i = 0; i < bootForbidedList.size(); i++) {
            if (recordPkgList.contains(bootForbidedList.get(i))) {
                bootForbidedList.remove(i);
            }
        }
        Iterator<String> it = bootForbidedList.iterator();
        while (it.hasNext()) {
            Log.i("LeemCenterReceiver", "Boot KillProcess ---> " + it.next());
        }
        if (bootForbidedList.size() != 0) {
            ScanApplicationInfo.killAllProcess(null, x1, bootForbidedList);
        }
    }

    public void onReceive(Context context, Intent intent) {
        Log.i("LeemCenterReceiver", "onReceive()");
        this.e = context;
        String action = intent.getAction();
        this.c = System.nanoTime();
        if (this.d == null) {
            this.d = new a();
        }
        if (this.a == null) {
            this.a = (ActivityManager) context.getSystemService("activity");
        }
        if (this.b == null) {
            this.b = new Timer(true);
        }
        "android.hardware.usb.action.USB_STATE".equals(action);
        if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            Utils.recordBootTime(System.currentTimeMillis());
            LeemCenterTools.writeBootStartTime(context);
            Log.i("LeemCenterReceiver", System.currentTimeMillis() + "---> Intent.ACTION_BOOT_COMPLETED");
            if (Utils.getIsRoot()) {
                Log.i("LeemCenterReceiver", System.currentTimeMillis() + "isRoot, exec kill process");
                this.b.schedule(this.d, 20000);
            }
        }
        if (AppCheck.ACTION_ACTIVITY_SWITCH.equals(action)) {
            long openTime = System.currentTimeMillis();
            long interval = openTime - Utils.getLastKillTime(this.e);
            Log.i("LeemCenterReceiver", "newPkg interval == " + interval);
            if (interval <= Utils.CLICK_INTERVAL && interval > 0) {
                String newPkg = intent.getStringExtra("newPkg");
                Log.i("LeemCenterReceiver", "newPkg interval == " + newPkg);
                if (!DataLayerManager.getListForResetKillTime(this.e).contains(newPkg)) {
                    Utils.recordKillTimeAndPosition(this.e, 1, 5);
                    Log.i("LeemCenterReceiver", "newPkg resetKillTime");
                }
            }
            long time = openTime - Utils.getBootTime();
            Log.i("LeemCenterReceiver", "cur == " + System.currentTimeMillis() + " bootTime == " + Utils.getBootTime() + " time == " + time);
            if (time <= 20000 && time >= 0) {
                String newPkg2 = intent.getStringExtra("newPkg");
                Log.i("LeemCenterReceiver", "newPkg == " + newPkg2);
                Utils.recordOpenPkgList(newPkg2);
            }
        }
    }

    class a extends TimerTask {
        a() {
        }

        public final void run() {
            Log.i("LeemCenterReceiver", "KillProcessTimerTask run...cost=" + (System.nanoTime() - LeemCenterReceiver.this.c));
            LeemCenterReceiver leemCenterReceiver = LeemCenterReceiver.this;
            LeemCenterReceiver.a(LeemCenterReceiver.this.e);
        }
    }
}
