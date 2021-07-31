package org.apache.commons.httpclient;

import java.io.Serializable;
import org.apache.commons.httpclient.util.LangUtils;

public class NameValuePair implements Serializable {
    private String a;
    private String b;

    public NameValuePair() {
        this(null, null);
    }

    public NameValuePair(String name, String value) {
        this.a = null;
        this.b = null;
        this.a = name;
        this.b = value;
    }

    public void setName(String name) {
        this.a = name;
    }

    public String getName() {
        return this.a;
    }

    public void setValue(String value) {
        this.b = value;
    }

    public String getValue() {
        return this.b;
    }

    public String toString() {
        return new StringBuffer().append("name=").append(this.a).append(", ").append("value=").append(this.b).toString();
    }

    public boolean equals(Object object) {
        boolean z = true;
        if (object == null) {
            return false;
        }
        if (this == object) {
            return true;
        }
        if (!(object instanceof NameValuePair)) {
            return false;
        }
        NameValuePair that = (NameValuePair) object;
        if (!LangUtils.equals(this.a, that.a) || !LangUtils.equals(this.b, that.b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.a), this.b);
    }
}
