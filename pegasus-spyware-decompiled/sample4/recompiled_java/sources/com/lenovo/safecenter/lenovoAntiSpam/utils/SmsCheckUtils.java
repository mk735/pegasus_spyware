package com.lenovo.safecenter.lenovoAntiSpam.utils;

import android.content.Context;
import android.util.Log;
import com.lenovo.safecenter.sdksys.DemoAresEngineFactor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.update.UpdateConfig;
import java.io.File;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class SmsCheckUtils {
    public static final int CHECK_ERROR = 0;
    public static final int CHECK_GOOD = 1;
    public static final int CHECK_SPAM = 3;
    public static final int CHECK_UNSURE = 2;

    /* JADX WARNING: Removed duplicated region for block: B:17:0x005b A[SYNTHETIC, Splitter:B:17:0x005b] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0060 A[SYNTHETIC, Splitter:B:20:0x0060] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0086 A[SYNTHETIC, Splitter:B:38:0x0086] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x008b A[SYNTHETIC, Splitter:B:41:0x008b] */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void init(android.content.Context r10) {
        /*
        // Method dump skipped, instructions count: 158
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.lenovoAntiSpam.utils.SmsCheckUtils.init(android.content.Context):void");
    }

    public static boolean checkSmsAction(Context context, String number, String smsContent) {
        AresEngineManager mAresEnginManager = (AresEngineManager) ManagerCreator.getManager(AresEngineManager.class);
        mAresEnginManager.setAresEngineFactor(new DemoAresEngineFactor(context));
        SmsEntity sms = new SmsEntity();
        sms.name = "";
        sms.phonenum = number;
        sms.body = smsContent;
        IIntelligentSmsChecker.CheckResult checkresult = mAresEnginManager.getIntelligentSmsChecker().check(sms);
        Log.i("demo", "smschecktype=: " + checkresult.mContentType + " , " + checkresult.mSuggestion);
        if (checkresult.mSuggestion == 3 || checkresult.mSuggestion == 2) {
            return true;
        }
        return false;
    }

    public static int ChargeChecker(Context context, String number, String smsContent) {
        return 1;
    }

    public static String getSysVersion(Context context) {
        return "";
    }

    public static String getFiletime(Context context) {
        return String.valueOf(new File(context.getFilesDir().getAbsolutePath() + CookieSpec.PATH_DELIM + UpdateConfig.SMS_CHECKER_NAME).lastModified());
    }
}
