package org.apache.commons.httpclient;

import com.lenovo.lps.sus.c.c;
import org.apache.commons.httpclient.util.LangUtils;

public class UsernamePasswordCredentials implements Credentials {
    private String a;
    private String b;

    public UsernamePasswordCredentials() {
    }

    public UsernamePasswordCredentials(String usernamePassword) {
        if (usernamePassword == null) {
            throw new IllegalArgumentException("Username:password string may not be null");
        }
        int atColon = usernamePassword.indexOf(58);
        if (atColon >= 0) {
            this.a = usernamePassword.substring(0, atColon);
            this.b = usernamePassword.substring(atColon + 1);
            return;
        }
        this.a = usernamePassword;
    }

    public UsernamePasswordCredentials(String userName, String password) {
        if (userName == null) {
            throw new IllegalArgumentException("Username may not be null");
        }
        this.a = userName;
        this.b = password;
    }

    public void setUserName(String userName) {
        if (userName == null) {
            throw new IllegalArgumentException("Username may not be null");
        }
        this.a = userName;
    }

    public String getUserName() {
        return this.a;
    }

    public void setPassword(String password) {
        this.b = password;
    }

    public String getPassword() {
        return this.b;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append(this.a);
        result.append(c.N);
        result.append(this.b == null ? "null" : this.b);
        return result.toString();
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.a), this.b);
    }

    public boolean equals(Object o) {
        if (o == null) {
            return false;
        }
        if (this == o) {
            return true;
        }
        if (!getClass().equals(o.getClass())) {
            return false;
        }
        UsernamePasswordCredentials that = (UsernamePasswordCredentials) o;
        return LangUtils.equals(this.a, that.a) && LangUtils.equals(this.b, that.b);
    }
}
