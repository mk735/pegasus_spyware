package com.lenovo.safecenter.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.util.Log;

public class SmsObserver extends ContentObserver {
    private static int b = 0;
    private Context a;

    public SmsObserver(Context context, Handler handler) {
        super(handler);
        this.a = context;
        Log.i("wu0wu", "Lesafe SmsObserver on create");
    }

    public void onChange(boolean selfChange) {
        Log.i("wu0wu", "==sms onChange  start==count=" + b);
        SmsUtil.monitorSmsState(this.a);
        Log.i("wu0wu", "==sms onChange  end==count=" + b);
        b++;
    }
}
