package org.apache.commons.httpclient;

/* access modifiers changed from: package-private */
/* compiled from: HttpMethodBase */
public final class b implements d {
    private final HttpMethodBase a;

    b(HttpMethodBase httpMethodBase) {
        this.a = httpMethodBase;
    }

    @Override // org.apache.commons.httpclient.d
    public final void a() {
        this.a.responseBodyConsumed();
    }
}
