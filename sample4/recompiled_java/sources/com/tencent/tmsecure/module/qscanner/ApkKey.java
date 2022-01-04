package com.tencent.tmsecure.module.qscanner;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;
import org.apache.commons.httpclient.cookie.Cookie2;

public final class ApkKey extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ApkKey.class.desiredAssertionStatus());
    public int apkType;
    public String certMd5;
    public String path;
    public String pkgName;
    public int size;
    public String softName;
    public String version;
    public int versionCode;

    public ApkKey() {
        this.pkgName = "";
        this.softName = "";
        this.certMd5 = "";
        this.version = "";
        this.versionCode = 0;
        this.size = 0;
        this.path = "";
        this.apkType = 0;
        this.pkgName = this.pkgName;
        this.softName = this.softName;
        this.certMd5 = this.certMd5;
        this.version = this.version;
        this.versionCode = this.versionCode;
        this.size = this.size;
        this.path = this.path;
        this.apkType = this.apkType;
    }

    public ApkKey(String str, String str2, String str3, String str4, int i, int i2, String str5, int i3) {
        this.pkgName = "";
        this.softName = "";
        this.certMd5 = "";
        this.version = "";
        this.versionCode = 0;
        this.size = 0;
        this.path = "";
        this.apkType = 0;
        this.pkgName = str;
        this.softName = str2;
        this.certMd5 = str3;
        this.version = str4;
        this.versionCode = i;
        this.size = i2;
        this.path = str5;
        this.apkType = i3;
    }

    public final String className() {
        return "QQPIM.ApkKey";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (a) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.pkgName, "pkgName");
        jceDisplayer.display(this.softName, "softName");
        jceDisplayer.display(this.certMd5, "certMd5");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.versionCode, AppEntity.KEY_VERSION_CODE_INT);
        jceDisplayer.display(this.size, AppEntity.KEY_SIZE_LONG);
        jceDisplayer.display(this.path, Cookie2.PATH);
        jceDisplayer.display(this.apkType, "apkType");
    }

    public final boolean equals(Object obj) {
        ApkKey apkKey;
        return obj != null && (obj instanceof ApkKey) && (apkKey = (ApkKey) obj) != null && JceUtil.equals(this.pkgName, apkKey.pkgName) && JceUtil.equals(this.softName, apkKey.softName) && JceUtil.equals(this.certMd5, apkKey.certMd5) && JceUtil.equals(this.version, apkKey.version) && JceUtil.equals(this.versionCode, apkKey.versionCode) && JceUtil.equals(this.size, apkKey.size) && JceUtil.equals(this.path, apkKey.path) && JceUtil.equals(this.apkType, apkKey.apkType);
    }

    public final String fullClassName() {
        return "QQPIM.ApkKey";
    }

    public final int getApkType() {
        return this.apkType;
    }

    public final String getCertMd5() {
        return this.certMd5;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getPkgName() {
        return this.pkgName;
    }

    public final int getSize() {
        return this.size;
    }

    public final String getSoftName() {
        return this.softName;
    }

    public final String getVersion() {
        return this.version;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.pkgName = jceInputStream.readString(0, true);
        this.softName = jceInputStream.readString(1, true);
        this.certMd5 = jceInputStream.readString(2, true);
        this.version = jceInputStream.readString(3, true);
        this.versionCode = jceInputStream.read(this.versionCode, 4, true);
        this.size = jceInputStream.read(this.size, 5, true);
        this.path = jceInputStream.readString(6, false);
        this.apkType = jceInputStream.read(this.apkType, 7, false);
    }

    public final void setApkType(int i) {
        this.apkType = i;
    }

    public final void setCertMd5(String str) {
        this.certMd5 = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPkgName(String str) {
        this.pkgName = str;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    public final void setSoftName(String str) {
        this.softName = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void setVersionCode(int i) {
        this.versionCode = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pkgName, 0);
        jceOutputStream.write(this.softName, 1);
        jceOutputStream.write(this.certMd5, 2);
        jceOutputStream.write(this.version, 3);
        jceOutputStream.write(this.versionCode, 4);
        jceOutputStream.write(this.size, 5);
        if (this.path != null) {
            jceOutputStream.write(this.path, 6);
        }
        jceOutputStream.write(this.apkType, 7);
    }
}
