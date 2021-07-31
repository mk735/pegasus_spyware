package tms;

import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.Base64;

public final class ao {
    public static final String b = "password";
    public static final String c = "helper";
    public af a = new af("AntitheftProperty");

    public static final String c(String str) {
        if (str == null) {
            return null;
        }
        return Base64.encodeToString(TccCryptor.encrypt(TMSApplication.getApplicaionContext(), str.getBytes(), (byte[]) null), 0);
    }

    public final String a() {
        return this.a.a(c, (String) null);
    }

    public final String a(boolean z) {
        String a2 = this.a.a("password", (String) null);
        if (a2 == null) {
            return null;
        }
        if (z) {
            return a2;
        }
        return new String(TccCryptor.decrypt(TMSApplication.getApplicaionContext(), Base64.decode(a2.getBytes(), 0), null));
    }

    public final void a(String str) {
        if (str != null) {
            this.a.a("password", c(str), true);
        }
    }

    public final void b(String str) {
        this.a.a(c, str, true);
    }
}
