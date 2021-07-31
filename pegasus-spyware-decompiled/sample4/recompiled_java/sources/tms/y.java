package tms;

import QQPIM.ConnectType;
import QQPIM.EModelID;
import android.os.Looper;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.exception.NetworkOnMainThreadException;
import com.tencent.tmsecure.utils.NetworkUtil;
import com.tencent.tmsecure.utils.WifiUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.InflaterInputStream;
import org.apache.commons.httpclient.cookie.CookieSpec;

public final class y {
    public static final String a = "GET";
    public static final String b = "POST";
    private static volatile boolean n = false;
    private static volatile String o = null;
    private static volatile boolean p = false;
    private static volatile boolean q = false;
    private static volatile long r = 0;
    private String c;
    private String d = "GET";
    private HttpURLConnection e;
    private byte[] f;
    private int g = -1;
    private Hashtable<String, String> h = new Hashtable<>(0);
    private boolean i = false;
    private boolean j = true;
    private byte k = 0;
    private byte l = 0;
    private byte m = 0;

    /* access modifiers changed from: package-private */
    public class a implements WifiUtil.IWifiApproveCheckCallBack {
        private a() {
        }

        /* synthetic */ a(y yVar, byte b) {
            this();
        }

        @Override // com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack
        public final void onWifiApproveCheckFinished(boolean z, boolean z2) {
            if (y.o != null && y.o.equals(WifiUtil.getSSID())) {
                if (!z2) {
                    boolean unused = y.n = z;
                } else {
                    boolean unused2 = y.n = true;
                }
                boolean unused3 = y.q = z2;
                boolean unused4 = y.p = false;
            }
        }
    }

    private y(String str) {
        this.c = str;
    }

    public static synchronized y a(String str) throws NetWorkException {
        y yVar;
        synchronized (y.class) {
            if (!NetworkUtil.canNetworkOnMainThread() && Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()) {
                throw new NetworkOnMainThreadException();
            } else if (str == null || str.length() == 0) {
                throw new NetWorkException((int) ErrorCode.ERR_OPEN_CONNECTION, "url is null!");
            } else {
                yVar = new y(str);
                ConnectType networkType = NetworkUtil.getNetworkType();
                if (ConnectType.CT_NONE == networkType) {
                    throw new NetWorkException(-1052, "no connecition!");
                }
                yVar.a(yVar.c, networkType);
            }
        }
        return yVar;
    }

    public static synchronized y a(y yVar) throws NetWorkException {
        y yVar2;
        synchronized (y.class) {
            ConnectType networkType = NetworkUtil.getNetworkType();
            yVar2 = new y(yVar.l());
            if (ConnectType.CT_NONE == networkType) {
                throw new NetWorkException(-1052, "no connection!");
            }
            yVar2.a(yVar2.c, networkType);
            yVar2.b(yVar.a());
            yVar2.f = yVar.b();
            yVar2.a(yVar.h);
        }
        return yVar2;
    }

    private void a(String str, ConnectType connectType) throws NetWorkException {
        try {
            m();
            if (ConnectType.CT_NONE != connectType) {
                if (ConnectType.CT_GPRS_WAP == connectType) {
                    this.e = (HttpURLConnection) new URL(str).openConnection(new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(NetworkUtil.getProxyHost(), NetworkUtil.getProxyPort())));
                    this.i = true;
                } else {
                    if (ConnectType.CT_WIFI == connectType && "com.tencent.qqpimsecure".equals(TMSApplication.getApplicaionContext().getPackageName())) {
                        String ssid = WifiUtil.getSSID();
                        if (o == null || !o.equals(ssid) || (System.currentTimeMillis() - r > 5000 && !p)) {
                            n = false;
                            p = true;
                            o = ssid;
                            WifiUtil.needWifiApprove(new a(this, (byte) 0));
                        } else if (n && !p) {
                            p = true;
                            WifiUtil.needWifiApprove(new a(this, (byte) 0));
                        }
                        r = System.currentTimeMillis();
                    }
                    this.e = (HttpURLConnection) new URL(str).openConnection();
                    this.i = false;
                }
                this.e.setReadTimeout(EModelID._EMID_QQPim_Begin);
                this.e.setConnectTimeout(EModelID._EMID_QQPim_Begin);
            }
        } catch (IllegalArgumentException e2) {
            throw new NetWorkException(-1057, "IllegalArgumentException : " + e2.getMessage());
        } catch (SecurityException e3) {
            throw new NetWorkException(-1058, "SecurityException: " + e3.getMessage());
        } catch (UnsupportedOperationException e4) {
            throw new NetWorkException(-1059, "UnsupportedOperationException: " + e4.getMessage());
        } catch (IOException e5) {
            throw new NetWorkException(-1056, "IOException : " + e5.getMessage());
        }
    }

    private static byte[] a(InputStream inputStream) throws NetWorkException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        byte[] bArr = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        bufferedInputStream.close();
                        byteArrayOutputStream.close();
                        return byteArray;
                    } catch (Exception e2) {
                        throw new NetWorkException(-56, "get Bytes from inputStream: " + e2.getMessage());
                    }
                }
            } catch (IOException e3) {
                throw new NetWorkException(-56, "get Bytes from inputStream when read buffer: " + e3.getMessage());
            }
        }
    }

    private static String[] d(String str) {
        String[] strArr = new String[2];
        int indexOf = str.indexOf("://");
        if (-1 != indexOf) {
            str = str.substring(indexOf + 3);
        }
        int indexOf2 = str.indexOf(CookieSpec.PATH_DELIM);
        if (-1 != indexOf2) {
            strArr[0] = str.substring(0, indexOf2);
            strArr[1] = str.substring(indexOf2);
        } else {
            strArr[0] = str;
            strArr[1] = "";
        }
        return strArr;
    }

    private int p() throws NetWorkException {
        f();
        a(this.c, NetworkUtil.getNetworkType());
        b(this.d);
        if ("POST".equalsIgnoreCase(this.d) && this.f != null) {
            this.f = this.f;
        }
        b(this.h);
        return c();
    }

    public final int a(boolean z, AtomicReference<byte[]> atomicReference) throws NetWorkException {
        InputStream inputStream;
        if (this.e != null) {
            if (this.g == 200 || this.g == 206) {
                if (z) {
                    try {
                        inputStream = new InflaterInputStream(this.e.getInputStream());
                    } catch (Exception e2) {
                        throw new NetWorkException(-4002, "get response exception : " + e2.getMessage());
                    }
                } else {
                    inputStream = this.e.getInputStream();
                }
                atomicReference.set(a(inputStream));
                return 0;
            }
        }
        return ErrorCode.ERR_RESPONSE;
    }

    public final String a() {
        return this.d;
    }

    public final void a(String str, String str2) {
        if (str != null && str2 != null && this.e != null) {
            this.e.setRequestProperty(str, str2);
            this.h.put(str, str2);
        }
    }

    public final void a(Hashtable<String, String> hashtable) {
        if (!(this.e == null || hashtable == null)) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                a(entry.getKey(), entry.getValue());
            }
        }
    }

    public final void a(byte[] bArr) {
        this.f = bArr;
    }

    public final void b(String str) {
        this.d = str;
        if ("GET".equalsIgnoreCase(str)) {
            this.d = "GET";
        } else if ("POST".equalsIgnoreCase(str)) {
            this.d = "POST";
        }
    }

    public final void b(Hashtable<String, String> hashtable) {
        if (!(hashtable == null || hashtable.size() == 0 || this.e == null)) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.e.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    public final byte[] b() {
        return this.f;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0397, code lost:
        if (r11.g == 206) goto L_0x03ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x039b, code lost:
        if (r11.g == 200) goto L_0x03ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x039d, code lost:
        r0 = r11.m;
        r11.m = (byte) (r0 + 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x03a4, code lost:
        if (r0 >= 2) goto L_0x03c3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x03a6, code lost:
        if (r1 != -1) goto L_0x03bd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x03b4, code lost:
        if ("true".equals(java.lang.System.getProperty("http.keepAlive")) == false) goto L_0x03bd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x03b6, code lost:
        java.lang.System.setProperty("http.keepAlive", org.apache.commons.httpclient.HttpState.PREEMPTIVE_DEFAULT);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0040, code lost:
        r11.g = r11.e.getResponseCode();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x03ee, code lost:
        throw new com.tencent.tmsecure.exception.NetWorkException(r11.g + r1, "response code is unnormal: " + r11.g + " SDK Version:" + com.tencent.tmsecure.utils.SDKUtil.getSDKVersion());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004c, code lost:
        if (r11.g < 301) goto L_0x0127;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:?, code lost:
        return p();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r11.g > 305) goto L_0x0127;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:?, code lost:
        return p();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0054, code lost:
        r0 = r11.k;
        r11.k = (byte) (r0 + 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:190:?, code lost:
        return p();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:191:?, code lost:
        return r11.g;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005b, code lost:
        if (r0 >= 2) goto L_0x0393;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x005d, code lost:
        r11.c = j();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0129, code lost:
        if (r11.g != 200) goto L_0x0393;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x012b, code lost:
        r0 = i();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0131, code lost:
        if (r11.i == false) goto L_0x0393;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0133, code lost:
        if (r0 == null) goto L_0x0393;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x013f, code lost:
        if (r0.toLowerCase().indexOf("vnd.wap.wml") == -1) goto L_0x0393;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0141, code lost:
        r0 = r11.l;
        r11.l = (byte) (r0 + 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0148, code lost:
        if (r0 >= 1) goto L_0x0393;
     */
    /* JADX WARNING: Removed duplicated region for block: B:101:0x026e  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0274  */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x029e  */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x02a4  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x02ce  */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x02d4  */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x02fe  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0304  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x032e  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x0334  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x035e  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0364  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x011e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0150  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x020e  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0214  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x023e  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0244  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int c() throws com.tencent.tmsecure.exception.NetWorkException {
        /*
        // Method dump skipped, instructions count: 1039
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.y.c():int");
    }

    public final String c(String str) throws NetWorkException {
        try {
            return this.e.getHeaderField(str);
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get header field: " + e2.getMessage());
        }
    }

    public final InputStream d() throws NetWorkException {
        try {
            return this.e.getInputStream();
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get inputStream: " + e2.getMessage());
        }
    }

    public final int e() {
        return this.g;
    }

    public final void f() {
        if (this.e != null) {
            this.e.disconnect();
            this.e = null;
        }
    }

    public final long g() throws NetWorkException {
        String c2 = c("Content-Range");
        if (c2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(c2.substring(c2.lastIndexOf(47) + 1).trim());
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get breakpoint total size: " + e2.getMessage());
        }
    }

    public final long h() throws NetWorkException {
        String c2 = c("content-length");
        if (c2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(c2.trim());
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get content length: " + e2.getMessage());
        }
    }

    public final String i() throws NetWorkException {
        try {
            return this.e.getHeaderField("Content-Type");
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get content type: " + e2.getMessage());
        }
    }

    public final String j() throws NetWorkException {
        try {
            return this.e.getHeaderField("Location");
        } catch (Exception e2) {
            throw new NetWorkException(-56, "get redirect url: " + e2.getMessage());
        }
    }

    public final boolean k() {
        return this.i;
    }

    public final String l() {
        return this.c;
    }

    public final String m() {
        String host = this.e != null ? this.e.getURL().getHost() : d(this.c)[0];
        if ((host == null || host.length() == 0) && this.e == null) {
            host = d(this.c)[0];
        }
        try {
            InetAddress byName = InetAddress.getByName(host);
            if (byName != null) {
                return byName.getHostAddress();
            }
        } catch (UnknownHostException e2) {
            e2.printStackTrace();
        }
        return "";
    }
}
