package com.lenovo.safecenter.antivirus.utils;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA1Util {
    protected static char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    protected static MessageDigest messagedigest;

    static {
        messagedigest = null;
        try {
            messagedigest = MessageDigest.getInstance("SHA-1");
        } catch (NoSuchAlgorithmException nsaex) {
            System.err.println(SHA1Util.class.getName() + "初始化失败，MessageDigest不支持MD5Util。");
            nsaex.printStackTrace();
        }
    }

    public static String getFileMD5String(File file) throws IOException {
        return getFileSha1(file);
    }

    public static String getMD5String(String s) {
        return getMD5String(s.getBytes());
    }

    public static String getMD5String(byte[] bytes) {
        messagedigest.update(bytes);
        return a(messagedigest.digest());
    }

    private static String a(byte[] bytes) {
        int length = bytes.length;
        StringBuffer stringBuffer = new StringBuffer(length * 2);
        int i = length + 0;
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bytes[i2];
            char c = hexDigits[(b & 240) >> 4];
            char c2 = hexDigits[b & 15];
            stringBuffer.append(c);
            stringBuffer.append(c2);
        }
        return stringBuffer.toString();
    }

    public static boolean checkPassword(String password, String md5PwdStr) {
        return getMD5String(password).equals(md5PwdStr);
    }

    public static void main(String[] args) throws IOException {
        long begin = System.currentTimeMillis();
        System.out.println("sha1:" + getMD5String("我爱你") + " time:" + ((System.currentTimeMillis() - begin) / 1000) + "s");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x001f A[SYNTHETIC, Splitter:B:14:0x001f] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0043 A[SYNTHETIC, Splitter:B:28:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x004f A[SYNTHETIC, Splitter:B:34:0x004f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getFileSha1(java.io.File r7) {
        /*
            r2 = 0
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ Exception -> 0x005e, OutOfMemoryError -> 0x003d }
            r3.<init>(r7)     // Catch:{ Exception -> 0x005e, OutOfMemoryError -> 0x003d }
            r5 = 5242880(0x500000, float:7.34684E-39)
            byte[] r0 = new byte[r5]     // Catch:{ Exception -> 0x0018, OutOfMemoryError -> 0x005b, all -> 0x0058 }
            r4 = 0
        L_0x000b:
            int r4 = r3.read(r0)     // Catch:{ Exception -> 0x0018, OutOfMemoryError -> 0x005b, all -> 0x0058 }
            if (r4 <= 0) goto L_0x0024
            java.security.MessageDigest r5 = com.lenovo.safecenter.antivirus.utils.SHA1Util.messagedigest     // Catch:{ Exception -> 0x0018, OutOfMemoryError -> 0x005b, all -> 0x0058 }
            r6 = 0
            r5.update(r0, r6, r4)     // Catch:{ Exception -> 0x0018, OutOfMemoryError -> 0x005b, all -> 0x0058 }
            goto L_0x000b
        L_0x0018:
            r1 = move-exception
            r2 = r3
        L_0x001a:
            r1.printStackTrace()     // Catch:{ all -> 0x004c }
            if (r2 == 0) goto L_0x0022
            r2.close()     // Catch:{ IOException -> 0x0038 }
        L_0x0022:
            r5 = 0
        L_0x0023:
            return r5
        L_0x0024:
            java.security.MessageDigest r5 = com.lenovo.safecenter.antivirus.utils.SHA1Util.messagedigest
            byte[] r5 = r5.digest()
            java.lang.String r5 = a(r5)
            r3.close()     // Catch:{ IOException -> 0x0033 }
        L_0x0031:
            r2 = r3
            goto L_0x0023
        L_0x0033:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0031
        L_0x0038:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0022
        L_0x003d:
            r1 = move-exception
        L_0x003e:
            r1.printStackTrace()
            if (r2 == 0) goto L_0x0022
            r2.close()     // Catch:{ IOException -> 0x0047 }
            goto L_0x0022
        L_0x0047:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0022
        L_0x004c:
            r5 = move-exception
        L_0x004d:
            if (r2 == 0) goto L_0x0052
            r2.close()     // Catch:{ IOException -> 0x0053 }
        L_0x0052:
            throw r5
        L_0x0053:
            r1 = move-exception
            r1.printStackTrace()
            goto L_0x0052
        L_0x0058:
            r5 = move-exception
            r2 = r3
            goto L_0x004d
        L_0x005b:
            r1 = move-exception
            r2 = r3
            goto L_0x003e
        L_0x005e:
            r1 = move-exception
            goto L_0x001a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.utils.SHA1Util.getFileSha1(java.io.File):java.lang.String");
    }
}
