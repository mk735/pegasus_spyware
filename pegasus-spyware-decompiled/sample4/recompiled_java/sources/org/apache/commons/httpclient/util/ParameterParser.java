package org.apache.commons.httpclient.util;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.NameValuePair;

public class ParameterParser {
    private char[] a = null;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;

    private boolean a() {
        return this.b < this.c;
    }

    private String a(boolean quoted) {
        while (this.d < this.e && Character.isWhitespace(this.a[this.d])) {
            this.d++;
        }
        while (this.e > this.d && Character.isWhitespace(this.a[this.e - 1])) {
            this.e--;
        }
        if (quoted && this.e - this.d >= 2 && this.a[this.d] == '\"' && this.a[this.e - 1] == '\"') {
            this.d++;
            this.e--;
        }
        if (this.e >= this.d) {
            return new String(this.a, this.d, this.e - this.d);
        }
        return null;
    }

    private static boolean a(char ch, char[] charray) {
        for (char c2 : charray) {
            if (ch == c2) {
                return true;
            }
        }
        return false;
    }

    private String a(char[] terminators) {
        this.d = this.b;
        this.e = this.b;
        while (a() && !a(this.a[this.b], terminators)) {
            this.e++;
            this.b++;
        }
        return a(false);
    }

    private String b(char[] terminators) {
        this.d = this.b;
        this.e = this.b;
        boolean quoted = false;
        boolean charEscaped = false;
        while (a()) {
            char ch = this.a[this.b];
            if (!quoted && a(ch, terminators)) {
                break;
            }
            if (!charEscaped && ch == '\"') {
                if (!quoted) {
                    quoted = true;
                } else {
                    quoted = false;
                }
            }
            if (charEscaped || ch != '\\') {
                charEscaped = false;
            } else {
                charEscaped = true;
            }
            this.e++;
            this.b++;
        }
        return a(true);
    }

    public List parse(String str, char separator) {
        if (str == null) {
            return new ArrayList();
        }
        return parse(str.toCharArray(), separator);
    }

    public List parse(char[] chars, char separator) {
        if (chars == null) {
            return new ArrayList();
        }
        return parse(chars, 0, chars.length, separator);
    }

    public List parse(char[] chars, int offset, int length, char separator) {
        if (chars == null) {
            return new ArrayList();
        }
        List params = new ArrayList();
        this.a = chars;
        this.b = offset;
        this.c = length;
        while (a()) {
            String paramName = a(new char[]{'=', separator});
            String paramValue = null;
            if (a() && chars[this.b] == '=') {
                this.b++;
                paramValue = b(new char[]{separator});
            }
            if (a() && chars[this.b] == separator) {
                this.b++;
            }
            if (paramName != null && (!paramName.equals("") || paramValue != null)) {
                params.add(new NameValuePair(paramName, paramValue));
            }
        }
        return params;
    }
}
