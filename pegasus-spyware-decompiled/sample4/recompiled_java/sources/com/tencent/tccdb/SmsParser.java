package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;
import tms.ad;

public class SmsParser {
    static {
        ad.a(TMSApplication.getApplicaionContext(), TMSApplication.getStrFromEnvMap(TMSApplication.CON_SMS_PARSER_LIBNAME));
    }

    public static int getNumberEntrance(Context context, SmsInfo smsInfo, MatchRule matchRule, AtomicReference<Ret> atomicReference) {
        return nativeGetNumberEntrance(context, smsInfo, matchRule, atomicReference);
    }

    public static int getWrongSmsType(Context context, SmsInfo smsInfo, AtomicReference<Ret> atomicReference) {
        return nativeGetWrongSmsType(context, smsInfo, atomicReference);
    }

    private static native int nativeGetNumberEntrance(Context context, SmsInfo smsInfo, MatchRule matchRule, AtomicReference<Ret> atomicReference);

    private static native int nativeGetWrongSmsType(Context context, SmsInfo smsInfo, AtomicReference<Ret> atomicReference);
}
