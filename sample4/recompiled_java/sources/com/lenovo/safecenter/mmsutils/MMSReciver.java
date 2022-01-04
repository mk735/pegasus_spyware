package com.lenovo.safecenter.mmsutils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import java.io.UnsupportedEncodingException;

public class MMSReciver extends BroadcastReceiver {
    public static final String TAG = "Push Receiver";
    Context a;
    Intent b;

    public void onReceive(Context context, Intent intent) {
        Log.v("Push Receiver", "Intent recieved: " + intent.getAction());
        if (intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED")) {
            Log.i("Push Receiver", "SMS: " + intent.getAction());
            Toast.makeText(context, "SMS_RECEIVED", 1).show();
        }
        if (intent.getAction().equals("android.provider.Telephony.WAP_PUSH_RECEIVED")) {
            Log.v("Push Receiver", "PUSH: " + intent.getAction());
            Toast.makeText(context, "PUSH MSG", 1).show();
        }
        Log.v("Push Receiver", "MMSReciver abortBroadcast();");
        this.a = context;
        this.b = intent;
        new Thread() {
            /* class com.lenovo.safecenter.mmsutils.MMSReciver.AnonymousClass1 */

            public final void run() {
                byte[] pushData = MMSReciver.this.b.getByteArrayExtra(SettingUtil.DATA);
                GenericPdu pdu = new TyuMMSParser(pushData).parse();
                if (pdu == null) {
                    Log.e("Push Receiver", "Invalid PUSH data");
                    return;
                }
                try {
                    Log.v("Push Receiver", new String(pushData, b.a));
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                String val_from = pdu.getFrom().getString();
                switch (pdu.getMessageType()) {
                    case 130:
                        NotificationInd npdu = (NotificationInd) pdu;
                        try {
                            Log.v("Push Receiver", new String(npdu.getContentLocation(), b.a));
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        try {
                            Log.v("Push Receiver", npdu.getSubject().getString());
                        } catch (Exception e1) {
                            e1.printStackTrace();
                        }
                        try {
                            Log.v("Push Receiver", new String(npdu.getTransactionId(), b.a));
                        } catch (UnsupportedEncodingException e3) {
                            e3.printStackTrace();
                        }
                        try {
                            Log.v("Push Receiver", new String(npdu.getMessageClass(), b.a));
                            break;
                        } catch (UnsupportedEncodingException e4) {
                            e4.printStackTrace();
                            break;
                        }
                }
                Log.v("Push Receiver", val_from);
                MMSReciver.this.a = null;
                MMSReciver.this.b = null;
            }
        }.start();
        abortBroadcast();
    }
}
