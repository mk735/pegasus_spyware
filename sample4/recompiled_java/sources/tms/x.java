package tms;

import android.os.Bundle;
import org.apache.http.HttpHost;
import org.apache.http.client.HttpClient;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class x {
    protected static final String a = "HttpBase";
    protected static final int b = 10000;
    protected static final int c = 20000;
    protected static final int d = 4096;
    public static final String e = "key_errcode";
    public static final String f = "key_total";
    public static final String g = "key_completed";
    protected static final int i = 1;
    protected static final int j = 2;
    protected HttpParams h = null;
    protected a k = null;
    private boolean l = false;
    private String m = null;
    private int n = 0;

    public interface a {
        void a(Bundle bundle);

        void b(Bundle bundle);
    }

    /* access modifiers changed from: protected */
    public HttpClient a() {
        if (this.h == null) {
            this.h = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(this.h, 10000);
        HttpConnectionParams.setSoTimeout(this.h, 20000);
        HttpConnectionParams.setSocketBufferSize(this.h, 4096);
        HttpClientParams.setRedirecting(this.h, true);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(this.h);
        if (this.l) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(this.m, this.n));
        }
        return defaultHttpClient;
    }

    /* access modifiers changed from: protected */
    public void a(int i2, Bundle bundle) {
        if (this.k == null) {
            return;
        }
        if (i2 == 1) {
            this.k.a(bundle);
        } else if (i2 == 2) {
            this.k.b(bundle);
        }
    }

    public void a(String str, int i2) {
        this.m = str;
        this.n = i2;
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    public void a(boolean z) {
        this.l = z;
    }
}
