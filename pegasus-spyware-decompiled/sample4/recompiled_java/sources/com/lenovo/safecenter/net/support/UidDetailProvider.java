package com.lenovo.safecenter.net.support;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.lenovo.safecenter.R;

public class UidDetailProvider {
    private final Context a;
    private final SparseArray<UidDetail> b = new SparseArray<>();

    public UidDetailProvider(Context context) {
        this.a = context.getApplicationContext();
    }

    public synchronized void clearCache() {
        this.b.clear();
    }

    public synchronized UidDetail getUidDetail(int uid, boolean blocking) {
        UidDetail detail;
        int length = 0;
        synchronized (this) {
            Resources res = this.a.getResources();
            PackageManager pm = this.a.getPackageManager();
            detail = new UidDetail();
            detail.label = pm.getNameForUid(uid);
            detail.icon = pm.getDefaultActivityIcon();
            switch (uid) {
                case -5:
                    detail.label = res.getString(TrafficStatsService.getTetheringLabel((ConnectivityManager) this.a.getSystemService("connectivity")));
                    detail.icon = pm.getDefaultActivityIcon();
                    this.b.put(uid, detail);
                    break;
                case -4:
                    detail.label = res.getString(R.string.data_usage_uninstalled_apps);
                    detail.icon = pm.getDefaultActivityIcon();
                    this.b.put(uid, detail);
                    break;
                case 1000:
                    detail.label = res.getString(R.string.process_kernel_label);
                    detail.icon = pm.getDefaultActivityIcon();
                    this.b.put(uid, detail);
                    break;
                default:
                    String[] packageNames = pm.getPackagesForUid(uid);
                    if (packageNames != null) {
                        length = packageNames.length;
                    }
                    if (length == 1) {
                        try {
                            ApplicationInfo info = pm.getApplicationInfo(packageNames[0], 0);
                            detail.label = info.loadLabel(pm).toString();
                            detail.icon = info.loadIcon(pm);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    } else if (length > 1) {
                        detail.detailLabels = new CharSequence[length];
                        for (int i = 0; i < length; i++) {
                            String packageName = packageNames[i];
                            PackageInfo packageInfo = pm.getPackageInfo(packageName, 0);
                            ApplicationInfo appInfo = pm.getApplicationInfo(packageName, 0);
                            detail.detailLabels[i] = appInfo.loadLabel(pm).toString();
                            if (packageInfo.sharedUserLabel != 0) {
                                detail.label = pm.getText(packageName, packageInfo.sharedUserLabel, packageInfo.applicationInfo).toString();
                                detail.icon = appInfo.loadIcon(pm);
                            }
                        }
                    }
                    if (TextUtils.isEmpty(detail.label)) {
                        detail.label = Integer.toString(uid);
                    }
                    this.b.put(uid, detail);
                    break;
            }
        }
        return detail;
    }
}
