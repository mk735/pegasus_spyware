package tms;

import com.lenovo.safecenter.utils.Untils;
import com.tencent.tmsecure.module.phoneservice.IpDialHeaders;

public final class ag {
    public static boolean a(String str) {
        if (str == null || str.trim().length() < 3) {
            return false;
        }
        for (char c : new char[]{'/', '#', Untils.PAUSE, Untils.WAIT, '.', '(', ')', Untils.WILD, '*'}) {
            if (str.indexOf(c) >= 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            if (str == null) {
                str = "";
            }
            if (str2 == null) {
                str2 = "";
            }
            return str.compareTo(str2) == 0;
        }
        String c = c(str);
        String c2 = c(str2);
        if (c.length() >= 8 && c2.length() >= 8) {
            return c.substring(c.length() + -8).compareTo(c2.substring(c2.length() + -8)) == 0;
        }
        if (c.length() >= 7) {
            c = c.substring(c.length() - 7);
        }
        if (c2.length() >= 7) {
            c2 = c2.substring(c2.length() - 7);
        }
        return c.compareTo(c2) == 0;
    }

    public static String[] a(int i) {
        String[] strArr = new String[2];
        switch (i) {
            case 0:
                strArr[0] = IpDialHeaders.IP_HEADER_12593;
                strArr[1] = IpDialHeaders.IP_HEADER_17951;
                break;
            case 1:
                strArr[0] = IpDialHeaders.IP_HEADER_10193;
                strArr[1] = IpDialHeaders.IP_HEADER_17911;
                break;
            case 2:
                strArr[0] = IpDialHeaders.IP_HEADER_17909;
                strArr[1] = IpDialHeaders.IP_HEADER_17901;
                break;
            default:
                strArr[0] = IpDialHeaders.IP_HEADER_12593;
                strArr[1] = IpDialHeaders.IP_HEADER_17951;
                break;
        }
        return strArr;
    }

    public static int b(String str) {
        String str2;
        String[] strArr = {"+86", IpDialHeaders.IP_HEADER_12593, IpDialHeaders.IP_HEADER_17909, IpDialHeaders.IP_HEADER_17951, IpDialHeaders.IP_HEADER_17911, IpDialHeaders.IP_HEADER_10193, IpDialHeaders.IP_HEADER_12583, IpDialHeaders.IP_HEADER_12520, IpDialHeaders.IP_HEADER_96688};
        String replaceAll = str.replaceAll("[ -]", "");
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                str2 = replaceAll;
                break;
            } else if (replaceAll.startsWith(strArr[i])) {
                str2 = replaceAll.substring(strArr[i].length());
                break;
            } else {
                i++;
            }
        }
        if (str2.length() > 8) {
            str2 = str2.substring(str2.length() - 8);
        }
        int i2 = -1;
        int length = str2.length();
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 << 4) | ((byte) str2.charAt(i3));
        }
        return i2;
    }

    private static String c(String str) {
        if (str == null) {
            return null;
        }
        String replaceAll = str.replaceAll("[ -]", "");
        String[] strArr = {"+86", "0086", IpDialHeaders.IP_HEADER_12593, IpDialHeaders.IP_HEADER_17901, IpDialHeaders.IP_HEADER_17909, IpDialHeaders.IP_HEADER_17951, IpDialHeaders.IP_HEADER_17911, IpDialHeaders.IP_HEADER_17910, IpDialHeaders.IP_HEADER_10193, IpDialHeaders.IP_HEADER_12583, IpDialHeaders.IP_HEADER_12520, IpDialHeaders.IP_HEADER_96688};
        for (String str2 : strArr) {
            if (replaceAll.startsWith(str2)) {
                return replaceAll.substring(str2.length());
            }
        }
        return replaceAll;
    }
}
