package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

public class HttpException extends IOException {
    static Class a;
    private String b;
    private int c;
    private final Throwable d;

    public HttpException() {
        this.c = 200;
        this.d = null;
    }

    public HttpException(String message) {
        super(message);
        this.c = 200;
        this.d = null;
    }

    public HttpException(String message, Throwable cause) {
        super(message);
        Class cls;
        Class cls2;
        this.c = 200;
        this.d = cause;
        try {
            Class[] paramsClasses = new Class[1];
            if (a == null) {
                cls = a("java.lang.Throwable");
                a = cls;
            } else {
                cls = a;
            }
            paramsClasses[0] = cls;
            if (a == null) {
                cls2 = a("java.lang.Throwable");
                a = cls2;
            } else {
                cls2 = a;
            }
            cls2.getMethod("initCause", paramsClasses).invoke(this, cause);
        } catch (Exception e) {
        }
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public Throwable getCause() {
        return this.d;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream s) {
        try {
            getClass().getMethod("getStackTrace", new Class[0]);
            super.printStackTrace(s);
        } catch (Exception e) {
            super.printStackTrace(s);
            if (this.d != null) {
                s.print("Caused by: ");
                this.d.printStackTrace(s);
            }
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter s) {
        try {
            getClass().getMethod("getStackTrace", new Class[0]);
            super.printStackTrace(s);
        } catch (Exception e) {
            super.printStackTrace(s);
            if (this.d != null) {
                s.print("Caused by: ");
                this.d.printStackTrace(s);
            }
        }
    }

    public void setReason(String reason) {
        this.b = reason;
    }

    public String getReason() {
        return this.b;
    }

    public void setReasonCode(int code) {
        this.c = code;
    }

    public int getReasonCode() {
        return this.c;
    }
}
