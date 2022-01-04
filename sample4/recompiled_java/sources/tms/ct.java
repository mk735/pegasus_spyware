package tms;

import android.content.Intent;
import android.text.TextUtils;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import java.io.ByteArrayInputStream;

/* access modifiers changed from: package-private */
public final class ct implements ba {
    private final String a = "0c";
    private final String b = "01";
    private final String c = "03";
    private final String d = "00";
    private Intent e;
    private a f;

    /* access modifiers changed from: package-private */
    public static final class a {
        String a = null;
        String b;
        String c;

        a() {
        }
    }

    public ct(Intent intent) {
        this.e = intent;
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'A' && c2 <= 'F') {
            return (c2 - 'A') + 10;
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        throw new RuntimeException("invalid hex char '" + c2 + "'");
    }

    private boolean a(ByteArrayInputStream byteArrayInputStream) {
        byteArrayInputStream.reset();
        while (byteArrayInputStream.available() > 0) {
            String f2 = f(byteArrayInputStream);
            if ("0c".equals(f2)) {
                this.f.b = "http://" + new String(a(e(byteArrayInputStream)));
            } else if ("01".equals(f2)) {
                this.f.c = new String(a(e(byteArrayInputStream)));
            }
        }
        return TextUtils.isEmpty(this.f.c);
    }

    private static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((a(str.charAt(i)) << 4) | a(str.charAt(i + 1)));
        }
        return bArr;
    }

    private boolean b(ByteArrayInputStream byteArrayInputStream) {
        byteArrayInputStream.reset();
        while (byteArrayInputStream.available() > 0) {
            this.f.c = new String(a(e(byteArrayInputStream)));
        }
        return TextUtils.isEmpty(this.f.c);
    }

    private boolean c(ByteArrayInputStream byteArrayInputStream) {
        StringBuilder sb = new StringBuilder();
        String str = "";
        byteArrayInputStream.reset();
        while (byteArrayInputStream.available() > 0) {
            String f2 = f(byteArrayInputStream);
            if (f2.equals("03")) {
                String str2 = new String(a(d(byteArrayInputStream)));
                sb.append(str2);
                if (str.equals("0c")) {
                    this.f.b = "http://" + str2;
                } else if (str.equals("01")) {
                    this.f.c = str2;
                }
            } else {
                str = f2;
            }
        }
        if (TextUtils.isEmpty(this.f.c)) {
            this.f.c = sb.toString();
        }
        return TextUtils.isEmpty(this.f.c);
    }

    private static String d(ByteArrayInputStream byteArrayInputStream) {
        if (byteArrayInputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (byteArrayInputStream.available() > 0) {
            String f2 = f(byteArrayInputStream);
            if (f2.equals("00")) {
                break;
            }
            sb.append(f2);
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:5:0x0015  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String e(java.io.ByteArrayInputStream r3) {
        /*
            if (r3 != 0) goto L_0x0004
            r0 = 0
        L_0x0003:
            return r0
        L_0x0004:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L_0x0009:
            java.lang.String r1 = f(r3)
            java.lang.String r2 = "03"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x001b
            int r1 = r3.available()
            if (r1 > 0) goto L_0x0009
        L_0x001b:
            java.lang.String r1 = f(r3)
            java.lang.String r2 = "00"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L_0x0031
            int r2 = r3.available()
            if (r2 <= 0) goto L_0x0031
            r0.append(r1)
            goto L_0x001b
        L_0x0031:
            java.lang.String r0 = r0.toString()
            goto L_0x0003
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ct.e(java.io.ByteArrayInputStream):java.lang.String");
    }

    private static String f(ByteArrayInputStream byteArrayInputStream) {
        if (byteArrayInputStream == null) {
            return null;
        }
        int read = byteArrayInputStream.read();
        StringBuilder sb = new StringBuilder(2);
        sb.append("0123456789abcdef".charAt((read >> 4) & 15));
        sb.append("0123456789abcdef".charAt(read & 15));
        return sb.toString().toLowerCase();
    }

    @Override // tms.ba
    public final String a() {
        if (this.f == null) {
            return null;
        }
        a aVar = this.f;
        return aVar.c + aVar.b;
    }

    @Override // tms.ba
    public final void a(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        this.f = new a();
        if (!a(byteArrayInputStream) && !b(byteArrayInputStream) && !c(byteArrayInputStream)) {
            this.f = null;
        }
    }

    @Override // tms.ba
    public final String b() {
        if (this.f == null) {
            return null;
        }
        a aVar = this.f;
        return aVar.a == null ? aVar.b : aVar.a;
    }

    @Override // tms.ba
    public final SmsEntity c() {
        byte[] byteArrayExtra = this.e.getByteArrayExtra(SettingUtil.DATA);
        if (byteArrayExtra == null || SDKUtil.getSDKVersion() <= 3) {
            return null;
        }
        a(byteArrayExtra);
        SmsEntity smsEntity = new SmsEntity();
        smsEntity.phonenum = b();
        smsEntity.body = a();
        smsEntity.type = 1;
        smsEntity.protocolType = 2;
        smsEntity.raw = this.e;
        return smsEntity;
    }
}
