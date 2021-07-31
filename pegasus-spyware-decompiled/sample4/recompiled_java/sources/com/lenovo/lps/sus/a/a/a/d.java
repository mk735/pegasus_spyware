package com.lenovo.lps.sus.a.a.a;

import com.lenovo.lps.sus.a.a.b.c;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class d implements b {
    public static final String c = "HmacSHA1";

    public static String a(String str, String str2) {
        try {
            d dVar = new d();
            return dVar.a(dVar.a(str.getBytes(b.a), str2)).trim();
        } catch (Exception e) {
            throw new Exception("make sign error happen!", e);
        }
    }

    @Override // com.lenovo.lps.sus.a.a.a.b
    public String a() {
        return a.BASE64.a();
    }

    @Override // com.lenovo.lps.sus.a.a.a.b
    public String a(String str) {
        try {
            return c.a(str, b.a);
        } catch (Exception e) {
            throw new Exception("BASE64 encode fail");
        }
    }

    public String a(byte[] bArr) {
        return new String(c.a(bArr));
    }

    public byte[] a(byte[] bArr, String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(b(str.getBytes()), c);
        Mac instance = Mac.getInstance(secretKeySpec.getAlgorithm());
        instance.init(secretKeySpec);
        return instance.doFinal(bArr);
    }

    public String b() {
        return a(KeyGenerator.getInstance(c).generateKey().getEncoded());
    }

    @Override // com.lenovo.lps.sus.a.a.a.b
    public String b(String str) {
        try {
            return c.b(str, b.a);
        } catch (Exception e) {
            throw new Exception("BASE64 decode fail");
        }
    }

    public byte[] b(byte[] bArr) {
        return c.b(bArr);
    }
}
