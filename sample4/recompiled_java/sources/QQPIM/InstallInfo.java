package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class InstallInfo extends JceStruct implements Cloneable {
    static ProductVersion a;
    static final /* synthetic */ boolean b = (!InstallInfo.class.desiredAssertionStatus());
    public String cert;
    public int option;
    public String uid;
    public String url;
    public ProductVersion version;

    public InstallInfo() {
        this.option = 0;
        this.url = "";
        this.version = null;
        this.uid = "";
        this.cert = "";
        this.option = this.option;
        this.url = this.url;
        this.version = this.version;
        this.uid = this.uid;
        this.cert = this.cert;
    }

    public InstallInfo(int i, String str, ProductVersion productVersion, String str2, String str3) {
        this.option = 0;
        this.url = "";
        this.version = null;
        this.uid = "";
        this.cert = "";
        this.option = i;
        this.url = str;
        this.version = productVersion;
        this.uid = str2;
        this.cert = str3;
    }

    public final String className() {
        return "QQPIM.InstallInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (b) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.option, "option");
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display((JceStruct) this.version, "version");
        jceDisplayer.display(this.uid, "uid");
        jceDisplayer.display(this.cert, "cert");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        InstallInfo installInfo = (InstallInfo) obj;
        return JceUtil.equals(this.option, installInfo.option) && JceUtil.equals(this.url, installInfo.url) && JceUtil.equals(this.version, installInfo.version) && JceUtil.equals(this.uid, installInfo.uid) && JceUtil.equals(this.cert, installInfo.cert);
    }

    public final String fullClassName() {
        return "QQPIM.InstallInfo";
    }

    public final String getCert() {
        return this.cert;
    }

    public final int getOption() {
        return this.option;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getUrl() {
        return this.url;
    }

    public final ProductVersion getVersion() {
        return this.version;
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
        this.option = jceInputStream.read(this.option, 0, true);
        this.url = jceInputStream.readString(1, true);
        if (a == null) {
            a = new ProductVersion();
        }
        this.version = (ProductVersion) jceInputStream.read((JceStruct) a, 2, false);
        this.uid = jceInputStream.readString(3, false);
        this.cert = jceInputStream.readString(4, false);
    }

    public final void setCert(String str) {
        this.cert = str;
    }

    public final void setOption(int i) {
        this.option = i;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVersion(ProductVersion productVersion) {
        this.version = productVersion;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.option, 0);
        jceOutputStream.write(this.url, 1);
        if (this.version != null) {
            jceOutputStream.write((JceStruct) this.version, 2);
        }
        if (this.uid != null) {
            jceOutputStream.write(this.uid, 3);
        }
        if (this.cert != null) {
            jceOutputStream.write(this.cert, 4);
        }
    }
}
