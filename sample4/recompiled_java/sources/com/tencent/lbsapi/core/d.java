package com.tencent.lbsapi.core;

import android.os.Environment;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import java.io.File;
import java.security.MessageDigest;
import java.util.Calendar;

public class d {
    public static long a() {
        Calendar instance = Calendar.getInstance();
        instance.set(1970, 0, 1, 8, 0, 0);
        return (Calendar.getInstance().getTimeInMillis() - instance.getTimeInMillis()) / 1000;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0020 A[SYNTHETIC, Splitter:B:17:0x0020] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x002e A[SYNTHETIC, Splitter:B:25:0x002e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object a(byte[] r4) {
        /*
            r0 = 0
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream
            r3.<init>(r4)
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0016, all -> 0x0026 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0016, all -> 0x0026 }
            java.lang.Object r0 = r2.readObject()     // Catch:{ Exception -> 0x003e }
            r3.close()     // Catch:{ IOException -> 0x0032 }
        L_0x0012:
            r2.close()     // Catch:{ IOException -> 0x0034 }
        L_0x0015:
            return r0
        L_0x0016:
            r1 = move-exception
            r2 = r0
        L_0x0018:
            r1.printStackTrace()     // Catch:{ all -> 0x003c }
            r3.close()     // Catch:{ IOException -> 0x0036 }
        L_0x001e:
            if (r2 == 0) goto L_0x0015
            r2.close()     // Catch:{ IOException -> 0x0024 }
            goto L_0x0015
        L_0x0024:
            r1 = move-exception
            goto L_0x0015
        L_0x0026:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0029:
            r3.close()     // Catch:{ IOException -> 0x0038 }
        L_0x002c:
            if (r2 == 0) goto L_0x0031
            r2.close()     // Catch:{ IOException -> 0x003a }
        L_0x0031:
            throw r0
        L_0x0032:
            r1 = move-exception
            goto L_0x0012
        L_0x0034:
            r1 = move-exception
            goto L_0x0015
        L_0x0036:
            r1 = move-exception
            goto L_0x001e
        L_0x0038:
            r1 = move-exception
            goto L_0x002c
        L_0x003a:
            r1 = move-exception
            goto L_0x0031
        L_0x003c:
            r0 = move-exception
            goto L_0x0029
        L_0x003e:
            r1 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.d.a(byte[]):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0034 A[SYNTHETIC, Splitter:B:14:0x0034] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0040 A[SYNTHETIC, Splitter:B:20:0x0040] */
    /* JADX WARNING: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r4, byte[] r5) {
        /*
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            r0.<init>()     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.io.File r3 = android.os.Environment.getExternalStorageDirectory()     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.lang.String r3 = "//"
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            r1.<init>(r0)     // Catch:{ Exception -> 0x002d, all -> 0x003d }
            r1.write(r5)     // Catch:{ Exception -> 0x004c }
            r1.close()     // Catch:{ IOException -> 0x0028 }
        L_0x0027:
            return
        L_0x0028:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0027
        L_0x002d:
            r0 = move-exception
            r1 = r2
        L_0x002f:
            r0.printStackTrace()     // Catch:{ all -> 0x0049 }
            if (r1 == 0) goto L_0x0027
            r1.close()     // Catch:{ IOException -> 0x0038 }
            goto L_0x0027
        L_0x0038:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0027
        L_0x003d:
            r0 = move-exception
        L_0x003e:
            if (r2 == 0) goto L_0x0043
            r2.close()     // Catch:{ IOException -> 0x0044 }
        L_0x0043:
            throw r0
        L_0x0044:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0043
        L_0x0049:
            r0 = move-exception
            r2 = r1
            goto L_0x003e
        L_0x004c:
            r0 = move-exception
            goto L_0x002f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.d.a(java.lang.String, byte[]):void");
    }

    public static byte[] a(JceStruct jceStruct) {
        JceOutputStream jceOutputStream = new JceOutputStream();
        jceStruct.writeTo(jceOutputStream);
        return jceOutputStream.toByteArray();
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0025 A[SYNTHETIC, Splitter:B:17:0x0025] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0033 A[SYNTHETIC, Splitter:B:25:0x0033] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(java.lang.Object r4) {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream
            r1 = 4096(0x1000, float:5.74E-42)
            r3.<init>(r1)
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x001b, all -> 0x002b }
            r2.<init>(r3)     // Catch:{ IOException -> 0x001b, all -> 0x002b }
            r2.writeObject(r4)     // Catch:{ IOException -> 0x0043 }
            byte[] r0 = r3.toByteArray()     // Catch:{ IOException -> 0x0043 }
            r3.close()     // Catch:{ IOException -> 0x0037 }
        L_0x0017:
            r2.close()     // Catch:{ IOException -> 0x0039 }
        L_0x001a:
            return r0
        L_0x001b:
            r1 = move-exception
            r2 = r0
        L_0x001d:
            r1.printStackTrace()     // Catch:{ all -> 0x0041 }
            r3.close()     // Catch:{ IOException -> 0x003b }
        L_0x0023:
            if (r2 == 0) goto L_0x001a
            r2.close()     // Catch:{ IOException -> 0x0029 }
            goto L_0x001a
        L_0x0029:
            r1 = move-exception
            goto L_0x001a
        L_0x002b:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x002e:
            r3.close()     // Catch:{ IOException -> 0x003d }
        L_0x0031:
            if (r2 == 0) goto L_0x0036
            r2.close()     // Catch:{ IOException -> 0x003f }
        L_0x0036:
            throw r0
        L_0x0037:
            r1 = move-exception
            goto L_0x0017
        L_0x0039:
            r1 = move-exception
            goto L_0x001a
        L_0x003b:
            r1 = move-exception
            goto L_0x0023
        L_0x003d:
            r1 = move-exception
            goto L_0x0031
        L_0x003f:
            r1 = move-exception
            goto L_0x0036
        L_0x0041:
            r0 = move-exception
            goto L_0x002e
        L_0x0043:
            r1 = move-exception
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.d.a(java.lang.Object):byte[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x004b A[SYNTHETIC, Splitter:B:17:0x004b] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0059 A[SYNTHETIC, Splitter:B:24:0x0059] */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 102
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.lbsapi.core.d.a(java.lang.String):byte[]");
    }

    public static byte[] a(byte[] bArr, String str, String str2) {
        String str3 = str + c(str2);
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str3.getBytes());
            byte[] digest = instance.digest();
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            int length = digest.length;
            char[] cArr2 = new char[(length * 2)];
            int i = 0;
            for (byte b : digest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b & 15];
            }
            return new c().b(bArr, digest);
        } catch (Exception e) {
            return null;
        }
    }

    public static void b(String str) {
        File file = new File(Environment.getExternalStorageDirectory() + "//" + str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static byte[] b(byte[] bArr, String str, String str2) {
        String str3 = str + c(str2);
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str3.getBytes());
            byte[] digest = instance.digest();
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            int length = digest.length;
            char[] cArr2 = new char[(length * 2)];
            int i = 0;
            for (byte b : digest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b & 15];
            }
            return new c().a(bArr, digest);
        } catch (Exception e) {
            return null;
        }
    }

    public static String c(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bytes);
            byte[] digest = instance.digest();
            int length = digest.length;
            char[] cArr2 = new char[(length * 2)];
            int i = 0;
            for (byte b : digest) {
                int i2 = i + 1;
                cArr2[i] = cArr[(b >> 4) & 15];
                i = i2 + 1;
                cArr2[i2] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception e) {
            return "";
        }
    }
}
