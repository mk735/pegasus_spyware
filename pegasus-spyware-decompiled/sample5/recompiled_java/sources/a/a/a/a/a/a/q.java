package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class q extends r {
    private String[] c;
    private int d;

    public q(a aVar, SSLSocketFactory sSLSocketFactory, String str, int i) {
        super(aVar, sSLSocketFactory, str, i);
    }

    @Override // a.a.a.a.a.a.r, a.a.a.a.a.a.o
    public final void a() {
        super.a();
        a(this.c);
        int soTimeout = this.f26a.getSoTimeout();
        if (soTimeout == 0) {
            this.f26a.setSoTimeout(this.d * 1000);
        }
        ((SSLSocket) this.f26a).startHandshake();
        this.f26a.setSoTimeout(soTimeout);
    }

    public final void a(int i) {
        this.d = i;
    }

    public final void a(String[] strArr) {
        this.c = strArr;
        if (this.f26a != null && strArr != null) {
            if (this.b.a()) {
                String str = "";
                int i = 0;
                while (i < strArr.length) {
                    if (i > 0) {
                        str = String.valueOf(str) + ",";
                    }
                    String str2 = String.valueOf(str) + strArr[i];
                    i++;
                    str = str2;
                }
                this.b.a(260, new Object[]{str});
            }
            ((SSLSocket) this.f26a).setEnabledCipherSuites(strArr);
        }
    }
}
