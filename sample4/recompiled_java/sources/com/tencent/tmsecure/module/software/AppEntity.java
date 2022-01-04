package com.tencent.tmsecure.module.software;

import android.graphics.drawable.Drawable;
import com.tencent.tmsecure.common.BaseEntity;
import java.util.HashMap;

public class AppEntity extends BaseEntity {
    public static final int FLAG_APK = 64;
    public static final int FLAG_APP_INFO = 1;
    public static final int FLAG_APP_INFO_SIMPLE = 2;
    public static final int FLAG_ICON = 4;
    public static final int FLAG_PERMISSIONS = 32;
    public static final int FLAG_SIGNATURE = 16;
    public static final int FLAG_VERSION = 8;
    public static final String KEY_APK_PATH_STR = "apkPath";
    public static final String KEY_APP_NAME_STR = "appName";
    public static final String KEY_ICON_DRAWABLE = "icon";
    public static final String KEY_IS_APK_BOOL = "isApk";
    public static final String KEY_IS_SYSTEM_BOOL = "isSystem";
    public static final String KEY_LAST_MODIFIED_LONG = "lastModified";
    public static final String KEY_PERMISSION_STR_ARRAY = "permissions";
    public static final String KEY_PKG_NAME_STR = "pkgName";
    public static final String KEY_SIGNATURE_COMPANY_STR = "signatureCompany";
    public static final String KEY_SIGNATURE_MD5_STR = "signatureCermMD5";
    public static final String KEY_SIZE_LONG = "size";
    public static final String KEY_VERSION_CODE_INT = "versionCode";
    public static final String KEY_VERSION_STR = "version";
    private final HashMap<String, Object> a = new HashMap<>();

    public Object get(String str) {
        return this.a.get(str);
    }

    public String getApkPath() {
        Object obj = this.a.get(KEY_APK_PATH_STR);
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public String getAppName() {
        Object obj = this.a.get("appName");
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public String getCertMD5() {
        Object obj = this.a.get(KEY_SIGNATURE_MD5_STR);
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public String getCompany() {
        Object obj = this.a.get(KEY_SIGNATURE_COMPANY_STR);
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public Drawable getIcon() {
        Object obj = this.a.get(KEY_ICON_DRAWABLE);
        if (obj != null) {
            return (Drawable) obj;
        }
        return null;
    }

    public long getLastModifiedTime() {
        Object obj = this.a.get(KEY_LAST_MODIFIED_LONG);
        if (obj != null) {
            return ((Long) obj).longValue();
        }
        return 0;
    }

    public String getPackageName() {
        Object obj = this.a.get("pkgName");
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public String[] getPermissions() {
        Object obj = this.a.get(KEY_PERMISSION_STR_ARRAY);
        if (obj != null) {
            return (String[]) obj;
        }
        return null;
    }

    public long getSize() {
        Object obj = this.a.get(KEY_SIZE_LONG);
        if (obj != null) {
            return ((Long) obj).longValue();
        }
        return 0;
    }

    public String getVersion() {
        Object obj = this.a.get("version");
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public int getVersionCode() {
        Object obj = this.a.get(KEY_VERSION_CODE_INT);
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public boolean isApk() {
        Object obj = this.a.get(KEY_IS_APK_BOOL);
        if (obj != null) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public boolean isSystemApp() {
        Object obj = this.a.get(KEY_IS_SYSTEM_BOOL);
        if (obj != null) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public void put(String str, Object obj) {
        this.a.put(str, obj);
    }

    public void setApkFlag(boolean z) {
        this.a.put(KEY_IS_APK_BOOL, Boolean.valueOf(z));
    }

    public void setApkPath(String str) {
        this.a.put(KEY_APK_PATH_STR, str);
    }

    public void setAppName(String str) {
        this.a.put("appName", str);
    }

    public void setCertMD5(String str) {
        this.a.put(KEY_SIGNATURE_MD5_STR, str);
    }

    public void setCompany(String str) {
        this.a.put(KEY_SIGNATURE_COMPANY_STR, str);
    }

    public void setIcon(Drawable drawable) {
        this.a.put(KEY_ICON_DRAWABLE, drawable);
    }

    public void setLastModifiedTime(long j) {
        this.a.put(KEY_LAST_MODIFIED_LONG, Long.valueOf(j));
    }

    public void setPackageName(String str) {
        this.a.put("pkgName", str);
    }

    public void setPermissions(String[] strArr) {
        this.a.put(KEY_PERMISSION_STR_ARRAY, strArr);
    }

    public void setSize(long j) {
        this.a.put(KEY_SIZE_LONG, Long.valueOf(j));
    }

    public void setSystemFlag(boolean z) {
        this.a.put(KEY_IS_SYSTEM_BOOL, Boolean.valueOf(z));
    }

    public void setVersion(String str) {
        this.a.put("version", str);
    }

    public void setVersionCode(int i) {
        this.a.put(KEY_VERSION_CODE_INT, Integer.valueOf(i));
    }
}
