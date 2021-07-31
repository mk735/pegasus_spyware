package tms;

import java.security.interfaces.RSAPublicKey;
import javax.crypto.Cipher;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;

/* access modifiers changed from: package-private */
public final class cj {
    public static RSAPublicKey a(byte[] bArr) {
        try {
            return (RSAPublicKey) X509Certificate.getInstance(bArr).getPublicKey();
        } catch (CertificateException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] a(byte[] bArr, RSAPublicKey rSAPublicKey) {
        if (rSAPublicKey == null) {
            return null;
        }
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, rSAPublicKey);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
