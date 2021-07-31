package com.lenovo.install;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageParser;
import android.content.pm.PermissionInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.lenovo.safecenter.support.AppInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class PackageUtil {
    public static final String INTENT_ATTR_APPLICATION_INFO = "com.android.packageinstaller.applicationInfo";
    public static final String INTENT_ATTR_INSTALL_STATUS = "com.android.packageinstaller.installStatus";
    public static final String INTENT_ATTR_PACKAGE_NAME = "com.android.packageinstaller.PackageName";
    public static final String INTENT_ATTR_PERMISSIONS_LIST = "com.android.packageinstaller.PermissionsList";
    public static final String PREFIX = "com.android.packageinstaller.";
    public static final Map<String, Map<String, AppInfo>> newAppMap = new HashMap();

    public static ApplicationInfo getApplicationInfo(Uri packageURI) {
        String archiveFilePath = packageURI.getPath();
        PackageParser packageParser = new PackageParser(archiveFilePath);
        File sourceFile = new File(archiveFilePath);
        DisplayMetrics metrics = new DisplayMetrics();
        metrics.setToDefaults();
        PackageParser.Package pkg = packageParser.parsePackage(sourceFile, archiveFilePath, metrics, 0);
        if (pkg == null) {
            return null;
        }
        return pkg.applicationInfo;
    }

    public static PackageParser.Package getPackageInfo(Uri packageURI) {
        String archiveFilePath = packageURI.getPath();
        PackageParser packageParser = new PackageParser(archiveFilePath);
        File sourceFile = new File(archiveFilePath);
        DisplayMetrics metrics = new DisplayMetrics();
        metrics.setToDefaults();
        return packageParser.parsePackage(sourceFile, archiveFilePath, metrics, 0);
    }

    public static boolean isPackageAlreadyInstalled(Activity context, String pkgName) {
        List<PackageInfo> installedList = context.getPackageManager().getInstalledPackages(8192);
        int installedListSize = installedList.size();
        for (int i = 0; i < installedListSize; i++) {
            if (pkgName.equalsIgnoreCase(installedList.get(i).packageName)) {
                return true;
            }
        }
        return false;
    }

    public static class AppSnippet {
        CharSequence a;
        Drawable b;

        public AppSnippet(CharSequence label, Drawable icon) {
            this.a = label;
            this.b = icon;
        }
    }

    public static AppSnippet getAppSnippet(Activity pContext, ApplicationInfo appInfo, Uri packageURI) {
        String archiveFilePath = packageURI.getPath();
        Resources pRes = pContext.getResources();
        AssetManager assmgr = new AssetManager();
        assmgr.addAssetPath(archiveFilePath);
        Resources res = new Resources(assmgr, pRes.getDisplayMetrics(), pRes.getConfiguration());
        CharSequence label = null;
        if (appInfo.labelRes != 0) {
            try {
                label = res.getText(appInfo.labelRes);
            } catch (Resources.NotFoundException e) {
            }
        }
        if (label == null) {
            label = appInfo.nonLocalizedLabel != null ? appInfo.nonLocalizedLabel : appInfo.packageName;
        }
        Drawable icon = null;
        if (appInfo.icon != 0) {
            try {
                icon = res.getDrawable(appInfo.icon);
            } catch (Resources.NotFoundException e2) {
            }
        }
        if (icon == null) {
            icon = pContext.getPackageManager().getDefaultActivityIcon();
        }
        return new AppSnippet(label, icon);
    }

    public static List<PermissionInfo> getPerssions(PackageParser.Package pkg, Context context) {
        List<PermissionInfo> mPermsList = new ArrayList<>();
        if (!(pkg == null || pkg.requestedPermissions == null)) {
            ArrayList<String> strList = pkg.requestedPermissions;
            if (strList.size() > 0) {
                Iterator i$ = strList.iterator();
                while (i$.hasNext()) {
                    try {
                        PermissionInfo tmpPermInfo = context.getPackageManager().getPermissionInfo(i$.next(), 0);
                        if (tmpPermInfo != null) {
                            mPermsList.add(tmpPermInfo);
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return mPermsList;
    }
}
