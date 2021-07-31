package tms;

import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.RspTemplate;
import QQPIM.UrlCheckResponse;
import android.content.Context;
import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupConfig;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.Base64;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.StringUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.httpclient.cookie.CookieSpec;

public final class ha extends BaseManager {
    private static final String[] e = {"paipai.com", "tencent.com", "soso.com", "qq.com", "baidu.mobi", "baidu.com", "taobao.com", "kanshula.com.cn", "kanshu.la", "read.xxsy.net", "t.sina.cn", "sina.cn", "mop.com", "xs8.cn", "t.qunar.com", "qidian.com", "easou.com", "hongxiu.com", "ifeng.com", "google.com.hk", "google.com", "google.cn", "tianya.cn", "bbs.dospy.com", "58.com", "17k.com", "sogou.com", "weibo.com", "renren.com", "sohu.com", "163.com", "sina.com.cn"};
    private Context a;
    private String[] b;
    private LinkedHashMap<Long, UrlCheckResponse> c;
    private long d;

    /* access modifiers changed from: package-private */
    public class a {
        public String a;
        public int b;

        private a() {
        }

        /* synthetic */ a(ha haVar, byte b2) {
            this();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ad A[SYNTHETIC, Splitter:B:34:0x00ad] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b2 A[SYNTHETIC, Splitter:B:37:0x00b2] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c4 A[SYNTHETIC, Splitter:B:44:0x00c4] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00c9 A[SYNTHETIC, Splitter:B:47:0x00c9] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00db A[SYNTHETIC, Splitter:B:54:0x00db] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00e0 A[SYNTHETIC, Splitter:B:57:0x00e0] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00ec A[SYNTHETIC, Splitter:B:63:0x00ec] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f1 A[SYNTHETIC, Splitter:B:66:0x00f1] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(java.lang.String r9, tms.ha.a r10) {
        /*
        // Method dump skipped, instructions count: 334
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ha.a(java.lang.String, tms.ha$a):int");
    }

    private static String a(Context context, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < strArr.length - 1) {
            stringBuffer.append(strArr[i] + "|");
            i++;
        }
        stringBuffer.append(strArr[i]);
        byte[] encrypt = TccCryptor.encrypt(context, stringBuffer.toString().getBytes(), (byte[]) null);
        if (encrypt != null) {
            return Base64.encodeToString(encrypt, 0);
        }
        return null;
    }

    private void a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.d != 0 && currentTimeMillis - this.d >= 21600000) {
            Iterator<Long> it = this.c.keySet().iterator();
            while (it.hasNext()) {
                long longValue = it.next().longValue();
                this.d = longValue;
                if (currentTimeMillis - longValue < 21600000) {
                    break;
                }
                it.remove();
            }
            if (this.c.size() == 0) {
                this.d = 0;
            }
        }
    }

    private static String[] a(Context context, String str) {
        byte[] decrypt;
        if (str == null || (decrypt = TccCryptor.decrypt(context, Base64.decode(str, 0), null)) == null) {
            return null;
        }
        return new String(decrypt).split("\\|");
    }

    private static String c(String str) {
        int indexOf = str.indexOf("://");
        if (-1 != indexOf) {
            str = str.substring(indexOf + 3);
        }
        int indexOf2 = str.indexOf(CookieSpec.PATH_DELIM);
        if (-1 != indexOf2) {
            str = str.substring(0, indexOf2);
        }
        int indexOf3 = str.indexOf("?");
        if (-1 != indexOf3) {
            str = str.substring(0, indexOf3);
        }
        return str.toLowerCase();
    }

    public final UrlCheckResponse a(String str) {
        if (str == null || str.length() == 0) {
            return new UrlCheckResponse(str, -1, 0, 0, "");
        }
        String c2 = c(str);
        if (c2.length() != 0) {
            for (String str2 : this.b) {
                if (c2.endsWith(str2)) {
                    return new UrlCheckResponse(str, 0, 0, 0, "");
                }
            }
        }
        a();
        for (UrlCheckResponse urlCheckResponse : this.c.values()) {
            if (str.equalsIgnoreCase(urlCheckResponse.getUrl())) {
                return urlCheckResponse;
            }
        }
        AtomicReference<UrlCheckResponse> atomicReference = new AtomicReference<>();
        if (((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).checkUrl(str, atomicReference) != 0) {
            return new UrlCheckResponse(str, -1, 0, 0, "");
        }
        UrlCheckResponse urlCheckResponse2 = atomicReference.get();
        if (urlCheckResponse2 == null || urlCheckResponse2.url.length() == 0) {
            return new UrlCheckResponse(str, -1, 0, 0, "");
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.c.put(Long.valueOf(currentTimeMillis), urlCheckResponse2);
        if (this.d != 0) {
            return urlCheckResponse2;
        }
        this.d = currentTimeMillis;
        return urlCheckResponse2;
    }

    public final Map<String, UrlCheckResponse> a(List<String> list) {
        ArrayList<UrlCheckResponse> rspTemp;
        if (list == null || list.size() == 0) {
            return new HashMap(0);
        }
        int size = list.size();
        HashMap hashMap = new HashMap(size);
        ArrayList<String> arrayList = new ArrayList(1);
        boolean z = false;
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            String c2 = c(str);
            if (c2.length() != 0) {
                String[] strArr = this.b;
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (c2.endsWith(strArr[i2])) {
                        hashMap.put(str, new UrlCheckResponse(str, 0, 0, 0, ""));
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (z) {
                    z = false;
                }
            }
            a();
            Iterator<UrlCheckResponse> it = this.c.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = z;
                    break;
                }
                UrlCheckResponse next = it.next();
                if (str.equalsIgnoreCase(next.getUrl())) {
                    hashMap.put(str, next);
                    z = true;
                    break;
                }
            }
            if (z) {
                z = false;
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.size() == 0) {
            return hashMap;
        }
        AtomicReference<RspTemplate> atomicReference = new AtomicReference<>();
        int size2 = arrayList.size();
        ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).checkUrlEx(arrayList, atomicReference);
        HashMap hashMap2 = new HashMap(size2);
        for (String str2 : arrayList) {
            hashMap2.put(str2, new UrlCheckResponse(str2, -1, 0, 0, ""));
        }
        arrayList.clear();
        RspTemplate rspTemplate = atomicReference.get();
        if (rspTemplate == null || (rspTemp = rspTemplate.getRspTemp()) == null || rspTemp.size() == 0) {
            hashMap.putAll(hashMap2);
            return hashMap;
        }
        int size3 = rspTemp.size();
        for (int i3 = 0; i3 < size3; i3++) {
            UrlCheckResponse urlCheckResponse = rspTemp.get(i3);
            hashMap2.put(urlCheckResponse.url, urlCheckResponse);
            long currentTimeMillis = System.currentTimeMillis();
            this.c.put(Long.valueOf(currentTimeMillis), urlCheckResponse);
            if (this.d == 0) {
                this.d = currentTimeMillis;
            }
        }
        return hashMap;
    }

    public final int b(String str) {
        BrowserResult browserResult;
        a aVar = new a(this, (byte) 0);
        int a2 = a(str, aVar);
        if (a2 != 0) {
            return a2;
        }
        BrowserClient browserClient = new BrowserClient(13, "1.0.0", StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(this.a)), WupConfig.KEY_GUID, "ua");
        BrowserUrl browserUrl = new BrowserUrl(str, aVar.a, aVar.b);
        AtomicReference<BrowserResult> atomicReference = new AtomicReference<>();
        int browerCheck = ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).browerCheck(browserClient, browserUrl, atomicReference);
        if (browerCheck == 0 && (browserResult = atomicReference.get()) != null) {
            Log.i("checkApkUrl", browserResult.getCheckAdvise());
        }
        return browerCheck;
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        super.finalize();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 0;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = context;
        try {
            this.b = a(this.a, "fn7DR51xfDgi7Lhj70a+CpV57KhMEahaW0d1xQwGoC4NccjARG86lGHFDUdSH17jmnXBGPctbzUXqd0J0VzthugONZRgDs9dz+NHVb0sW+Hd6kcFghcq8ElvTFT6AmoB8082a60zuj2DvKXY25ZVOmNIGnArv6uG/FCY8SVQowql9jUyZgq7McRK8lIT2w2eLbIRT0EGGmWvV+QBtrpkW/tmsvR+LK1TnCdX6AgMNylJnELEyVoVY9Tk+oRQVkY4TF9QQNXFeADOWgDDmgKqgBDBbMYbGQGPV+TCT/1Zk0dVQ3betG6IqcJV38yR+MP1PVYa1JR5idMc5hoPxKpKYhgfBSVa+hXfouSG88wSRJiASrcOXOb5IWudeQqvE5FZeTYgAc4LFRxj6UF2La/jzJezxMrVaQ+i3/BCJlxSqF5UUOYJklVWHHEEsxZ8Z6LS");
            this.c = new LinkedHashMap<>();
            a(this.a, a(this.a, e));
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
