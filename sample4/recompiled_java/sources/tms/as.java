package tms;

import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.HashMap;
import java.util.Iterator;

public final class as extends BaseManager {
    private HashMap<String, SoftList> a = new HashMap<>(1);
    private SoftwareManager b;
    private IUpdateObserver c = new j(this);

    private static String a(SoftListType softListType) {
        switch (softListType.value()) {
            case 0:
                return UpdateConfig.WHITELIST_COMMON_NAME;
            case 1:
                return UpdateConfig.WHITELIST_UNUSUAL_NAME;
            case 2:
                return UpdateConfig.BLACKLIST_ROM_NAME;
            case 3:
                return UpdateConfig.BLACKLIST_WITHPLUGIN_NAME;
            case 4:
                return UpdateConfig.ROM_THIRDPART_NAME;
            case 5:
                return UpdateConfig.WHITELIST_ROM_NAME;
            default:
                return "";
        }
    }

    static /* synthetic */ void a(as asVar, SoftListType softListType) {
        if (softListType != null) {
            synchronized (asVar.a) {
                String softListType2 = softListType.toString();
                if (asVar.a.containsKey(softListType2)) {
                    asVar.a.put(softListType2, b(softListType2, a(softListType)));
                }
            }
        }
    }

    private boolean a(String str, SoftList softList) {
        SoftElementInfo softElementInfo;
        Iterator<SoftElementInfo> it = softList.vctSofts.iterator();
        while (true) {
            if (!it.hasNext()) {
                softElementInfo = null;
                break;
            }
            softElementInfo = it.next();
            if (softElementInfo.pkgname.equals(str) || (softElementInfo.pkgname.length() == 0 && a(str, softElementInfo.cert))) {
                break;
            }
        }
        if (softElementInfo == null) {
            return false;
        }
        if (softElementInfo.cert.length() == 0 || softElementInfo.pkgname.length() == 0) {
            return true;
        }
        return a(str, softElementInfo.cert);
    }

    private boolean a(String str, String str2) {
        AppEntity appInfo = this.b.getAppInfo(str, 16);
        return (appInfo == null || appInfo.get(AppEntity.KEY_SIGNATURE_MD5_STR) == null || !appInfo.get(AppEntity.KEY_SIGNATURE_MD5_STR).equals(str2)) ? false : true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0082 A[SYNTHETIC, Splitter:B:30:0x0082] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x008b A[SYNTHETIC, Splitter:B:36:0x008b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static QQPIM.SoftList b(java.lang.String r5, java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 162
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.as.b(java.lang.String, java.lang.String):QQPIM.SoftList");
    }

    public final boolean a(String str, SoftListType softListType) {
        SoftElementInfo softElementInfo;
        boolean a2;
        SoftList softList = this.a.get(softListType.toString());
        if (softList == null) {
            softList = b(softListType.toString(), a(softListType));
            if (softList == null) {
                return false;
            }
            this.a.put(softListType.toString(), softList);
        }
        switch (softListType.value()) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
                return a(str, softList);
            case 3:
                AppEntity appInfo = this.b.getAppInfo(str, 8);
                if (appInfo == null) {
                    a2 = false;
                } else {
                    long longValue = ((Long) appInfo.get(AppEntity.KEY_SIZE_LONG)).longValue();
                    Iterator<SoftElementInfo> it = softList.vctSofts.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            softElementInfo = it.next();
                            if (((long) softElementInfo.softsize) == longValue) {
                            }
                        } else {
                            softElementInfo = null;
                        }
                    }
                    a2 = (softElementInfo == null || (softElementInfo.pkgname.length() != 0 && !softElementInfo.pkgname.equals(str))) ? false : a(str, softElementInfo.cert);
                }
                return a2;
            default:
                return a(str, softList);
        }
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).removeObserver(4032);
        super.finalize();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 0;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = (SoftwareManager) ManagerCreator.getManager(SoftwareManager.class);
        ((UpdateManager) ManagerCreator.getManager(UpdateManager.class)).addObserver(4032, this.c);
    }
}
