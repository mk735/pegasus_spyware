package org.apache.commons.httpclient.auth;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.httpclient.util.EncodingUtil;

/* compiled from: NTLM */
final class a {
    private byte[] a;
    private int b = 0;
    private String c = "ASCII";

    a() {
    }

    public final String a(String message, String username, String password, String host, String domain) throws AuthenticationException {
        if (message == null || message.trim().equals("")) {
            return a(host, domain);
        }
        return a(username, password, host, domain, a(message));
    }

    private static Cipher a(byte[] key) throws AuthenticationException {
        NoSuchPaddingException e;
        InvalidKeyException e2;
        NoSuchAlgorithmException e3;
        try {
            Cipher ecipher = Cipher.getInstance("DES/ECB/NoPadding");
            byte[] key2 = {(byte) ((key[0] >> 1) & 255), (byte) ((((key[0] & 1) << 6) | (((key[1] & 255) >> 2) & 255)) & 255), (byte) ((((key[1] & 3) << 5) | (((key[2] & 255) >> 3) & 255)) & 255), (byte) ((((key[2] & 7) << 4) | (((key[3] & 255) >> 4) & 255)) & 255), (byte) ((((key[3] & 15) << 3) | (((key[4] & 255) >> 5) & 255)) & 255), (byte) ((((key[4] & 31) << 2) | (((key[5] & 255) >> 6) & 255)) & 255), (byte) ((((key[5] & 63) << 1) | (((key[6] & 255) >> 7) & 255)) & 255), (byte) (key[6] & Byte.MAX_VALUE)};
            for (int i = 0; i < key2.length; i++) {
                key2[i] = (byte) (key2[i] << 1);
            }
            try {
                ecipher.init(1, new SecretKeySpec(key2, "DES"));
                return ecipher;
            } catch (NoSuchAlgorithmException e4) {
                e3 = e4;
                throw new AuthenticationException("DES encryption is not available.", e3);
            } catch (InvalidKeyException e5) {
                e2 = e5;
                throw new AuthenticationException("Invalid key for DES encryption.", e2);
            } catch (NoSuchPaddingException e6) {
                e = e6;
                throw new AuthenticationException("NoPadding option for DES is not available.", e);
            }
        } catch (NoSuchAlgorithmException e7) {
            e3 = e7;
            throw new AuthenticationException("DES encryption is not available.", e3);
        } catch (InvalidKeyException e8) {
            e2 = e8;
            throw new AuthenticationException("Invalid key for DES encryption.", e2);
        } catch (NoSuchPaddingException e9) {
            e = e9;
            throw new AuthenticationException("NoPadding option for DES is not available.", e);
        }
    }

    private static byte[] a(byte[] key, byte[] bytes) throws AuthenticationException {
        try {
            return a(key).doFinal(bytes);
        } catch (IllegalBlockSizeException e) {
            throw new AuthenticationException("Invalid block size for DES encryption.", e);
        } catch (BadPaddingException e2) {
            throw new AuthenticationException("Data not padded correctly for DES encryption.", e2);
        }
    }

    private void a(int length) {
        this.a = new byte[length];
        this.b = 0;
    }

    private void a(byte b2) {
        this.a[this.b] = b2;
        this.b++;
    }

    private void b(byte[] bytes) {
        for (byte b2 : bytes) {
            this.a[this.b] = b2;
            this.b++;
        }
    }

    private String a() {
        byte[] resp;
        if (this.a.length > this.b) {
            byte[] tmp = new byte[this.b];
            for (int i = 0; i < this.b; i++) {
                tmp[i] = this.a[i];
            }
            resp = tmp;
        } else {
            resp = this.a;
        }
        return EncodingUtil.getAsciiString(Base64.encodeBase64(resp));
    }

    public final String a(String host, String domain) {
        String host2 = host.toUpperCase();
        String domain2 = domain.toUpperCase();
        byte[] hostBytes = EncodingUtil.getBytes(host2, "ASCII");
        byte[] domainBytes = EncodingUtil.getBytes(domain2, "ASCII");
        a(hostBytes.length + 32 + domainBytes.length);
        b(EncodingUtil.getBytes("NTLMSSP", "ASCII"));
        a((byte) 0);
        a((byte) 1);
        a((byte) 0);
        a((byte) 0);
        a((byte) 0);
        a((byte) 6);
        a((byte) 82);
        a((byte) 0);
        a((byte) 0);
        byte[] domLen = b(domainBytes.length);
        a(domLen[0]);
        a(domLen[1]);
        a(domLen[0]);
        a(domLen[1]);
        byte[] domOff = b(hostBytes.length + 32);
        a(domOff[0]);
        a(domOff[1]);
        a((byte) 0);
        a((byte) 0);
        byte[] hostLen = b(hostBytes.length);
        a(hostLen[0]);
        a(hostLen[1]);
        a(hostLen[0]);
        a(hostLen[1]);
        byte[] hostOff = b(32);
        a(hostOff[0]);
        a(hostOff[1]);
        a((byte) 0);
        a((byte) 0);
        b(hostBytes);
        b(domainBytes);
        return a();
    }

    public static byte[] a(String message) {
        byte[] msg = Base64.decodeBase64(EncodingUtil.getBytes(message, "ASCII"));
        byte[] nonce = new byte[8];
        for (int i = 0; i < 8; i++) {
            nonce[i] = msg[i + 24];
        }
        return nonce;
    }

    public final String a(String user, String password, String host, String domain, byte[] nonce) throws AuthenticationException {
        String domain2 = domain.toUpperCase();
        String host2 = host.toUpperCase();
        String user2 = user.toUpperCase();
        byte[] domainBytes = EncodingUtil.getBytes(domain2, "ASCII");
        byte[] hostBytes = EncodingUtil.getBytes(host2, "ASCII");
        byte[] userBytes = EncodingUtil.getBytes(user2, this.c);
        int domainLen = domainBytes.length;
        int hostLen = hostBytes.length;
        int userLen = userBytes.length;
        int finalLength = domainLen + 88 + userLen + hostLen;
        a(finalLength);
        b(EncodingUtil.getBytes("NTLMSSP", "ASCII"));
        a((byte) 0);
        a((byte) 3);
        a((byte) 0);
        a((byte) 0);
        a((byte) 0);
        b(b(24));
        b(b(24));
        b(b(finalLength - 24));
        a((byte) 0);
        a((byte) 0);
        b(b(0));
        b(b(0));
        b(b(finalLength));
        a((byte) 0);
        a((byte) 0);
        b(b(domainLen));
        b(b(domainLen));
        b(b(64));
        a((byte) 0);
        a((byte) 0);
        b(b(userLen));
        b(b(userLen));
        b(b(domainLen + 64));
        a((byte) 0);
        a((byte) 0);
        b(b(hostLen));
        b(b(hostLen));
        b(b(domainLen + 64 + userLen));
        for (int i = 0; i < 6; i++) {
            a((byte) 0);
        }
        b(b(finalLength));
        a((byte) 0);
        a((byte) 0);
        a((byte) 6);
        a((byte) 82);
        a((byte) 0);
        a((byte) 0);
        b(domainBytes);
        b(userBytes);
        b(hostBytes);
        byte[] bytes = EncodingUtil.getBytes(password.toUpperCase(), this.c);
        byte[] bArr = new byte[7];
        byte[] bArr2 = new byte[7];
        int length = bytes.length;
        if (length > 7) {
            length = 7;
        }
        int i2 = 0;
        while (i2 < length) {
            bArr[i2] = bytes[i2];
            i2++;
        }
        for (int i3 = i2; i3 < 7; i3++) {
            bArr[i3] = 0;
        }
        int length2 = bytes.length;
        if (length2 > 14) {
            length2 = 14;
        }
        int i4 = 7;
        while (i4 < length2) {
            bArr2[i4 - 7] = bytes[i4];
            i4++;
        }
        for (int i5 = i4; i5 < 14; i5++) {
            bArr2[i5 - 7] = 0;
        }
        byte[] bArr3 = {75, 71, 83, 33, 64, 35, 36, 37};
        byte[] a2 = a(bArr, bArr3);
        byte[] a3 = a(bArr2, bArr3);
        byte[] bArr4 = new byte[21];
        for (int i6 = 0; i6 < a2.length; i6++) {
            bArr4[i6] = a2[i6];
        }
        for (int i7 = 0; i7 < a3.length; i7++) {
            bArr4[i7 + 8] = a3[i7];
        }
        for (int i8 = 0; i8 < 5; i8++) {
            bArr4[i8 + 16] = 0;
        }
        byte[] bArr5 = new byte[24];
        byte[] bArr6 = new byte[7];
        byte[] bArr7 = new byte[7];
        byte[] bArr8 = new byte[7];
        for (int i9 = 0; i9 < 7; i9++) {
            bArr6[i9] = bArr4[i9];
        }
        for (int i10 = 0; i10 < 7; i10++) {
            bArr7[i10] = bArr4[i10 + 7];
        }
        for (int i11 = 0; i11 < 7; i11++) {
            bArr8[i11] = bArr4[i11 + 14];
        }
        byte[] a4 = a(bArr6, nonce);
        byte[] a5 = a(bArr7, nonce);
        byte[] a6 = a(bArr8, nonce);
        for (int i12 = 0; i12 < 8; i12++) {
            bArr5[i12] = a4[i12];
        }
        for (int i13 = 0; i13 < 8; i13++) {
            bArr5[i13 + 8] = a5[i13];
        }
        for (int i14 = 0; i14 < 8; i14++) {
            bArr5[i14 + 16] = a6[i14];
        }
        b(bArr5);
        return a();
    }

    private static byte[] b(int num) {
        byte[] val = new byte[2];
        String hex = Integer.toString(num, 16);
        while (hex.length() < 4) {
            hex = new StringBuffer().append("0").append(hex).toString();
        }
        String low = hex.substring(2, 4);
        String high = hex.substring(0, 2);
        val[0] = (byte) Integer.parseInt(low, 16);
        val[1] = (byte) Integer.parseInt(high, 16);
        return val;
    }

    public final void b(String credentialCharset) {
        this.c = credentialCharset;
    }
}
