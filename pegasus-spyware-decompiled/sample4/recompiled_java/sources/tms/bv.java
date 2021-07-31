package tms;

import android.content.Intent;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.PduParser;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

/* access modifiers changed from: package-private */
public final class bv implements ba {
    private Intent a;
    private GenericPdu b;

    public bv(Intent intent) {
        this.a = intent;
    }

    @Override // tms.ba
    public final String a() {
        return "NO TEXT";
    }

    @Override // tms.ba
    public final void a(byte[] bArr) {
        this.b = new PduParser(bArr).parse();
    }

    @Override // tms.ba
    public final String b() {
        EncodedStringValue from;
        if (this.b == null || (from = this.b.getFrom()) == null) {
            return null;
        }
        return from.getString();
    }

    @Override // tms.ba
    public final SmsEntity c() {
        a(this.a.getByteArrayExtra(SettingUtil.DATA));
        if (this.b == null) {
            return null;
        }
        SmsEntity smsEntity = new SmsEntity();
        smsEntity.date = System.currentTimeMillis();
        smsEntity.body = "NO TEXT";
        smsEntity.phonenum = b();
        smsEntity.protocolType = 1;
        smsEntity.raw = this.a;
        smsEntity.read = 0;
        smsEntity.type = 1;
        return smsEntity;
    }
}
