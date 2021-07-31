package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;

public final class FeatureKey extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FeatureKey.class.desiredAssertionStatus());
    public String cert;
    public int fileSize;
    public String softName;
    public String uniCode;
    public String version;
    public int versionCode;

    public FeatureKey() {
        this.uniCode = "";
        this.softName = "";
        this.version = "";
        this.versionCode = 0;
        this.cert = "";
        this.fileSize = 0;
        this.uniCode = this.uniCode;
        this.softName = this.softName;
        this.version = this.version;
        this.versionCode = this.versionCode;
        this.cert = this.cert;
        this.fileSize = this.fileSize;
    }

    public FeatureKey(String str, String str2, String str3, int i, String str4, int i2) {
        this.uniCode = "";
        this.softName = "";
        this.version = "";
        this.versionCode = 0;
        this.cert = "";
        this.fileSize = 0;
        this.uniCode = str;
        this.softName = str2;
        this.version = str3;
        this.versionCode = i;
        this.cert = str4;
        this.fileSize = i2;
    }

    public final String className() {
        return "QQPIM.FeatureKey";
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
        jceDisplayer.display(this.uniCode, "uniCode");
        jceDisplayer.display(this.softName, "softName");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.versionCode, AppEntity.KEY_VERSION_CODE_INT);
        jceDisplayer.display(this.cert, "cert");
        jceDisplayer.display(this.fileSize, "fileSize");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FeatureKey featureKey = (FeatureKey) obj;
        return JceUtil.equals(this.uniCode, featureKey.uniCode) && JceUtil.equals(this.softName, featureKey.softName) && JceUtil.equals(this.version, featureKey.version) && JceUtil.equals(this.versionCode, featureKey.versionCode) && JceUtil.equals(this.cert, featureKey.cert) && JceUtil.equals(this.fileSize, featureKey.fileSize);
    }

    public final String fullClassName() {
        return "QQPIM.FeatureKey";
    }

    public final String getCert() {
        return this.cert;
    }

    public final int getFileSize() {
        return this.fileSize;
    }

    public final String getSoftName() {
        return this.softName;
    }

    public final String getUniCode() {
        return this.uniCode;
    }

    public final String getVersion() {
        return this.version;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.uniCode = jceInputStream.readString(0, true);
        this.softName = jceInputStream.readString(1, true);
        this.version = jceInputStream.readString(2, true);
        this.versionCode = jceInputStream.read(this.versionCode, 3, false);
        this.cert = jceInputStream.readString(4, false);
        this.fileSize = jceInputStream.read(this.fileSize, 5, false);
    }

    public final void setCert(String str) {
        this.cert = str;
    }

    public final void setFileSize(int i) {
        this.fileSize = i;
    }

    public final void setSoftName(String str) {
        this.softName = str;
    }

    public final void setUniCode(String str) {
        this.uniCode = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void setVersionCode(int i) {
        this.versionCode = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uniCode, 0);
        jceOutputStream.write(this.softName, 1);
        jceOutputStream.write(this.version, 2);
        jceOutputStream.write(this.versionCode, 3);
        if (this.cert != null) {
            jceOutputStream.write(this.cert, 4);
        }
        jceOutputStream.write(this.fileSize, 5);
    }
}
