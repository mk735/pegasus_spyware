package com.tencent.tmsecure.module.aresengine;

import android.content.Context;
import java.util.List;
import tms.bb;

public abstract class AbsSysDao {
    public static AbsSysDao getDefault(Context context) {
        return bb.a(context);
    }

    public abstract boolean contains(String str);

    public abstract List<CallLogEntity> getAllCallLog();

    public abstract List<ContactEntity> getAllContact();

    public abstract CallLogEntity getLastCallLog();

    public abstract SmsEntity getLastInBoxSms(int i, int i2);

    public abstract SmsEntity getLastOutBoxSms(int i);

    public abstract List<ContactEntity> getSimContact();

    public abstract boolean insert(SmsEntity smsEntity);

    public abstract boolean remove(CallLogEntity callLogEntity);

    public abstract boolean remove(SmsEntity smsEntity);
}
