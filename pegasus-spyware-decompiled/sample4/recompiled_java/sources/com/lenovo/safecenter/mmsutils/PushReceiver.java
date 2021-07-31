package com.lenovo.safecenter.mmsutils;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import java.io.UnsupportedEncodingException;

public class PushReceiver extends BroadcastReceiver {
    public static final String BODY = "body";
    public static final String CONTENT_MIME_TYPE_PUSH_MMS = "application/vnd.wap.mms-message";
    public static final String CONTENT_MIME_TYPE_PUSH_SI = "application/vnd.wap.sic";
    public static final String CONTENT_MIME_TYPE_PUSH_SL = "application/vnd.wap.slc";
    public static final String DATE = "date";
    public static final String ERR_TAG = "PushReceiver.java";
    public static final String EXP = "exp";
    public static final String M_CLS = "m_cls";
    public static final String M_SIZE = "m_size";
    public static final String M_TYPE = "m_type";
    public static final String PHONE_NUMBER = "phone_number";
    public static final String READ = "read";
    public static final String SUB = "sub";
    public static final String SUBJECT = "subject";
    public static final String TAG = "Push Receiver";
    public static final String TR_ID = "tr_id";
    public static final String TYPE = "type";
    public static final String V = "v";

    public void onReceive(Context context, Intent intent) {
        UnsupportedEncodingException e;
        try {
            if ("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(intent.getAction())) {
                byte[] pushData = intent.getByteArrayExtra(SettingUtil.DATA);
                HwDcdWapPushParser parser = new HwDcdWapPushParser(pushData);
                if (CONTENT_MIME_TYPE_PUSH_SL.equals(intent.getType())) {
                    parser.parse(1).getAttributeValueString(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_HREF);
                } else if (CONTENT_MIME_TYPE_PUSH_SI.equals(intent.getType())) {
                    HwDcdWapPushMsg pushMsg = parser.parse(0);
                    String str = pushMsg.getAttributeValueString(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_SI_TEXT) + pushMsg.getAttributeValueString(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_HREF);
                } else if ("application/vnd.wap.mms-message".equals(intent.getType())) {
                    GenericPdu pdu = new TyuMMSParser(pushData).parse();
                    String val_from = pdu.getFrom().getString();
                    Log.i("messgae", "phone_number==" + val_from);
                    ContentValues values = new ContentValues();
                    values.put("date", Long.valueOf(System.currentTimeMillis()));
                    values.put(READ, (Integer) 1);
                    switch (pdu.getMessageType()) {
                        case 130:
                            NotificationInd npdu = (NotificationInd) pdu;
                            try {
                                String location = new String(npdu.getContentLocation(), b.a);
                                try {
                                    values.put("ct_l", location);
                                    Log.i("messgae", "body==" + location);
                                    try {
                                        String subject = npdu.getSubject().getString();
                                        values.put(SUB, subject);
                                        Log.i("messgae", "sub==" + subject);
                                    } catch (Exception e1) {
                                        e1.printStackTrace();
                                    }
                                    try {
                                        String transactionId = new String(npdu.getTransactionId(), b.a);
                                        values.put(TR_ID, transactionId);
                                        Log.i("messgae", "tr_id==" + transactionId);
                                    } catch (UnsupportedEncodingException e2) {
                                        e2.printStackTrace();
                                    }
                                    try {
                                        int v = npdu.getMmsVersion();
                                        values.put(V, Integer.valueOf(v));
                                        Log.i("messgae", "v==" + v);
                                    } catch (Exception e3) {
                                        e3.printStackTrace();
                                    }
                                    try {
                                        long exp = npdu.getExpiry();
                                        values.put(EXP, Long.valueOf(exp));
                                        Log.i("messgae", "exp==" + exp);
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                    }
                                    try {
                                        long size = npdu.getMessageSize();
                                        values.put(M_SIZE, Long.valueOf(size));
                                        Log.i("messgae", "m_size==" + size);
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                    }
                                    try {
                                        String m_cls = new String(npdu.getMessageClass(), b.a);
                                        values.put(M_CLS, m_cls);
                                        Log.i("messgae", "m_cls==" + m_cls);
                                    } catch (UnsupportedEncodingException e6) {
                                        e6.printStackTrace();
                                    }
                                    try {
                                        int messageType = npdu.getMessageType();
                                        values.put(M_TYPE, Integer.valueOf(messageType));
                                        Log.i("messgae", "m_type==" + messageType);
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                    if (Settings.System.getInt(context.getContentResolver(), "guest_mode_on", 0) == 1) {
                                        abortBroadcast();
                                        recoverData(context, val_from, values);
                                    }
                                    return;
                                } catch (UnsupportedEncodingException e8) {
                                    e = e8;
                                    e.printStackTrace();
                                    return;
                                }
                            } catch (UnsupportedEncodingException e9) {
                                e = e9;
                                e.printStackTrace();
                                return;
                            }
                        default:
                            return;
                    }
                }
            }
        } catch (Exception e10) {
        }
    }

    public static Uri recoverData(Context con, String address, ContentValues recover_values) {
        Uri data = null;
        int thread_id = 0;
        if (address != null) {
            try {
                ContentValues values = new ContentValues();
                values.put("address", address);
                values.put("type", DatabaseTables.USER_MARK);
                values.put(READ, DatabaseTables.SYSTEM_MARK);
                values.put(BODY, "this is a test");
                values.put("date", (Integer) 5211314);
                values.put("person", "test");
                Uri sms_uri = con.getContentResolver().insert(Uri.parse("content://sms/inbox"), values);
                if (sms_uri != null) {
                    String sms_id = sms_uri.toString().substring("content://sms/".length(), sms_uri.toString().length());
                    Cursor sms_cursor = con.getContentResolver().query(Uri.parse("content://sms"), new String[]{"thread_id"}, "_id=" + sms_id, null, null);
                    if (sms_cursor != null && sms_cursor.getCount() > 0) {
                        while (sms_cursor.moveToNext()) {
                            thread_id = sms_cursor.getInt(0);
                        }
                    }
                    if (sms_cursor != null) {
                        sms_cursor.close();
                    }
                    if (thread_id > 0) {
                        recover_values.put("thread_id", Integer.valueOf(thread_id));
                        data = con.getContentResolver().insert(Uri.parse("content://mms/inbox"), recover_values);
                    }
                    con.getContentResolver().delete(Uri.parse("content://sms"), "_id=" + sms_id, null);
                }
            } catch (Exception e) {
                Log.i("test", e.toString());
                con.getContentResolver().delete(Uri.parse("content://sms"), " date =5211314", null);
            }
        }
        return data;
    }
}
