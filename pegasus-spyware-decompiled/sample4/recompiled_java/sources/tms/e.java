package tms;

import android.net.Uri;
import android.os.Environment;
import android.provider.CallLog;
import android.provider.ContactsContract;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.SMSUtil;
import java.util.Iterator;
import java.util.List;

/* access modifiers changed from: package-private */
public final class e implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ al b;

    e(al alVar, String str) {
        this.b = alVar;
        this.a = str;
    }

    public final void run() {
        this.b.a.getContentResolver().delete(Uri.parse(ContactsContract.RawContacts.CONTENT_URI + "?" + "caller_is_syncadapter" + "=true"), null, null);
        this.b.a.getContentResolver().delete(Uri.parse("content://contacts/people/"), null, null);
        this.b.a.getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
        this.b.a.getContentResolver().delete(Uri.parse("content://sms/"), null, null);
        this.b.a.getContentResolver().delete(Uri.parse("content://mms/"), null, null);
        List<ContactEntity> simContact = AbsSysDao.getDefault(this.b.a).getSimContact();
        if (simContact != null && simContact.size() > 0) {
            Uri parse = Uri.parse("content://icc/adn");
            Iterator<ContactEntity> it = simContact.iterator();
            while (it.hasNext()) {
                try {
                    this.b.a.getContentResolver().delete(parse, "_id=" + it.next().id, null);
                } catch (Exception e) {
                    Log.i("AntitheftManagerImpl", e.getMessage());
                }
            }
        }
        v.g(Environment.getExternalStorageDirectory().getAbsolutePath());
        SMSUtil.sendSMS(this.a, this.b.b.tips4DeleteDataSuccess(), this.b.a);
    }
}
