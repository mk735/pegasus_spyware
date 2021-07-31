package tms;

import QQPIM.LicenceCheckResult;
import android.util.Log;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.interfaces.RSAPublicKey;
import java.util.Calendar;
import java.util.Properties;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public final class f {
    private static volatile f a = null;
    private bo b;
    private Calendar c = Calendar.getInstance();
    private dg d;

    public class a {
        public a() {
        }
    }

    private f() {
        g();
    }

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (a == null) {
                a = new f();
            }
            fVar = a;
        }
        return fVar;
    }

    private static byte[] a(int i) {
        try {
            InputStream open = TMSApplication.getApplicaionContext().getAssets().open(i == 0 ? "licence.conf" : "licence" + i + ".conf");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
            Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
            instance.init(2, generateSecret);
            return instance.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void g() {
        int i = 0;
        while (true) {
            try {
                byte[] a2 = a(i);
                if (a2 == null) {
                    throw new RuntimeException("Certification file is missing! Please contact TMS(Tencent Mobile Secure) group.");
                } else if (TMSApplication.getSecureServiceClass() == null) {
                    throw new RuntimeException("Licence authentication needs a backgroundservice, you must pass a Service'Class while calling TMSApplication.init method.");
                } else {
                    RSAPublicKey i2 = i();
                    byte[] bArr = new byte[128];
                    System.arraycopy(a2, 0, bArr, 0, bArr.length);
                    byte[] a3 = cj.a(bArr, i2);
                    if (a3 == null) {
                        throw new RuntimeException("RSA decrypt error.");
                    }
                    byte[] bArr2 = new byte[(a2.length - 128)];
                    System.arraycopy(a2, 128, bArr2, 0, bArr2.length);
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a(bArr2, a3));
                    Properties properties = new Properties();
                    try {
                        properties.load(byteArrayInputStream);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    this.d = new dg(properties, TMSApplication.getApplicaionContext());
                    if (this.d.a()) {
                        h();
                        this.c.setTimeInMillis(System.currentTimeMillis());
                        return;
                    }
                    i++;
                }
            } catch (RuntimeException e2) {
                throw new RuntimeException("Invaild signature! Please contact TMS(Tencent Mobile Secure) group.");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x006a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void h() {
        /*
        // Method dump skipped, instructions count: 222
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.f.h():void");
    }

    private static RSAPublicKey i() {
        return cj.a(Base64.decode("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQ4Q0NRRGlsbUFjTWxiczVEQU5C\nZ2txaGtpRzl3MEJBUVVGQURCK01Rc3dDUVlEVlFRR0V3SkQKVGpFTE1Ba0dBMVVFQ0JNQ1IwUXhD\nekFKQmdOVkJBY1RBa2RhTVJJd0VBWURWUVFLRkFsMFpXTUlibU5sYm5ReApDekFKQmdOVkJBc1RB\nak5ITVE0d0RBWURWUVFERXdWdlltRnRZVEVrTUNJR0NTcUdTSWIzRFFFSkFSWVZiMkpoCmJXRjZa\nVzVuUUhSbGJtTmxiblF1WTI5dE1CNFhEVEV4TVRFeE5qRXhNVGN4TjFvWERURXlNREl5TkRFeE1U\nY3gKTjFvd2dZQXhDekFKQmdOVkJBWVRBa05PTVFzd0NRWURWUVFJRXdKSFJERUxNQWtHQTFVRUJ4\nTUNSMW94RURBTwpCZ05WQkFvVEIzUmxibU5sYm5ReEN6QUpCZ05WQkFzVEFqTkhNUkl3RUFZRFZR\nUURFd2x2WW1GdFlYcGxibWN4CkpEQWlCZ2txaGtpRzl3MEJDUUVXRlc5aVlXMWhlbVZ1WjBCMFpX\nNWpaVzUwTG1OdmJUQ0JuekFOQmdrcWhraUcKOXcwQkFRRUZBQU9CalFBd2dZa0NnWUVBd1kvV3FI\nV2NlRERkSm16anI3TlpSeS9qTllwS1NzVzExZngxaTIrQwpxTUE3NTJXb1d1bDZuSTB1MGZkWitk\nUzVUandRNkU0Qm13dXduVTVnQmJYK1VzQ2VHRHZaQVhQc045UEVWYnZTCkcvR25YclQrcTI2VUpP\nNHcrd3VNdmk5YWxkZHhhbkNKeXJ2ZWQ2NUdvMXhXUEErWGNHaVQxMndubjZtUHhyMnUKcVEwQ0F3\nRUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBUUVBblpzV3FpSmV5SC9sT0prSWN6L2ZidDN3MXFL\nRApGTXJ5cFVHVFN6Z3NONWNaMW9yOGlvVG5ENGRLaDdJN2ttbDRpcGNvMDF0enc2MGhLYUtwNG9G\nMnYrMEs2NGZDCnBEMG9EUlkrOGoyK2RsMmNxeHBsT0FYdDc1RWFKNW40MG1DZDdTN0VBS0d2Z2Na\naVhyV0Z1eUtCL2QvNTh3Qm4KOEFGUVJhTnBySXNOSHpxMkMwL0JXR1pTSnJicmhOWExFY0ZtL0Ru\nTG14ZEVNYWxPSXhnSkhGcEFOS2tadXBzdgo0L0lDVFhSL0RJaURjbXJjbDFkNkc2VmgyaUcwaS9v\nRDBHQnBMZlFPcEF0Vmx6Y2lxZnBsTkphcnpRUTZUVXRyCm5GRmVNVDNDc2t5VGJwYnp1R2dDdUxj\nQVR3cnRQd1BOOWZzQXYrSjRJZm0rZUNVVDVnZlorMSsyNHc9PQotLS0tLUVORCBDRVJUSUZJQ0FU\nRS0tLS0tCg==\n".getBytes(), 0));
    }

    public final void a(String str) {
        Log.d("LicMan", "strTimeSec=" + str);
        o.a(getClass());
        new af("licence").a("expiry.enc_seconds", str, true);
        h();
    }

    public final boolean a(Class<? extends BaseManager> cls) {
        if (this.d != null) {
            return this.d.a(cls);
        }
        return false;
    }

    public final boolean b() {
        boolean z;
        LicenceCheckResult licenceCheckResult = new LicenceCheckResult();
        int a2 = this.d.a(licenceCheckResult);
        if (licenceCheckResult.value == null || licenceCheckResult.value.strtime_sec == null || licenceCheckResult.value.strtime_sec.length() == 0) {
            switch (a2) {
                case -1:
                    return false;
                case 0:
                default:
                    return !e();
                case 1:
                    return true;
            }
        } else {
            switch (a2) {
                case -1:
                    a(licenceCheckResult.value.strtime_sec);
                    z = true;
                    break;
                case 0:
                    throw new RuntimeException("Unknown licence! Please contact TMS(Tencent Mobile Secure) group.");
                case 1:
                    a(licenceCheckResult.value.strtime_sec);
                    z = false;
                    break;
                default:
                    z = e();
                    break;
            }
            return !z;
        }
    }

    public final String c() {
        return this.d.b();
    }

    public final String d() {
        return this.d.c();
    }

    public final boolean e() {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(System.currentTimeMillis());
        if (!(instance.get(1) == this.c.get(1) && instance.get(6) == this.c.get(6))) {
            h();
        }
        this.c.setTimeInMillis(System.currentTimeMillis());
        return this.b.a();
    }

    public final boolean f() {
        return this.d.a();
    }
}
