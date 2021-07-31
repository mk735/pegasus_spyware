package com.tencent.tmsecure.module.software;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import com.tencent.tmsecure.common.BaseManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import tms.gl;

public final class SoftwareManager extends BaseManager {
    private gl a;

    public final boolean canMoveToSdcard(String str, boolean z) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str, z);
    }

    public final void clearUsageInfo() {
        if (!isExpired()) {
            this.a.a();
        }
    }

    public final AppEntity getApkInfo(AppEntity appEntity, int i) {
        return isExpired() ? new AppEntity() : this.a.b(appEntity, i);
    }

    public final AppEntity getApkInfo(String str, int i) {
        return isExpired() ? new AppEntity() : this.a.c(str, i);
    }

    public final ArrayList<AppEntity> getApkList(File file, String[] strArr, boolean z, int i) {
        return isExpired() ? new ArrayList<>() : this.a.a(file, strArr, z, i);
    }

    public final ArrayList<AppEntity> getApkList(File file, String[] strArr, boolean z, int i, boolean z2) {
        return isExpired() ? new ArrayList<>() : this.a.a(file, strArr, z, i, z2);
    }

    public final ArrayList<AppEntity> getApkListFromSDCard(String[] strArr, boolean z, int i) {
        return isExpired() ? new ArrayList<>() : this.a.a(strArr, z, i);
    }

    public final AppEntity getAppInfo(AppEntity appEntity, int i) {
        return isExpired() ? new AppEntity() : this.a.a(appEntity, i);
    }

    public final AppEntity getAppInfo(String str, int i) {
        return isExpired() ? new AppEntity() : this.a.b(str, i);
    }

    public final int getAppVersionStatus(String str, int i) {
        if (isExpired()) {
            return -2;
        }
        return this.a.a(str, i);
    }

    public final ArrayList<AppEntity> getAppsCanMovable(int i, int i2, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.a(i, i2, z);
    }

    public final ArrayList<AppEntity> getInstalledApp(int i, int i2) {
        return isExpired() ? new ArrayList<>() : this.a.a(i, i2);
    }

    public final SoftwareUseageInfo getUseageInfo(String str) {
        return isExpired() ? new SoftwareUseageInfo("", new Date(), new Date(), 0) : this.a.i(str);
    }

    public final ArrayList<SoftwareUseageInfo> getUseageInfo(List<String> list) {
        return isExpired() ? new ArrayList<>() : this.a.a(list);
    }

    public final void goToInstalledAppDetails(String str) {
        if (!isExpired()) {
            this.a.d(str);
        }
    }

    public final void installApp(File file) {
        if (!isExpired()) {
            this.a.a(file);
        }
    }

    public final void installApp(String str, Activity activity, int i) {
        if (!isExpired()) {
            this.a.a(str, activity, i);
        }
    }

    public final boolean installAppSilently(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.b(str);
    }

    public final boolean isInstalledSdcard(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.f(str);
    }

    public final boolean isPackageInstalled(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str);
    }

    public final boolean movePackageToExternal(String str) throws PackageManager.NameNotFoundException {
        if (isExpired()) {
            return false;
        }
        return this.a.h(str);
    }

    public final boolean movePackageToInteranl(String str) throws PackageManager.NameNotFoundException {
        if (isExpired()) {
            return false;
        }
        return this.a.g(str);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gl();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final boolean packageHasActiveAdmins(String str) {
        return this.a.j(str);
    }

    public final void refleshUsageInfo() {
        if (!isExpired()) {
            this.a.b();
        }
    }

    public final boolean startUpApp(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.e(str);
    }

    public final void uninstallApp(String str, Activity activity, int i) {
        if (!isExpired()) {
            this.a.b(str, activity, i);
        }
    }

    public final boolean uninstallAppSilently(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.c(str);
    }
}
