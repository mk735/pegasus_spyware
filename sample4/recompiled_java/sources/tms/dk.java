package tms;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public final class dk implements IAutoBootHelper {
    private final ConcurrentHashMap<String, ArrayList<String>> a = new ConcurrentHashMap<>(new HashMap());
    private Context b;

    public dk(Context context) {
        this.b = context;
    }

    private boolean a(String str) {
        ArrayList<String> arrayList = this.a.get(str);
        if (arrayList == null || arrayList.size() <= 0) {
            return false;
        }
        Iterator<String> it = arrayList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            boolean z2 = (this.b.getPackageManager().getComponentEnabledSetting(new ComponentName(str, it.next())) != 2) & z;
            if (!z2) {
                return z2;
            }
            z = z2;
        }
        return z;
    }

    @Override // com.tencent.tmsecure.module.optimize.IAutoBootHelper
    public final ArrayList<IAutoBootHelper.Pair<String, Boolean>> getAllAutoBootApps() {
        ArrayList<String> arrayList;
        ArrayList<IAutoBootHelper.Pair<String, Boolean>> arrayList2 = new ArrayList<>();
        List<ResolveInfo> queryBroadcastReceivers = this.b.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 512);
        this.a.clear();
        for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
            String str = resolveInfo.activityInfo.packageName;
            String str2 = resolveInfo.activityInfo.name;
            if (!this.a.containsKey(str)) {
                arrayList = new ArrayList<>();
                this.a.put(str, arrayList);
            } else {
                arrayList = this.a.get(str);
            }
            if (!arrayList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        for (Map.Entry<String, ArrayList<String>> entry : this.a.entrySet()) {
            arrayList2.add(new IAutoBootHelper.Pair<>(entry.getKey(), Boolean.valueOf(a(entry.getKey()))));
        }
        return arrayList2;
    }

    @Override // com.tencent.tmsecure.module.optimize.IAutoBootHelper
    public final boolean setAutoBootEnable(String str, boolean z) {
        if (ScriptHelper.providerSupportPmRelative() || ScriptHelper.isSystemUid() || ScriptHelper.isRootGot()) {
            ArrayList<String> arrayList = this.a.get(str);
            ArrayList arrayList2 = new ArrayList();
            if (arrayList != null) {
                if (ScriptHelper.providerSupportPmRelative()) {
                    for (String str2 : arrayList) {
                        if (!ScriptHelper.provider().a(str, str2, z)) {
                            break;
                        }
                    }
                } else {
                    for (String str3 : arrayList) {
                        Object[] objArr = new Object[3];
                        objArr[0] = z ? "enable" : "disable";
                        objArr[1] = str;
                        objArr[2] = str3;
                        arrayList2.add(String.format("pm %s '%s/%s'", objArr));
                    }
                    ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayList2);
                }
            }
        }
        return a(str) == z;
    }
}
