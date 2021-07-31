package com.lenovo.lps.sus.a.a.a;

import com.lenovo.lps.sus.c.i;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class c {
    private static d a = new d();

    public static String a(String str) {
        i.a(com.lenovo.lps.sus.c.c.b, "downloadurl=" + str);
        if (str.indexOf(com.lenovo.lps.sus.c.c.v) > 0) {
            str = b(str.replace(com.lenovo.lps.sus.c.c.w, ""));
        }
        i.a(com.lenovo.lps.sus.c.c.b, "HDSdownloadurl=" + str);
        return str;
    }

    private static String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(com.lenovo.lps.sus.c.c.s());
        sb.append(String.format("/*%s*", a.a()));
        try {
            sb.append(URLEncoder.encode(a.a(String.format("%s|%d|%d|%d", str, -1L, 0, 0)), b.a));
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new Exception("don't support charset UTF-8!");
        }
    }
}
