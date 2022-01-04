package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.media.AudioManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.CallLog;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.telephony.ITelephony;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SafeCenter;

public class PhoneListenService extends Service {
    TelephonyManager a;
    AudioManager b;
    private Handler c = new a(this, (byte) 0);

    private class a extends Handler {
        private a() {
        }

        /* synthetic */ a(PhoneListenService x0, byte b) {
            this();
        }

        public final void handleMessage(Message msg) {
            PhoneListenService.this.deleteLastestCall(msg.getData().getString(AppDatabase.NUMBER));
        }
    }

    public void deleteLastestCall(String number) {
        ContentResolver resolver = getContentResolver();
        Cursor cursor = resolver.query(CallLog.Calls.CONTENT_URI, new String[]{"_id"}, "number=?", new String[]{number}, "_id desc limit 1");
        if (cursor.moveToFirst()) {
            int id = cursor.getInt(0);
            Log.i("whiteperson", id + "==" + number);
            resolver.delete(CallLog.Calls.CONTENT_URI, "_id=?", new String[]{id + ""});
        }
        cursor.close();
    }

    public void endCall() {
        try {
            ITelephony.Stub.asInterface((IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "phone")).endCall();
            Log.i("whiteperson", "telephony.endCall();");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onCreate() {
        super.onCreate();
        this.a = (TelephonyManager) getSystemService("phone");
        this.a.listen(new b(this, (byte) 0), 32);
        this.b = (AudioManager) getSystemService("audio");
    }

    private class b extends PhoneStateListener {
        private String b;
        private boolean c;

        private b() {
            this.c = false;
        }

        /* synthetic */ b(PhoneListenService x0, byte b2) {
            this();
        }

        public final void onCallStateChanged(int state, String incomingNumber) {
            switch (state) {
                case 0:
                    try {
                        PhoneListenService.this.b.setRingerMode(2);
                        if (this.b != null && this.c) {
                            Log.i("whiteperson", this.b + "== TelephonyManager.CALL_STATE_IDLE");
                            Message msg = new Message();
                            msg.what = 1;
                            msg.getData().putString(AppDatabase.NUMBER, this.b);
                            PhoneListenService.this.c.sendMessageDelayed(msg, 500);
                        }
                        this.b = null;
                        this.c = false;
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 1:
                    PhoneListenService.this.b.setRingerMode(0);
                    this.b = incomingNumber;
                    this.c = SafeCenter.isIntercept(PhoneListenService.this, this.b);
                    Log.i("whiteperson", this.b + "==TelephonyManager.CALL_STATE_RINGING" + this.c);
                    if (this.c) {
                        PhoneListenService.this.endCall();
                        PhoneListenService.this.b.setRingerMode(2);
                        SafeCenter.AddPhoneLog(PhoneListenService.this, this.b, System.currentTimeMillis());
                        return;
                    }
                    PhoneListenService.this.b.setRingerMode(2);
                    return;
                case 2:
                    PhoneListenService.this.b.setRingerMode(2);
                    return;
                default:
                    return;
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
