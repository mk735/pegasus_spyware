package com.lenovo.safecenter.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.util.Log;

public class CallLogObserver extends ContentObserver {
    private Context a;

    public CallLogObserver(Context context, Handler handler) {
        super(handler);
        this.a = context;
        Log.i("wu0wu", "Lesafe CallLogObserver on create");
    }

    public void onChange(boolean selfChange) {
        Log.i("wu0wu", "============CallLog onChange============");
        CallUtil.statisticsCallDurationByType(this.a);
    }
}
