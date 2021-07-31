package tms;

import java.io.File;
import java.lang.reflect.Method;
import org.apache.commons.httpclient.cookie.CookieSpec;

/* access modifiers changed from: package-private */
public final class de {
    private Method a;
    private Method b;
    private boolean c;
    private boolean d;

    public de() {
        try {
            Class<?> cls = Class.forName("android.net.TrafficStats");
            this.a = cls.getDeclaredMethod("getUidRxBytes", Integer.TYPE);
            this.b = cls.getDeclaredMethod("getUidTxBytes", Integer.TYPE);
            this.c = true;
        } catch (Exception e) {
            this.c = false;
            e.printStackTrace();
        }
        if (!this.c) {
            this.d = new File("/proc/uid_stat").exists();
        }
    }

    private static long a(int i, String str, String str2) {
        String[] b2;
        String[] b3;
        long j = -1;
        File file = new File("/proc/uid_stat/" + i + CookieSpec.PATH_DELIM + str);
        File file2 = new File("/proc/uid_stat/" + i + CookieSpec.PATH_DELIM + str2);
        if (file.exists() && (b3 = v.b(file)) != null && b3.length > 0) {
            j = Long.parseLong(b3[0]);
        }
        return (!file2.exists() || (b2 = v.b(file2)) == null || b2.length <= 0) ? j : file.exists() ? j + Long.parseLong(b2[0]) : Long.parseLong(b2[0]);
    }

    public final long a(int i) {
        if (this.c) {
            try {
                return Long.valueOf(this.a.invoke(null, Integer.valueOf(i)).toString()).longValue();
            } catch (Exception e) {
                e.printStackTrace();
                return -1;
            }
        } else if (this.d) {
            return a(i, "tcp_rcv", "udp_rcv");
        } else {
            return -1;
        }
    }

    public final boolean a() {
        return this.d || this.c;
    }

    public final long b(int i) {
        if (this.c) {
            try {
                return Long.valueOf(this.b.invoke(null, Integer.valueOf(i)).toString()).longValue();
            } catch (Exception e) {
                e.printStackTrace();
                return -1;
            }
        } else if (this.d) {
            return a(i, "tcp_snd", "udp_snd");
        } else {
            return -1;
        }
    }
}
