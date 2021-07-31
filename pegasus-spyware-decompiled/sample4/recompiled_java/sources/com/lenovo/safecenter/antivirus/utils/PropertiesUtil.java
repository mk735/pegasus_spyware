package com.lenovo.safecenter.antivirus.utils;

import android.content.Context;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.security.Key;
import java.util.Properties;
import javax.crypto.Cipher;

public class PropertiesUtil {
    private static String c = "leskey.key";
    private static String d = "lesprop.dat";
    private static PropertiesUtil e;
    private Properties a;
    private Context b;

    private PropertiesUtil(Context context) {
        this.b = context;
        try {
            Cipher instance = Cipher.getInstance("AES");
            File file = new File(this.b.getFilesDir().getAbsolutePath() + File.separator + c);
            if (!file.exists()) {
                a(file);
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            objectInputStream.close();
            fileInputStream.close();
            instance.init(2, (Key) objectInputStream.readObject());
            File file2 = new File(this.b.getFilesDir().getAbsolutePath() + File.separator + d);
            if (!file2.exists()) {
                a(file2);
            }
            FileInputStream fileInputStream2 = new FileInputStream(file2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            a(fileInputStream2, byteArrayOutputStream);
            byte[] doFinal = instance.doFinal(byteArrayOutputStream.toByteArray());
            fileInputStream2.close();
            byteArrayOutputStream.close();
            Properties properties = new Properties();
            properties.load(new ByteArrayInputStream(doFinal));
            this.a = properties;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized PropertiesUtil getInstance(Context context) {
        PropertiesUtil propertiesUtil;
        synchronized (PropertiesUtil.class) {
            if (e == null) {
                e = new PropertiesUtil(context);
            }
            propertiesUtil = e;
        }
        return propertiesUtil;
    }

    public String getValue(String key) {
        if (this.a != null) {
            return this.a.getProperty(key);
        }
        return null;
    }

    private static void a(InputStream ips, OutputStream ops) throws Exception {
        byte[] buf = new byte[1024];
        int len = ips.read(buf);
        while (len != -1) {
            ops.write(buf, 0, len);
            len = ips.read(buf);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0030 A[SYNTHETIC, Splitter:B:14:0x0030] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0035 A[SYNTHETIC, Splitter:B:17:0x0035] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x005b A[SYNTHETIC, Splitter:B:35:0x005b] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0060 A[SYNTHETIC, Splitter:B:38:0x0060] */
    /* JADX WARNING: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.io.File r9) {
        /*
        // Method dump skipped, instructions count: 115
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.utils.PropertiesUtil.a(java.io.File):void");
    }
}
