package com.lenovo.safecenter.broadcast;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.DoubleCardUtils;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.SmsUtil;

public class SmsBroadcast extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        intent.getAction().equals("lenovo.backgroud.sendsms");
        if (intent.getAction().equals("SENT_SMS_ACTION")) {
            switch (getResultCode()) {
                case -1:
                    SafeLog sendsmsLog = new AppDatabase(context).getLastTariffLog();
                    if (sendsmsLog == null || !Const.isTariff) {
                        SmsUtil.onHasSendSmsEvent(context, Long.valueOf(System.currentTimeMillis()), Const.getSmsSendNumCurrMonth() + 1);
                    } else {
                        String str = sendsmsLog.number;
                        String str2 = sendsmsLog.time;
                        String str3 = sendsmsLog.content;
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("address", str);
                        contentValues.put("date", str2);
                        contentValues.put(PushReceiver.READ, (Integer) 1);
                        contentValues.put("status", (Integer) -1);
                        contentValues.put("type", (Integer) 2);
                        contentValues.put(PushReceiver.BODY, str3);
                        Log.d("handmes", "insertToInbox uri:" + context.getContentResolver().insert(Uri.parse("content://sms"), contentValues));
                    }
                    if (DoubleCardUtils.info) {
                        Toast.makeText(context, context.getString(R.string.sendsms_success), 0).show();
                        return;
                    }
                    return;
                default:
                    Toast.makeText(context, context.getString(R.string.sendsms_fail), 0).show();
                    return;
            }
        }
    }
}
