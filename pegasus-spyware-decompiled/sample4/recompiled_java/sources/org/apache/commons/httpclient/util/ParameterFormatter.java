package org.apache.commons.httpclient.util;

import com.lenovo.safecenter.utils.Untils;
import org.apache.commons.httpclient.NameValuePair;

public class ParameterFormatter {
    private static final char[] a = {'(', ')', '<', '>', '@', Untils.PAUSE, Untils.WAIT, ':', '\\', '\"', '/', '[', ']', '?', '=', '{', '}', ' ', '\t'};
    private static final char[] b = {'\"', '\\'};
    private boolean c = true;

    private static boolean a(char[] chars, char ch) {
        for (char c2 : chars) {
            if (ch == c2) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(char ch) {
        return a(b, ch);
    }

    private static boolean b(char ch) {
        return a(a, ch);
    }

    public boolean isAlwaysUseQuotes() {
        return this.c;
    }

    public void setAlwaysUseQuotes(boolean alwaysUseQuotes) {
        this.c = alwaysUseQuotes;
    }

    public static void formatValue(StringBuffer buffer, String value, boolean alwaysUseQuotes) {
        if (buffer == null) {
            throw new IllegalArgumentException("String buffer may not be null");
        } else if (value == null) {
            throw new IllegalArgumentException("Value buffer may not be null");
        } else if (alwaysUseQuotes) {
            buffer.append('\"');
            for (int i = 0; i < value.length(); i++) {
                char ch = value.charAt(i);
                if (a(ch)) {
                    buffer.append('\\');
                }
                buffer.append(ch);
            }
            buffer.append('\"');
        } else {
            int offset = buffer.length();
            boolean unsafe = false;
            for (int i2 = 0; i2 < value.length(); i2++) {
                char ch2 = value.charAt(i2);
                if (b(ch2)) {
                    unsafe = true;
                }
                if (a(ch2)) {
                    buffer.append('\\');
                }
                buffer.append(ch2);
            }
            if (unsafe) {
                buffer.insert(offset, '\"');
                buffer.append('\"');
            }
        }
    }

    public void format(StringBuffer buffer, NameValuePair param) {
        if (buffer == null) {
            throw new IllegalArgumentException("String buffer may not be null");
        } else if (param == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        } else {
            buffer.append(param.getName());
            String value = param.getValue();
            if (value != null) {
                buffer.append("=");
                formatValue(buffer, value, this.c);
            }
        }
    }

    public String format(NameValuePair param) {
        StringBuffer buffer = new StringBuffer();
        format(buffer, param);
        return buffer.toString();
    }
}
