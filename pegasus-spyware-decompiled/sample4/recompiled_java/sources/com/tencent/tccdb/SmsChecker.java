package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.concurrent.atomic.AtomicReference;
import tms.ad;
import tms.v;

public class SmsChecker {
    public static final int EM_MOD_CHARGE;
    public static final int EM_MOD_KEYWORD;
    public static final int EM_MOD_PATTERN;
    public static final int EM_MOD_SENDER;
    private static volatile SmsChecker a = null;
    private int b;
    private String c;
    private boolean d = false;
    private final int e = 3;
    private final int f = 8;
    private IUpdateObserver g = new a(this);

    static {
        ad.a(TMSApplication.getApplicaionContext(), TMSApplication.getStrFromEnvMap(TMSApplication.CON_ARESENGINE_LIBNAME));
    }

    private SmsChecker(Context context) {
        this.b = newObject(context);
        if (this.b == 0) {
            throw new OutOfMemoryError();
        }
        this.c = v.a(context, UpdateConfig.SMS_CHECKER_NAME, (String) null);
        if (this.c != null && initSmsChecker(this.b, 3, this.c) == 0 && initChargeChecker(this.b, 8, this.c) == 0) {
            this.d = true;
        }
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).addObserver(4, this.g);
    }

    public static void DestoryInstance() {
        a = null;
    }

    private static void a(int i) {
        switch (i) {
            case 0:
                return;
            default:
                throw new SmsCheckerException(i);
        }
    }

    private static native int checkChargeSms(int i, MCheckInput mCheckInput, AtomicReference<MMatchSysResult> atomicReference);

    private static native int checkSmsSys(int i, MCheckInput mCheckInput, AtomicReference<MMatchSysResult> atomicReference);

    private static native void deleteObject(int i);

    private static native void finishChargeChecker(int i);

    private static native void finishSmsChecker(int i);

    public static int getFinalAction(Context context, MMatchSysResult mMatchSysResult) {
        return nativeGetFinalAction(context, mMatchSysResult);
    }

    public static SmsChecker getInstance(Context context) {
        if (a == null) {
            synchronized (SmsChecker.class) {
                if (a == null) {
                    a = new SmsChecker(context);
                }
            }
        }
        return a;
    }

    public static void getRuleFileHeader(Context context, AtomicReference<RuleFileHeader> atomicReference, String str) {
        nativeGetRuleFileInfo(context, str, atomicReference);
    }

    /* access modifiers changed from: private */
    public static native int initChargeChecker(int i, int i2, String str);

    /* access modifiers changed from: private */
    public static native int initSmsChecker(int i, int i2, String str);

    private static native int nativeGetFinalAction(Context context, MMatchSysResult mMatchSysResult);

    private static native int nativeGetRuleFileInfo(Context context, String str, AtomicReference<RuleFileHeader> atomicReference);

    private static native int newObject(Context context);

    private static native int reloadChargeRule(int i, int i2, String str);

    private static native int reloadModRule(int i, int i2, String str);

    public boolean checkChargeSms(MCheckInput mCheckInput, AtomicReference<MMatchSysResult> atomicReference) {
        if (!this.d) {
            if (reloadModRule()) {
                this.d = true;
            } else {
                atomicReference.set(new MMatchSysResult(0, 0, 0, 0, 0, null));
                return false;
            }
        }
        int checkChargeSms = checkChargeSms(this.b, mCheckInput, atomicReference);
        if (checkChargeSms == 0) {
            return true;
        }
        if (checkChargeSms > 0) {
            return false;
        }
        a(checkChargeSms);
        return false;
    }

    public boolean checkSmsSys(MCheckInput mCheckInput, AtomicReference<MMatchSysResult> atomicReference) {
        if (!this.d) {
            if (reloadModRule()) {
                this.d = true;
            } else {
                atomicReference.set(new MMatchSysResult(0, 0, 0, 0, 0, null));
                return false;
            }
        }
        int checkSmsSys = checkSmsSys(this.b, mCheckInput, atomicReference);
        if (checkSmsSys == 0) {
            return true;
        }
        if (checkSmsSys == -3) {
            return false;
        }
        a(checkSmsSys);
        return false;
    }

    public void finalize() {
        if (this.b != 0 && this.d) {
            finishSmsChecker(this.b);
            finishChargeChecker(this.b);
            deleteObject(this.b);
            this.b = 0;
        }
    }

    public void finishChargeChecker() {
        if (this.d) {
            finishChargeChecker(this.b);
        }
    }

    public void finishSmsChecker() {
        if (this.d) {
            finishSmsChecker(this.b);
        }
    }

    public int initChargeChecker(int i, String str) {
        if (this.d) {
            return initChargeChecker(this.b, i, str);
        }
        return -1;
    }

    public int initSmsChecker(int i, String str) {
        if (this.d) {
            return initSmsChecker(this.b, i, str);
        }
        return -1;
    }

    public int reloadChargeRule(int i, String str) {
        if (this.d) {
            return reloadChargeRule(this.b, i, str);
        }
        return -1;
    }

    public synchronized boolean reloadModRule() {
        boolean z;
        if (this.d) {
            int reloadModRule = reloadModRule(this.b, 3, this.c) | reloadChargeRule(this.b, 8, this.c);
            if (reloadModRule == 0) {
                z = true;
            } else {
                a(reloadModRule);
            }
        }
        z = false;
        return z;
    }
}
