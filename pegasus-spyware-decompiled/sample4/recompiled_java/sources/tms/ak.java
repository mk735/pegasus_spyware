package tms;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.adcheck.NotificationInfo;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class ak extends BaseManager {
    private static int a(String[] strArr, int i, String str, AtomicReference<String> atomicReference) {
        atomicReference.set(null);
        while (i < strArr.length) {
            if (strArr[i].trim().startsWith(str)) {
                atomicReference.set(strArr[i]);
                return i;
            }
            i++;
        }
        return -1;
    }

    private static boolean a(NotificationInfo notificationInfo, boolean z) {
        if (!z) {
            return false;
        }
        return ScriptHelper.runScriptAsRoot(new String[]{String.format("service call notification 2 s16 %s i32 %d", new Object[]{notificationInfo.mPkg, Long.valueOf(notificationInfo.mNotificationID)})}) == 0;
    }

    public final ArrayList<NotificationInfo> a() {
        String[] runScriptSplitLines;
        boolean z = ScriptHelper.canRunAtRoot() == 0;
        ArrayList<NotificationInfo> arrayList = new ArrayList<>();
        if ((z || ScriptHelper.isSystemUid()) && (runScriptSplitLines = ScriptHelper.runScriptSplitLines("dumpsys notification")) != null) {
            int i = 2;
            while (i < runScriptSplitLines.length) {
                String trim = runScriptSplitLines[i].trim();
                if (trim.contains("mSoundNotification=")) {
                    break;
                }
                if (trim.contains("NotificationRecord")) {
                    AtomicReference atomicReference = new AtomicReference();
                    int a = a(runScriptSplitLines, i, "tickerText=", atomicReference);
                    String trim2 = ((String) atomicReference.get()).trim();
                    int a2 = a(runScriptSplitLines, a + 1, "flags=", atomicReference);
                    String trim3 = ((String) atomicReference.get()).trim();
                    NotificationInfo notificationInfo = new NotificationInfo();
                    try {
                        String[] split = trim.trim().split("[ =]");
                        notificationInfo.mPkg = split[2];
                        notificationInfo.mNotificationID = Long.parseLong(split[4], 16);
                        String substring = trim2.substring(11);
                        notificationInfo.mTickerText = substring;
                        if (substring.equals("null")) {
                            notificationInfo.mTickerText = null;
                        }
                        notificationInfo.mFlags = Long.parseLong(trim3.substring(8), 16);
                        arrayList.add(notificationInfo);
                        i = a2;
                    } catch (Exception e) {
                        throw new RuntimeException("flagsText: " + trim3 + " Notification: " + trim);
                    }
                }
                i++;
            }
        }
        return arrayList;
    }

    public final boolean a(NotificationInfo notificationInfo) {
        return false;
    }

    public final boolean a(List<NotificationInfo> list) {
        boolean z = false;
        if (!(ScriptHelper.canRunAtRoot() == 0)) {
            return false;
        }
        for (NotificationInfo notificationInfo : list) {
            z = a(notificationInfo, true) & z;
        }
        return z;
    }

    public final boolean b(NotificationInfo notificationInfo) {
        return a(notificationInfo, ScriptHelper.canRunAtRoot() == 0);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
    }
}
