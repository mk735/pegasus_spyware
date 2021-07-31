package tms;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.cn;

/* access modifiers changed from: package-private */
public final class ca extends ContentObserver {
    final /* synthetic */ cn.b a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ca(cn.b bVar, Handler handler) {
        super(handler);
        this.a = bVar;
    }

    public final void onChange(boolean z) {
        super.onChange(z);
        SmsEntity lastOutBoxSms = AbsSysDao.getDefault(this.a.b).getLastOutBoxSms(10);
        if (lastOutBoxSms != null) {
            ContentResolver contentResolver = this.a.b.getContentResolver();
            contentResolver.unregisterContentObserver(this);
            this.a.notifyDataReached(lastOutBoxSms, new Object[0]);
            contentResolver.registerContentObserver(Uri.parse("content://sms"), true, this);
        }
    }
}
