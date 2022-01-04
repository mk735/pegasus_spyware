package a.a.a.a.a.a.c;

import a.a.a.a.a.a.a.b;
import java.lang.reflect.InvocationTargetException;
import java.security.KeyStore;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4a = {"com.ibm.ssl.protocol", "com.ibm.ssl.contextProvider", "com.ibm.ssl.keyStore", "com.ibm.ssl.keyStorePassword", "com.ibm.ssl.keyStoreType", "com.ibm.ssl.keyStoreProvider", "com.ibm.ssl.keyManager", "com.ibm.ssl.trustStore", "com.ibm.ssl.trustStorePassword", "com.ibm.ssl.trustStoreType", "com.ibm.ssl.trustStoreProvider", "com.ibm.ssl.trustManager", "com.ibm.ssl.enabledCipherSuites", "com.ibm.ssl.clientAuthentication"};
    private static final byte[] d = {-99, -89, -39, Byte.MIN_VALUE, 5, -72, -119, -100};
    private Hashtable b = new Hashtable();
    private Properties c;
    private a.a.a.a.a.a.b.a e = null;

    private String a(String str, String str2) {
        String str3 = null;
        Properties properties = this.c;
        if (properties != null) {
            str3 = properties.getProperty(str);
        }
        return (str3 == null && str2 != null) ? System.getProperty(str2) : str3;
    }

    private static String a(char[] cArr) {
        byte[] bArr = null;
        if (cArr == null) {
            return null;
        }
        if (cArr != null) {
            byte[] bArr2 = new byte[(cArr.length * 2)];
            int i = 0;
            int i2 = 0;
            while (i < cArr.length) {
                int i3 = i2 + 1;
                bArr2[i2] = (byte) (cArr[i] & 255);
                bArr2[i3] = (byte) ((cArr[i] >> '\b') & 255);
                i++;
                i2 = i3 + 1;
            }
            bArr = bArr2;
        }
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr[i4] = (byte) ((bArr[i4] ^ d[i4 % d.length]) & 255);
        }
        return "{xor}" + new String(b.a(bArr));
    }

    private static char[] a(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        try {
            byte[] a2 = b.a(str.substring(5));
            for (int i2 = 0; i2 < a2.length; i2++) {
                a2[i2] = (byte) ((a2[i2] ^ d[i2 % d.length]) & 255);
            }
            if (a2 == null) {
                return null;
            }
            char[] cArr = new char[(a2.length / 2)];
            int i3 = 0;
            while (i3 < a2.length) {
                int i4 = i3 + 1;
                int i5 = a2[i3] & 255;
                i3 = i4 + 1;
                cArr[i] = (char) (((a2[i4] & 255) << 8) + i5);
                i++;
            }
            return cArr;
        } catch (Exception e2) {
            return null;
        }
    }

    private static void b(Properties properties) {
        String property = properties.getProperty("com.ibm.ssl.keyStorePassword");
        if (property != null && !property.startsWith("{xor}")) {
            properties.put("com.ibm.ssl.keyStorePassword", a(property.toCharArray()));
        }
        String property2 = properties.getProperty("com.ibm.ssl.trustStorePassword");
        if (property2 != null && !property2.startsWith("{xor}")) {
            properties.put("com.ibm.ssl.trustStorePassword", a(property2.toCharArray()));
        }
    }

    private static KeyStore c() {
        try {
            Class<?> cls = Class.forName("com.ibm.rcp.security.auth.SecurePlatform");
            Object invoke = cls.getMethod("getKeyStore", null).invoke(null, null);
            if (((Boolean) cls.getMethod("isLoggedIn", null).invoke(invoke, null)).booleanValue()) {
                return (KeyStore) cls.getMethod("getKeyStore", null).invoke(invoke, null);
            }
            return null;
        } catch (ClassNotFoundException e2) {
            return null;
        } catch (IllegalAccessException e3) {
            throw new b(3026, new Object[]{e3.getLocalizedMessage()}, e3);
        } catch (SecurityException e4) {
            throw new b(3026, new Object[]{e4.getLocalizedMessage()}, e4);
        } catch (NoSuchMethodException e5) {
            throw new b(3026, new Object[]{e5.getLocalizedMessage()}, e5);
        } catch (IllegalArgumentException e6) {
            throw new b(3026, new Object[]{e6.getLocalizedMessage()}, e6);
        } catch (InvocationTargetException e7) {
            throw new b(3026, new Object[]{e7.getLocalizedMessage()}, e7);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:160:0x02c1  */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x02c4  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0154  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0165  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0181  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0189  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private javax.net.ssl.SSLContext d() {
        /*
        // Method dump skipped, instructions count: 723
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.a.a.a.c.a.d():javax.net.ssl.SSLContext");
    }

    public final void a(Properties properties) {
        boolean z;
        for (String str : properties.keySet()) {
            int i = 0;
            while (i < f4a.length && !f4a[i].equals(str)) {
                i++;
            }
            if (i < f4a.length) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (!z) {
                throw new IllegalArgumentException(String.valueOf(str) + " is not a valid IBM SSL property key.");
            }
        }
        Properties properties2 = new Properties();
        properties2.putAll(properties);
        b(properties2);
        this.c = properties2;
    }

    public final String[] a() {
        String a2 = a("com.ibm.ssl.enabledCipherSuites", null);
        if (a2 == null) {
            return null;
        }
        Vector vector = new Vector();
        int indexOf = a2.indexOf(44);
        int i = 0;
        while (indexOf >= 0) {
            vector.add(a2.substring(i, indexOf));
            i = indexOf + 1;
            indexOf = a2.indexOf(44, i);
        }
        vector.add(a2.substring(i));
        String[] strArr = new String[vector.size()];
        vector.toArray(strArr);
        return strArr;
    }

    public final SSLSocketFactory b() {
        SSLContext d2 = d();
        if (this.e != null) {
            a.a.a.a.a.a.b.a aVar = this.e;
            Object[] objArr = new Object[2];
            objArr[0] = "null (broker defaults)";
            objArr[1] = a() != null ? a("com.ibm.ssl.enabledCipherSuites", null) : "null (using platform-enabled cipher suites)";
        }
        return d2.getSocketFactory();
    }
}
