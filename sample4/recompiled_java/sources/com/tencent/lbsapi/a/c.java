package com.tencent.lbsapi.a;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Proxy;
import android.net.Uri;
import java.net.InetSocketAddress;
import org.apache.commons.httpclient.cookie.Cookie2;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.util.EntityUtils;

public class c {
    public static final String a = "POST";
    public static final String b = "GET";
    protected static String c = "ctnet";
    protected static String d = "ctwap";
    protected static String e = "cmnet";
    protected static String f = "cmwap";
    protected static String g = "uninet";
    protected static String h = "uniwap";
    private static Uri i = Uri.parse("content://telephony/carriers/preferapn");

    protected static InetSocketAddress a(Context context) {
        String str;
        int i2;
        if (context == null) {
            str = Proxy.getDefaultHost();
            i2 = Proxy.getDefaultPort();
        } else if (((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType() != 0) {
            return null;
        } else {
            String host = Proxy.getHost(context);
            int port = Proxy.getPort(context);
            if (host == null || host.trim().length() == 0 || port <= 0) {
                host = Proxy.getDefaultHost();
                port = Proxy.getDefaultPort();
                if (host == null || host.trim().length() == 0 || port <= 0) {
                    e b2 = b(context);
                    str = b2.a;
                    i2 = b2.b;
                }
            }
            str = host;
            i2 = port;
        }
        return (str == null || str.trim().length() <= 0) ? null : new InetSocketAddress(str, i2);
    }

    public static byte[] a(String str, byte[] bArr, String str2, BasicHeader[] basicHeaderArr, Context context) {
        HttpEntity b2 = b(str, bArr, str2, basicHeaderArr, context);
        if (b2 == null) {
            return null;
        }
        byte[] byteArray = EntityUtils.toByteArray(b2);
        b2.consumeContent();
        return byteArray;
    }

    private static e b(Context context) {
        e eVar = new e();
        try {
            Cursor query = context.getContentResolver().query(i, null, null, null, null);
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("proxy"));
            if (string != null) {
                string.toLowerCase();
            }
            String string2 = query.getString(query.getColumnIndex(Cookie2.PORT));
            String string3 = query.getString(query.getColumnIndex("apn"));
            if (string3 != null) {
                string3.toLowerCase();
            }
            query.close();
            if (string3 == null || !string3.startsWith(d)) {
                if (string3 == null || !string3.startsWith(f)) {
                    if (string3 != null && string3.startsWith(h)) {
                        if (string == null || string.length() <= 0 || Integer.valueOf(string2).intValue() >= 0) {
                            eVar.a = "10.0.0.172";
                            eVar.b = 80;
                        } else {
                            eVar.a = string;
                            eVar.b = Integer.valueOf(string2).intValue();
                        }
                    }
                } else if (string == null || string.length() <= 0 || Integer.valueOf(string2).intValue() >= 0) {
                    eVar.a = "10.0.0.172";
                    eVar.b = 80;
                } else {
                    eVar.a = string;
                    eVar.b = Integer.valueOf(string2).intValue();
                }
            } else if (string == null || string.length() <= 0 || Integer.valueOf(string2).intValue() >= 0) {
                eVar.a = "10.0.0.200";
                eVar.b = 80;
            } else {
                eVar.a = string;
                eVar.b = Integer.valueOf(string2).intValue();
            }
            return eVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return eVar;
        } catch (Throwable th) {
            return eVar;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00ad, code lost:
        return null;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static org.apache.http.HttpEntity b(java.lang.String r5, byte[] r6, java.lang.String r7, org.apache.http.message.BasicHeader[] r8, android.content.Context r9) {
        /*
        // Method dump skipped, instructions count: 213
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.a.c.b(java.lang.String, byte[], java.lang.String, org.apache.http.message.BasicHeader[], android.content.Context):org.apache.http.HttpEntity");
    }
}
