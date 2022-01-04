package com.tencent.tmsecure.module.aresengine;

import android.content.Intent;
import android.os.Parcel;

public class SmsEntity extends TelephonyEntity {
    public static final int PROTOCOL_TYPE_MMS = 1;
    public static final int PROTOCOL_TYPE_SMS = 0;
    public static final int PROTOCOL_TYPE_WAPPUSH = 2;
    public static final int SMS_TYPE_IN = 1;
    public static final int SMS_TYPE_OUT = 2;
    private static final long a = 1;
    public String body;
    public long date;
    public int protocolType;
    public transient Intent raw;
    public int read;
    public int smstype;
    public int type;

    public SmsEntity() {
        this.read = 0;
        this.protocolType = 0;
        this.smstype = this.protocolType;
        this.date = System.currentTimeMillis();
    }

    private SmsEntity(Parcel parcel) {
        this.id = parcel.readInt();
        this.phonenum = parcel.readString();
        this.name = parcel.readString();
        this.body = parcel.readString();
        this.date = parcel.readLong();
        this.type = parcel.readInt();
        this.protocolType = parcel.readInt();
        this.read = parcel.readInt();
        this.smstype = parcel.readInt();
        this.raw = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
    }

    public SmsEntity(SmsEntity smsEntity) {
        super(smsEntity);
        this.body = smsEntity.body;
        this.date = smsEntity.date;
        this.type = smsEntity.type;
        this.protocolType = smsEntity.protocolType;
        this.read = smsEntity.read;
        this.smstype = smsEntity.smstype;
        this.raw = smsEntity.raw;
    }

    public static SmsEntity a(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        SmsEntity smsEntity = new SmsEntity(obtain);
        obtain.recycle();
        return smsEntity;
    }

    private void a(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.phonenum);
        parcel.writeString(this.name);
        parcel.writeString(this.body);
        parcel.writeLong(this.date);
        parcel.writeInt(this.type);
        parcel.writeInt(this.protocolType);
        parcel.writeInt(this.read);
        parcel.writeInt(this.smstype);
        parcel.writeParcelable(this.raw, 0);
    }

    public static byte[] a(SmsEntity smsEntity) {
        Parcel obtain = Parcel.obtain();
        smsEntity.a(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public String getBody() {
        return this.body;
    }

    public void setBody(String str) {
        if (str == null) {
            str = "";
        }
        this.body = str;
    }
}
