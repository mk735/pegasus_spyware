package tms;

import android.text.TextUtils;
import java.util.Arrays;
import org.apache.commons.httpclient.cookie.CookiePolicy;

/* access modifiers changed from: package-private */
public final class cu {
    private static final String[] a = {"cmwap", "cmnet", "3gwap", "3gnet", "uniwap", "uninet", "ctwap", "ctnet", CookiePolicy.DEFAULT};
    private static final String[] b = {"cmnet", "3gnet", "uninet", "ctnet"};
    private static final String[] c = {"cmwap", "3gwap", "uniwap", "ctwap"};

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            for (int i = 0; i < a.length; i++) {
                if (lowerCase.startsWith(a[i])) {
                    return a[i];
                }
            }
        }
        return null;
    }

    public static boolean b(String str) {
        if (!TextUtils.isEmpty(str)) {
            return Arrays.asList(b).contains(str);
        }
        return false;
    }

    public static boolean c(String str) {
        if (!TextUtils.isEmpty(str)) {
            return Arrays.asList(c).contains(str);
        }
        return false;
    }
}
