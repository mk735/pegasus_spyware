package com.lenovo.safecenter.utils.update;

public class LeSafeUpdateInfo {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private long g;

    public LeSafeUpdateInfo(String channelKey, String versionName, String versionCode, String updateDesc, String url, String apkName, long fileSize) {
        this.a = channelKey;
        this.b = versionName;
        this.c = versionCode;
        this.d = updateDesc;
        this.e = url;
        this.f = apkName;
        this.g = fileSize;
    }

    public String getChannelKey() {
        return this.a;
    }

    public String getVersionName() {
        return this.b;
    }

    public String getVersionCode() {
        return this.c;
    }

    public String getUpdateDesc() {
        return this.d;
    }

    public String getUrl() {
        return this.e;
    }

    public String getApkName() {
        return this.f;
    }

    public long getFileSize() {
        return this.g;
    }

    public String toString() {
        return "LeSafeUpdateInfo [channelKey=" + this.a + ", versionName=" + this.b + ", versionCode=" + this.c + ", updateDesc=" + this.d + ", url=" + this.e + ", apkName=" + this.f + ", fileSize=" + this.g + "]";
    }
}
