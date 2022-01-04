package tms;

import com.tencent.tmsecure.utils.ScriptHelper;

/* access modifiers changed from: package-private */
public final class cv {
    public static boolean a(String str) {
        String runScript = ScriptHelper.runScript("chmod 755 " + str, str + " is-chain-inited");
        if (runScript == null) {
            return false;
        }
        return runScript.contains("true");
    }
}
