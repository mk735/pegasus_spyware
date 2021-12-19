package com.network.i;

import android.util.Base64InputStream;
import android.util.Base64OutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Random;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    static Random f156a = new Random();

    public static Object a(String str) {
        try {
            return new ObjectInputStream(new Base64InputStream(new ByteArrayInputStream(str.getBytes()), 3)).readObject();
        } catch (Exception e) {
            return null;
        }
    }

    public static String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String a(Serializable serializable) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new Base64OutputStream(byteArrayOutputStream, 3));
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            return byteArrayOutputStream.toString("UTF-8");
        } catch (IOException e) {
            return null;
        }
    }

    public static String b() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    public static byte[] c() {
        byte[] bArr = new byte[32];
        f156a.nextBytes(bArr);
        return bArr;
    }
}
