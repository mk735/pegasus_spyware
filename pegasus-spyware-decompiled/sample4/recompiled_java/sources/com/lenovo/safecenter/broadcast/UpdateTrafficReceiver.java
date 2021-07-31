package com.lenovo.safecenter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;

public class UpdateTrafficReceiver extends BroadcastReceiver {
    private long a = -1;
    private long b = -1;
    private String c = null;
    private LeSafeObservable d;

    public void onReceive(Context context, Intent intent) {
        this.d = LeSafeObservable.get(context);
        String action = intent.getAction();
        if (Const.INIT_BAR_ACTION_RTC.equals(action)) {
            Log.i("wu0wu", "UpdateTrafficReceiver initTraffic");
            this.a = intent.getLongExtra("todayData", 0);
            this.b = intent.getLongExtra("monthfree", 0);
            int intExtra = intent.getIntExtra("progress", 0);
            this.c = intent.getStringExtra("month_limit");
            Log.i("wu0wu", "initTraffic progress=" + intExtra);
            Const.setTodayUsedTraffic(this.a);
            Const.setMonthFreeTraffic(this.b);
            Const.setMonthLimitTraffic(this.c);
            Const.setProgressTrafficMonthUsed(intExtra);
            this.d.noticeRefreshTrafficInfo();
        }
        if ("com.lenovo.safecenter.updatetrafficbar.broadcast".equals(action)) {
            Log.i("wu0wu", "UpdateTrafficReceiver updateTraffic");
            if (this.a == -1) {
                this.a = Const.getTodayUsedTraffic();
            }
            if (this.b == -1) {
                this.b = Const.getMonthFreeTraffic();
            }
            if (this.c == null) {
                this.c = Const.getMonthLimitTraffic();
            }
            long longValue = Long.valueOf(this.c).longValue() * 1024 * 1024;
            long longExtra = intent.getLongExtra("changed", 0);
            this.a += longExtra;
            this.b -= longExtra;
            int i = (int) (((longValue - this.b) * 100) / longValue);
            Log.i("wu0wu", "updateTraffic progress=" + i);
            Const.setTodayUsedTraffic(this.a);
            Const.setMonthFreeTraffic(this.b);
            Const.setProgressTrafficMonthUsed(i);
            this.d.noticeRefreshTrafficInfo();
        }
    }
}
