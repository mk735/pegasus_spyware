package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;

public final class DetailCloudFeature extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!DetailCloudFeature.class.desiredAssertionStatus());
    public String certMd5;
    public int fileSize;
    public boolean isRom;
    public String packName;
    public String softName;
    public String version;
    public int versionCode;

    public DetailCloudFeature() {
        this.packName = "";
        this.certMd5 = "";
        this.fileSize = 0;
        this.version = "";
        this.versionCode = 0;
        this.softName = "";
        this.isRom = false;
        this.packName = this.packName;
        this.certMd5 = this.certMd5;
        this.fileSize = this.fileSize;
        this.version = this.version;
        this.versionCode = this.versionCode;
        this.softName = this.softName;
        this.isRom = this.isRom;
    }

    public DetailCloudFeature(String str, String str2, int i, String str3, int i2, String str4, boolean z) {
        this.packName = "";
        this.certMd5 = "";
        this.fileSize = 0;
        this.version = "";
        this.versionCode = 0;
        this.softName = "";
        this.isRom = false;
        this.packName = str;
        this.certMd5 = str2;
        this.fileSize = i;
        this.version = str3;
        this.versionCode = i2;
        this.softName = str4;
        this.isRom = z;
    }

    public final String className() {
        return "QQPIM.DetailCloudFeature";
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
        jceDisplayer.display(this.packName, "packName");
        jceDisplayer.display(this.certMd5, "certMd5");
        jceDisplayer.display(this.fileSize, "fileSize");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.versionCode, AppEntity.KEY_VERSION_CODE_INT);
        jceDisplayer.display(this.softName, "softName");
        jceDisplayer.display(this.isRom, "isRom");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DetailCloudFeature detailCloudFeature = (DetailCloudFeature) obj;
        return JceUtil.equals(this.packName, detailCloudFeature.packName) && JceUtil.equals(this.certMd5, detailCloudFeature.certMd5) && JceUtil.equals(this.fileSize, detailCloudFeature.fileSize) && JceUtil.equals(this.version, detailCloudFeature.version) && JceUtil.equals(this.versionCode, detailCloudFeature.versionCode) && JceUtil.equals(this.softName, detailCloudFeature.softName) && JceUtil.equals(this.isRom, detailCloudFeature.isRom);
    }

    public final String fullClassName() {
        return "QQPIM.DetailCloudFeature";
    }

    public final String getCertMd5() {
        return this.certMd5;
    }

    public final int getFileSize() {
        return this.fileSize;
    }

    public final boolean getIsRom() {
        return this.isRom;
    }

    public final String getPackName() {
        return this.packName;
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
        this.packName = jceInputStream.readString(0, true);
        this.certMd5 = jceInputStream.readString(1, true);
        this.fileSize = jceInputStream.read(this.fileSize, 2, true);
        this.version = jceInputStream.readString(3, true);
        this.versionCode = jceInputStream.read(this.versionCode, 4, false);
        this.softName = jceInputStream.readString(5, false);
        this.isRom = jceInputStream.read(this.isRom, 6, false);
    }

    public final void setCertMd5(String str) {
        this.certMd5 = str;
    }

    public final void setFileSize(int i) {
        this.fileSize = i;
    }

    public final void setIsRom(boolean z) {
        this.isRom = z;
    }

    public final void setPackName(String str) {
        this.packName = str;
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
        jceOutputStream.write(this.packName, 0);
        jceOutputStream.write(this.certMd5, 1);
        jceOutputStream.write(this.fileSize, 2);
        jceOutputStream.write(this.version, 3);
        jceOutputStream.write(this.versionCode, 4);
        if (this.softName != null) {
            jceOutputStream.write(this.softName, 5);
        }
        jceOutputStream.write(this.isRom, 6);
    }
}
