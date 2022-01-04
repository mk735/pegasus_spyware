package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import javax.net.SocketFactory;

public class r implements o {

    /* renamed from: a  reason: collision with root package name */
    protected Socket f26a;
    protected a b;
    private SocketFactory c;
    private String d;
    private int e;

    public r(a aVar, SocketFactory socketFactory, String str, int i) {
        this.c = socketFactory;
        this.d = str;
        this.e = i;
        this.b = aVar;
    }

    @Override // a.a.a.a.a.a.o
    public void a() {
        try {
            this.f26a = this.c.createSocket(this.d, this.e);
            this.f26a.setTcpNoDelay(true);
        } catch (ConnectException e2) {
            this.b.a(250, null, e2);
            throw h.a(32103);
        }
    }

    @Override // a.a.a.a.a.a.o
    public final InputStream b() {
        return this.f26a.getInputStream();
    }

    @Override // a.a.a.a.a.a.o
    public final OutputStream c() {
        return this.f26a.getOutputStream();
    }

    @Override // a.a.a.a.a.a.o
    public final void d() {
        if (this.f26a != null) {
            this.f26a.close();
        }
    }
}
