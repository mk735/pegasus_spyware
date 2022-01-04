package org.apache.commons.httpclient;

import com.lenovo.safecenter.utils.Untils;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.util.ParameterParser;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HeaderElement extends NameValuePair {
    static Class a;
    private static final Log b;
    private NameValuePair[] c;

    public HeaderElement() {
        this((String) null, (String) null, (NameValuePair[]) null);
    }

    public HeaderElement(String name, String value) {
        this(name, value, (NameValuePair[]) null);
    }

    public HeaderElement(String name, String value, NameValuePair[] parameters) {
        super(name, value);
        this.c = null;
        this.c = parameters;
    }

    public HeaderElement(char[] chars, int offset, int length) {
        this();
        if (chars != null) {
            List params = new ParameterParser().parse(chars, offset, length, Untils.WAIT);
            if (params.size() > 0) {
                NameValuePair element = (NameValuePair) params.remove(0);
                setName(element.getName());
                setValue(element.getValue());
                if (params.size() > 0) {
                    this.c = (NameValuePair[]) params.toArray(new NameValuePair[params.size()]);
                }
            }
        }
    }

    public HeaderElement(char[] chars) {
        this(chars, 0, chars.length);
    }

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.HeaderElement");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public NameValuePair[] getParameters() {
        return this.c;
    }

    public static final HeaderElement[] parseElements(char[] headerValue) {
        b.trace("enter HeaderElement.parseElements(char[])");
        if (headerValue == null) {
            return new HeaderElement[0];
        }
        List elements = new ArrayList();
        int from = 0;
        int len = headerValue.length;
        boolean qouted = false;
        for (int i = 0; i < len; i++) {
            char ch = headerValue[i];
            if (ch == '\"') {
                qouted = !qouted;
            }
            HeaderElement element = null;
            if (!qouted && ch == ',') {
                element = new HeaderElement(headerValue, from, i);
                from = i + 1;
            } else if (i == len - 1) {
                element = new HeaderElement(headerValue, from, len);
            }
            if (!(element == null || element.getName() == null)) {
                elements.add(element);
            }
        }
        return (HeaderElement[]) elements.toArray(new HeaderElement[elements.size()]);
    }

    public static final HeaderElement[] parseElements(String headerValue) {
        b.trace("enter HeaderElement.parseElements(String)");
        if (headerValue == null) {
            return new HeaderElement[0];
        }
        return parseElements(headerValue.toCharArray());
    }

    public static final HeaderElement[] parse(String headerValue) throws HttpException {
        b.trace("enter HeaderElement.parse(String)");
        if (headerValue == null) {
            return new HeaderElement[0];
        }
        return parseElements(headerValue.toCharArray());
    }

    public NameValuePair getParameterByName(String name) {
        b.trace("enter HeaderElement.getParameterByName(String)");
        if (name == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        NameValuePair[] parameters = getParameters();
        if (parameters == null) {
            return null;
        }
        for (NameValuePair current : parameters) {
            if (current.getName().equalsIgnoreCase(name)) {
                return current;
            }
        }
        return null;
    }
}
