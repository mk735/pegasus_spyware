package com.network.j;

public final class a {
    public static void a(StringBuilder sb, String str, String str2) {
        String str3 = "PHOTO" + ";" + "ENCODING=b" + ";" + "TYPE=" + str2 + ":" + str;
        StringBuilder sb2 = new StringBuilder();
        int length = str3.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            sb2.append(str3.charAt(i2));
            i++;
            if (i > 72) {
                sb2.append("\r\n");
                sb2.append(" ");
                i = 0;
            }
        }
        sb.append(sb2.toString());
        sb.append("\r\n");
        sb.append("\r\n");
    }
}
