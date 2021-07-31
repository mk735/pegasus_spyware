package com.tendcloud.tenddata;

import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpHost;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public final class o {
    private static final String a = "http://tdcv3.talkingdata.net";
    private static final String b = "/g/d";
    private static final int c = 60000;
    private static final boolean d = true;

    static DefaultHttpClient a() {
        HttpHost d2;
        int i = c;
        boolean b2 = u.b();
        new SchemeRegistry().register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, b2 ? c : 120000);
        if (!b2) {
            i = 120000;
        }
        HttpConnectionParams.setSoTimeout(basicHttpParams, i);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        if (!b2 && u.c() && (d2 = u.d()) != null) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", d2);
        }
        return defaultHttpClient;
    }

    static boolean a(ah ahVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        new p(gZIPOutputStream).a(ahVar);
        gZIPOutputStream.finish();
        gZIPOutputStream.flush();
        return a(b, byteArrayOutputStream.toByteArray(), d);
    }

    static boolean a(String str, byte[] bArr, boolean z) {
        DefaultHttpClient a2 = a();
        try {
            HttpPost httpPost = new HttpPost(a + str);
            ByteArrayEntity byteArrayEntity = new ByteArrayEntity(bArr);
            byteArrayEntity.setContentType("application/unpack_chinar");
            httpPost.setEntity(byteArrayEntity);
            if (a2.execute(httpPost).getStatusLine().getStatusCode() == 200) {
                return d;
            }
            return false;
        } catch (Exception e) {
        }
    }
}
