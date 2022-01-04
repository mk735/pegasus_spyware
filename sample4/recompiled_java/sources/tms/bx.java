package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;

/* access modifiers changed from: package-private */
public abstract class bx extends BroadcastReceiver {
    private bw a = new bw();
    private boolean b;

    bx() {
    }

    public final void a(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
            intentFilter.addCategory("android.intent.category.DEFAULT");
            intentFilter.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this, intentFilter, "android.permission.BROADCAST_SMS", null);
            IntentFilter intentFilter2 = new IntentFilter("android.provider.Telephony.SMS_RECEIVED2");
            intentFilter2.addCategory("android.intent.category.DEFAULT");
            intentFilter2.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this, intentFilter2, "android.permission.BROADCAST_SMS", null);
            IntentFilter intentFilter3 = new IntentFilter("android.provider.Telephony.GSM_SMS_RECEIVED");
            intentFilter3.addCategory("android.intent.category.DEFAULT");
            intentFilter3.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this, intentFilter3, "android.permission.BROADCAST_SMS", null);
            IntentFilter intentFilter4 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
            intentFilter4.addDataType("application/vnd.wap.mms-message");
            intentFilter4.addCategory("android.intent.category.DEFAULT");
            intentFilter4.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this, intentFilter4, "android.permission.BROADCAST_SMS", null);
            IntentFilter intentFilter5 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
            intentFilter5.addDataType(PushReceiver.CONTENT_MIME_TYPE_PUSH_SI);
            intentFilter5.addDataType(PushReceiver.CONTENT_MIME_TYPE_PUSH_SL);
            intentFilter5.addDataType("application/vnd.wap.coc");
            intentFilter5.addCategory("android.intent.category.DEFAULT");
            intentFilter5.setPriority(Integer.MAX_VALUE);
            context.registerReceiver(this, intentFilter5, "android.permission.BROADCAST_SMS", null);
            this.b = true;
        } catch (IntentFilter.MalformedMimeTypeException e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void a(SmsEntity smsEntity, BroadcastReceiver broadcastReceiver);

    public final boolean a() {
        return this.b;
    }

    public final void b(Context context) {
        if (this.b) {
            context.unregisterReceiver(this);
            this.b = false;
        }
    }

    public void onReceive(Context context, Intent intent) {
        SmsEntity smsEntity = null;
        this.a.a(intent);
        if (this.a.a()) {
            smsEntity = this.a.b();
        }
        if (smsEntity != null && !TextUtils.isEmpty(smsEntity.phonenum) && !TextUtils.isEmpty(smsEntity.body) && SDKUtil.getSDKVersion() > 4) {
            a(smsEntity, this);
        }
    }
}
