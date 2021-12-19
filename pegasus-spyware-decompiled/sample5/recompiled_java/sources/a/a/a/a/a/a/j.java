package a.a.a.a.a.a;

import java.io.InputStream;
import java.io.OutputStream;

public final class j implements o {

    /* renamed from: a  reason: collision with root package name */
    private Class f20a;
    private String b;
    private Object c;

    public j(String str) {
        this.b = str;
    }

    @Override // a.a.a.a.a.a.o
    public final void a() {
        if (!h.a("com.ibm.mqttdirect.modules.local.bindings.LocalListener")) {
            throw h.a(32103);
        }
        try {
            this.f20a = Class.forName("com.ibm.mqttdirect.modules.local.bindings.LocalListener");
            this.c = this.f20a.getMethod("connect", String.class).invoke(null, this.b);
        } catch (Exception e) {
        }
        if (this.c == null) {
            throw h.a(32103);
        }
    }

    @Override // a.a.a.a.a.a.o
    public final InputStream b() {
        try {
            return (InputStream) this.f20a.getMethod("getClientInputStream", new Class[0]).invoke(this.c, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // a.a.a.a.a.a.o
    public final OutputStream c() {
        try {
            return (OutputStream) this.f20a.getMethod("getClientOutputStream", new Class[0]).invoke(this.c, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // a.a.a.a.a.a.o
    public final void d() {
        if (this.c != null) {
            try {
                this.f20a.getMethod("close", new Class[0]).invoke(this.c, new Object[0]);
            } catch (Exception e) {
            }
        }
    }
}
