package tms;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.gsm.SmsMessage;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* access modifiers changed from: package-private */
public final class cb implements ba {
    private ba a;
    private Intent b;

    /* access modifiers changed from: package-private */
    public static final class a implements ba {
        private SmsMessage a;

        a() {
        }

        @Override // tms.ba
        public final String a() {
            if (this.a != null) {
                return this.a.getMessageBody();
            }
            return null;
        }

        @Override // tms.ba
        public final void a(byte[] bArr) {
            try {
                this.a = SmsMessage.createFromPdu(bArr);
            } catch (Throwable th) {
                this.a = null;
            }
        }

        @Override // tms.ba
        public final String b() {
            if (this.a != null) {
                return this.a.getOriginatingAddress();
            }
            return null;
        }

        @Override // tms.ba
        public final SmsEntity c() {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b implements ba {
        private static Method b;
        private static Constructor<android.telephony.SmsMessage> c;
        private android.telephony.SmsMessage a;

        b() {
        }

        @Override // tms.ba
        public final String a() {
            if (this.a != null) {
                return this.a.getMessageBody();
            }
            return null;
        }

        @Override // tms.ba
        public final void a(byte[] bArr) {
            try {
                this.a = android.telephony.SmsMessage.createFromPdu(bArr);
                this.a.getMessageBody();
            } catch (Throwable th) {
                try {
                    if (b == null || c == null) {
                        b = Class.forName("com.android.internal.telephony.gsm.SmsMessage").getMethod("createFromPdu", byte[].class);
                        b.setAccessible(true);
                        c = android.telephony.SmsMessage.class.getDeclaredConstructor(Class.forName("com.android.internal.telephony.SmsMessageBase"));
                        c.setAccessible(true);
                    }
                    this.a = c.newInstance(b.invoke(null, bArr));
                    this.a.getMessageBody();
                } catch (Exception e) {
                    this.a = null;
                }
            }
        }

        @Override // tms.ba
        public final String b() {
            if (this.a != null) {
                return this.a.getOriginatingAddress();
            }
            return null;
        }

        @Override // tms.ba
        public final SmsEntity c() {
            return null;
        }
    }

    public cb(Intent intent) {
        this.b = intent;
    }

    @Override // tms.ba
    public final String a() {
        return this.a.a();
    }

    @Override // tms.ba
    public final void a(byte[] bArr) {
        if (this.a == null) {
            if (SDKUtil.getSDKVersion() > 3) {
                this.a = new b();
            } else {
                this.a = new a();
            }
        }
        this.a.a(bArr);
    }

    @Override // tms.ba
    public final String b() {
        return this.a.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object[]] */
    @Override // tms.ba
    public final SmsEntity c() {
        String b2;
        Bundle extras = this.b.getExtras();
        byte[][] bArr = extras != null ? (Object[]) extras.get("pdus") : null;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        String str = null;
        while (i < bArr.length) {
            if (bArr[i] == null) {
                b2 = str;
            } else {
                a(bArr[i]);
                if (a() == null) {
                    break;
                }
                stringBuffer.append(a());
                b2 = str == null ? b() : str;
            }
            i++;
            str = b2;
        }
        if (str == null) {
            return null;
        }
        SmsEntity smsEntity = new SmsEntity();
        smsEntity.phonenum = str;
        smsEntity.body = stringBuffer.toString();
        smsEntity.type = 1;
        smsEntity.protocolType = 0;
        smsEntity.raw = this.b;
        return smsEntity;
    }
}
