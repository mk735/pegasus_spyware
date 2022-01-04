package org.apache.commons.httpclient.protocol;

import java.io.IOException;
import java.net.InetAddress;
import org.apache.commons.httpclient.protocol.ControllerThreadSocketFactory;

/* compiled from: ControllerThreadSocketFactory */
final class a extends ControllerThreadSocketFactory.SocketTask {
    private final ProtocolSocketFactory a;
    private final String b;
    private final int c;
    private final InetAddress d;
    private final int e;

    a(ProtocolSocketFactory protocolSocketFactory, String str, int i, InetAddress inetAddress, int i2) throws IOException {
        this.a = protocolSocketFactory;
        this.b = str;
        this.c = i;
        this.d = inetAddress;
        this.e = i2;
    }

    @Override // org.apache.commons.httpclient.protocol.ControllerThreadSocketFactory.SocketTask
    public final void doit() throws IOException {
        setSocket(this.a.createSocket(this.b, this.c, this.d, this.e));
    }
}
