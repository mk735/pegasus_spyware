package tms;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.CallLog;
import android.provider.Contacts;
import android.provider.ContactsContract;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class bb extends AbsSysDao {
    private static volatile AbsSysDao a;
    private e b;
    private ContentResolver c;
    private c d;
    private Context e;
    private final String[] f = {"_id", AppDatabase.NUMBER, "name", "type", "duration", "date"};
    private final String[] g = {"_id", "address", "type", PushReceiver.BODY, "date", "person", "thread_id"};

    final class a implements e {
        private final Uri b = Contacts.People.CONTENT_URI;
        private final Uri c = Contacts.Phones.CONTENT_URI;

        a() {
        }

        @Override // tms.bb.e
        public final Uri a() {
            return this.b;
        }

        @Override // tms.bb.e
        public final List<ContactEntity> b() {
            ArrayList arrayList = new ArrayList();
            Cursor query = bb.this.c.query(this.b, new String[]{"_id", AppDatabase.NUMBER, "display_name"}, null, null, "name asc");
            bb bbVar = bb.this;
            if (bb.e(query)) {
                while (!query.isAfterLast()) {
                    try {
                        String string = query.getString(1);
                        if (ag.a(string)) {
                            ContactEntity contactEntity = new ContactEntity();
                            contactEntity.id = query.getInt(0);
                            contactEntity.phonenum = string.replaceAll("[ -]+", "");
                            contactEntity.name = query.getString(2);
                            arrayList.add(contactEntity);
                        }
                        query.moveToNext();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            bb bbVar2 = bb.this;
            bb.f(query);
            return arrayList;
        }
    }

    final class b implements e {
        private Uri b = ContactsContract.Contacts.CONTENT_URI;

        b() {
        }

        @Override // tms.bb.e
        public final Uri a() {
            return this.b;
        }

        @Override // tms.bb.e
        public final List<ContactEntity> b() {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            ArrayList arrayList = new ArrayList();
            Cursor query = bb.this.c.query(this.b, null, "has_phone_number=1", null, null);
            bb bbVar = bb.this;
            if (bb.e(query)) {
                int columnIndex = query.getColumnIndex("_id");
                int columnIndex2 = query.getColumnIndex("display_name");
                while (!query.isAfterLast()) {
                    try {
                        hashMap.put(Integer.valueOf(query.getInt(columnIndex)), query.getString(columnIndex2));
                        query.moveToNext();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            bb bbVar2 = bb.this;
            bb.f(query);
            Cursor query2 = bb.this.c.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
            bb bbVar3 = bb.this;
            if (bb.e(query2)) {
                int columnIndex3 = query2.getColumnIndex("data1");
                int columnIndex4 = query2.getColumnIndex("contact_id");
                while (!query2.isAfterLast()) {
                    try {
                        hashMap2.put(query2.getString(columnIndex3), Integer.valueOf(query2.getInt(columnIndex4)));
                        query2.moveToNext();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            bb bbVar4 = bb.this;
            bb.f(query2);
            for (Map.Entry entry : hashMap2.entrySet()) {
                String str = (String) entry.getKey();
                int intValue = ((Integer) entry.getValue()).intValue();
                String str2 = (String) hashMap.get(Integer.valueOf(intValue));
                if (ag.a(str) && str != null && str.trim().length() > 0) {
                    ContactEntity contactEntity = new ContactEntity();
                    contactEntity.id = intValue;
                    contactEntity.name = str2;
                    contactEntity.phonenum = str.replaceAll("[ -]+", "");
                    arrayList.add(contactEntity);
                }
            }
            return arrayList;
        }
    }

    final class c {
        private byte[] b = new byte[0];
        private d[] c = new d[0];
        private ContentObserver d;
        private boolean e;

        public c() {
            a();
            this.d = new an(this, new Handler(bb.this.e.getMainLooper()), bb.this);
            bb.this.c.registerContentObserver(bb.this.b.a(), true, this.d);
        }

        private int a(int i) {
            int i2;
            synchronized (this.b) {
                int length = this.c.length - 1;
                int i3 = 0;
                while (true) {
                    if (length < i3) {
                        i2 = -1;
                        break;
                    }
                    int i4 = (length + i3) / 2;
                    int i5 = this.c[i4].a;
                    if (i == i5) {
                        i2 = i4;
                        break;
                    } else if (i > i5) {
                        i3 = i4 + 1;
                    } else {
                        length = i4 - 1;
                    }
                }
            }
            return i2;
        }

        /* access modifiers changed from: private */
        public void a() {
            new av(this).start();
        }

        public final boolean a(String str) {
            return ag.a(str) && a(ag.b(str)) != -1;
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            if (this.d != null) {
                bb.this.c.unregisterContentObserver(this.d);
            }
            super.finalize();
        }
    }

    /* access modifiers changed from: package-private */
    public static final class d {
        int a;

        private d() {
        }

        /* synthetic */ d(byte b) {
            this();
        }
    }

    /* access modifiers changed from: package-private */
    public interface e {
        Uri a();

        List<ContactEntity> b();
    }

    private bb(Context context) {
        boolean z = true;
        this.e = context;
        this.c = context.getContentResolver();
        this.b = new Integer(Build.VERSION.SDK).intValue() <= 5 ? false : z ? new b() : new a();
        this.d = new c();
    }

    public static AbsSysDao a(Context context) {
        if (a == null) {
            synchronized (bb.class) {
                if (a == null) {
                    a = new bb(context);
                }
            }
        }
        return a;
    }

    private static SmsEntity c(Cursor cursor) {
        SmsEntity smsEntity = new SmsEntity();
        smsEntity.id = cursor.getInt(0);
        smsEntity.phonenum = cursor.getString(1);
        smsEntity.type = cursor.getInt(2);
        smsEntity.body = cursor.getString(3);
        smsEntity.date = cursor.getLong(4);
        return smsEntity;
    }

    private static CallLogEntity d(Cursor cursor) {
        CallLogEntity callLogEntity = new CallLogEntity();
        callLogEntity.id = cursor.getInt(0);
        callLogEntity.phonenum = cursor.getString(1).replaceAll("[ -]+", "");
        callLogEntity.type = cursor.getInt(3);
        callLogEntity.duration = cursor.getLong(4);
        callLogEntity.date = cursor.getLong(5);
        return callLogEntity;
    }

    /* access modifiers changed from: private */
    public static boolean e(Cursor cursor) {
        return cursor != null && cursor.moveToFirst();
    }

    /* access modifiers changed from: private */
    public static void f(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final boolean contains(String str) {
        new d((byte) 0);
        return this.d.a(str);
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final List<CallLogEntity> getAllCallLog() {
        ArrayList arrayList = new ArrayList();
        Cursor query = this.c.query(CallLog.Calls.CONTENT_URI, this.f, null, null, "date DESC");
        if (e(query)) {
            while (!query.isAfterLast()) {
                if (ag.a(query.getString(1))) {
                    arrayList.add(d(query));
                }
                query.moveToNext();
            }
        }
        f(query);
        return arrayList;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final List<ContactEntity> getAllContact() {
        return this.b.b();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        if (r6.phonenum.length() != 1) goto L_0x0035;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0029, code lost:
        r0 = "null";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
        r6.phonenum = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002d, code lost:
        return r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0035, code lost:
        r0 = r6.phonenum;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003a, code lost:
        if (r0 != null) goto L_0x001b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r0 != null) goto L_0x001b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001b, code lost:
        f(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r6 == null) goto L_0x002d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0031  */
    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.tencent.tmsecure.module.aresengine.CallLogEntity getLastCallLog() {
        /*
            r7 = this;
            r6 = 0
            android.content.ContentResolver r0 = r7.c     // Catch:{ Exception -> 0x0038, all -> 0x002e }
            android.net.Uri r1 = android.provider.CallLog.Calls.CONTENT_URI     // Catch:{ Exception -> 0x0038, all -> 0x002e }
            java.lang.String[] r2 = r7.f     // Catch:{ Exception -> 0x0038, all -> 0x002e }
            r3 = 0
            r4 = 0
            java.lang.String r5 = "_id DESC"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch:{ Exception -> 0x0038, all -> 0x002e }
            boolean r1 = e(r0)     // Catch:{ Exception -> 0x0041, all -> 0x003d }
            if (r1 == 0) goto L_0x0019
            com.tencent.tmsecure.module.aresengine.CallLogEntity r6 = d(r0)     // Catch:{ Exception -> 0x0041, all -> 0x003d }
        L_0x0019:
            if (r0 == 0) goto L_0x001e
        L_0x001b:
            f(r0)
        L_0x001e:
            if (r6 == 0) goto L_0x002d
            java.lang.String r0 = r6.phonenum
            int r0 = r0.length()
            r1 = 1
            if (r0 != r1) goto L_0x0035
            java.lang.String r0 = "null"
        L_0x002b:
            r6.phonenum = r0
        L_0x002d:
            return r6
        L_0x002e:
            r0 = move-exception
        L_0x002f:
            if (r6 == 0) goto L_0x0034
            f(r6)
        L_0x0034:
            throw r0
        L_0x0035:
            java.lang.String r0 = r6.phonenum
            goto L_0x002b
        L_0x0038:
            r0 = move-exception
            r0 = r6
        L_0x003a:
            if (r0 == 0) goto L_0x001e
            goto L_0x001b
        L_0x003d:
            r1 = move-exception
            r6 = r0
            r0 = r1
            goto L_0x002f
        L_0x0041:
            r1 = move-exception
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.bb.getLastCallLog():com.tencent.tmsecure.module.aresengine.CallLogEntity");
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final SmsEntity getLastInBoxSms(int i, int i2) {
        SmsEntity smsEntity = null;
        Cursor query = this.c.query(Uri.parse("content://sms"), this.g, "type=1 AND read=" + i2, null, "_id DESC");
        if (e(query)) {
            SmsEntity c2 = c(query);
            long currentTimeMillis = System.currentTimeMillis() - c2.date;
            if (i < 0) {
                smsEntity = c2;
            } else if (currentTimeMillis <= ((long) (i * 1000)) && currentTimeMillis >= 0) {
                smsEntity = c2;
            }
        }
        f(query);
        return smsEntity;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final SmsEntity getLastOutBoxSms(int i) {
        SmsEntity smsEntity = null;
        Cursor query = this.c.query(Uri.parse("content://sms"), this.g, "type=2", null, "_id DESC");
        if (e(query)) {
            SmsEntity c2 = c(query);
            if (c2.date + ((long) (i * 1000)) >= System.currentTimeMillis()) {
                smsEntity = c2;
            }
        }
        f(query);
        return smsEntity;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final List<ContactEntity> getSimContact() {
        String[] strArr = {"_id", "name", AppDatabase.NUMBER};
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.c.query(Uri.parse("content://icc/adn"), strArr, null, null, null);
            if (query != null && e(query)) {
                while (!query.isAfterLast()) {
                    ContactEntity contactEntity = new ContactEntity();
                    contactEntity.id = query.getInt(query.getColumnIndex("_id"));
                    contactEntity.name = query.getString(query.getColumnIndex("name"));
                    contactEntity.phonenum = query.getString(query.getColumnIndex(AppDatabase.NUMBER));
                    contactEntity.isSimContact = true;
                    if (contactEntity.phonenum != null) {
                        arrayList.add(contactEntity);
                    }
                    query.moveToNext();
                }
            }
            f(query);
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final boolean insert(SmsEntity smsEntity) {
        Uri parse = Uri.parse("content://sms");
        SmsEntity lastInBoxSms = getLastInBoxSms(5, 0);
        if (lastInBoxSms != null && lastInBoxSms.phonenum.equals(smsEntity.phonenum) && lastInBoxSms.body.equals(smsEntity.body)) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", smsEntity.phonenum);
        contentValues.put(PushReceiver.BODY, smsEntity.body);
        contentValues.put("date", Long.valueOf(smsEntity.date));
        contentValues.put(PushReceiver.READ, Integer.valueOf(smsEntity.read));
        contentValues.put("type", Integer.valueOf(smsEntity.type));
        return this.c.insert(parse, contentValues) != null;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final boolean remove(CallLogEntity callLogEntity) {
        return this.c.delete(CallLog.Calls.CONTENT_URI, new StringBuilder().append("_id=").append(callLogEntity.id).toString(), null) > 0;
    }

    @Override // com.tencent.tmsecure.module.aresengine.AbsSysDao
    public final boolean remove(SmsEntity smsEntity) {
        return this.c.delete(Uri.parse("content://sms"), new StringBuilder().append("_id=").append(smsEntity.id).toString(), null) > 0;
    }
}
