package org.apache.commons.httpclient.cookie;

import java.util.Comparator;
import org.apache.commons.httpclient.Cookie;

public class CookiePathComparator implements Comparator {
    private static String a(Cookie cookie) {
        String path = cookie.getPath();
        if (path == null) {
            path = CookieSpec.PATH_DELIM;
        }
        if (!path.endsWith(CookieSpec.PATH_DELIM)) {
            return new StringBuffer().append(path).append(CookieSpec.PATH_DELIM).toString();
        }
        return path;
    }

    @Override // java.util.Comparator
    public int compare(Object o1, Object o2) {
        String path1 = a((Cookie) o1);
        String path2 = a((Cookie) o2);
        if (path1.equals(path2)) {
            return 0;
        }
        if (path1.startsWith(path2)) {
            return -1;
        }
        if (path2.startsWith(path1)) {
            return 1;
        }
        return 0;
    }
}
