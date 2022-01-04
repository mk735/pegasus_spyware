package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;
import tms.ad;

public class IPDialer {
    public static final int TYPE_MOBILE = 1;
    public static final int TYPE_TELECOM = 3;
    public static final int TYPE_UNICOM = 2;
    private int a = 0;

    static {
        ad.a(TMSApplication.getApplicaionContext(), TMSApplication.getStrFromEnvMap(TMSApplication.CON_LOCATION_LIBNAME));
    }

    public IPDialer(Context context) {
        this.a = newObject(context);
        if (this.a == 0) {
            throw new OutOfMemoryError();
        }
    }

    private static native int changeToIPNum(int i, String str, AtomicReference<String> atomicReference);

    private static native void deleteObject(int i);

    private static native int getConfig(int i, AtomicReference<IPConfigSet> atomicReference);

    private static native int initIPDialer(int i, String str, int i2);

    private static native int newObject(Context context);

    private static native int setConfig(int i, IPConfigSet iPConfigSet);

    public int changeToIPNum(String str, AtomicReference<String> atomicReference) {
        return changeToIPNum(this.a, str, atomicReference);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        if (this.a != 0) {
            deleteObject(this.a);
        }
    }

    public IPConfigSet getConfig() {
        AtomicReference atomicReference = new AtomicReference();
        if (getConfig(this.a, atomicReference) == 0) {
            return (IPConfigSet) atomicReference.get();
        }
        return null;
    }

    public int initIPDialer(String str, int i) {
        return initIPDialer(this.a, str, i);
    }

    public int setConfig(IPConfigSet iPConfigSet) {
        return setConfig(this.a, iPConfigSet);
    }
}
