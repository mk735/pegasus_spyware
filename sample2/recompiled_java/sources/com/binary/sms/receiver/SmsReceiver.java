package com.binary.sms.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.SmsMessage;
import java.util.Date;
import java.util.Timer;

public class SmsReceiver extends BroadcastReceiver {
    public static final String AGENT_DATA_COLLECTION = "agentDataCollection";
    private static final String AGENT_EXFILTRATION_HEADER = "agentExfiltrationHeader";
    private static final String BATTERY_LEVEL = "batteryLevel";
    private static final String PDUS2 = "pdus";
    public static final String REVISION = "revision";
    private static final String SMS_RECEIVED = "android.intent.action.DATA_SMS_RECEIVED";
    static final String UTF8 = "utf8";
    private static final String UTF_8 = "UTF-8";
    public static String agentAddress = null;
    public static Handler resendingHandler;
    static Timer timer = new Timer();
    public static String tokenId = null;

    static {
        HandlerThread handlerThread = new HandlerThread("MainHandlerThread");
        handlerThread.start();
        resendingHandler = new Handler(handlerThread.getLooper());
    }

    public void onReceive(Context context, final Intent intent) {
        Logger.info("Binary SMS onReceive", false);
        resendingHandler.post(new Runnable() {
            /* class com.binary.sms.receiver.SmsReceiver.AnonymousClass1 */

            public void run() {
                try {
                    if (intent.getAction().equals(SmsReceiver.SMS_RECEIVED)) {
                        Logger.info(SmsReceiver.SMS_RECEIVED, false);
                        Bundle bundle = intent.getExtras();
                        if (bundle != null) {
                            Object[] pdus = (Object[]) bundle.get(SmsReceiver.PDUS2);
                            if (pdus.length > -1) {
                                SmsMessage[] msgs = new SmsMessage[pdus.length];
                                Logger.info("pdus.length: " + pdus.length, false);
                                String address = "";
                                String userDatabite = "";
                                for (int i = 0; i < msgs.length; i++) {
                                    msgs[i] = SmsMessage.createFromPdu((byte[]) pdus[i]);
                                    address = msgs[i].getOriginatingAddress();
                                    userDatabite = String.valueOf(userDatabite) + new String(msgs[i].getUserData(), SmsReceiver.UTF8);
                                }
                                Logger.addLine();
                                Logger.info("Binary SMS at: " + new Date(), true);
                                Logger.info("From number: " + address, true);
                                Logger.info("Data:\n" + userDatabite, true);
                            }
                        }
                    }
                } catch (Throwable e) {
                    Logger.error("onReceive Exception- " + e.getMessage(), e);
                }
            }
        });
    }

    private String toUTF8(String body) {
        try {
            return new String(body.getBytes("UTF8"));
        } catch (Exception e) {
            return body;
        }
    }
}
