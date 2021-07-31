package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RecommendSoft extends JceStruct implements Cloneable {
    static ProductVersion a;
    static final /* synthetic */ boolean b = (!RecommendSoft.class.desiredAssertionStatus());
    public String uid;
    public String url;
    public ProductVersion version;

    public RecommendSoft() {
        this.url = "";
        this.version = null;
        this.uid = "";
        this.url = this.url;
        this.version = this.version;
        this.uid = this.uid;
    }

    public RecommendSoft(String str, ProductVersion productVersion, String str2) {
        this.url = "";
        this.version = null;
        this.uid = "";
        this.url = str;
        this.version = productVersion;
        this.uid = str2;
    }

    public final String className() {
        return "QQPIM.RecommendSoft";
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
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display((JceStruct) this.version, "version");
        jceDisplayer.display(this.uid, "uid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        RecommendSoft recommendSoft = (RecommendSoft) obj;
        return JceUtil.equals(this.url, recommendSoft.url) && JceUtil.equals(this.version, recommendSoft.version) && JceUtil.equals(this.uid, recommendSoft.uid);
    }

    public final String fullClassName() {
        return "QQPIM.RecommendSoft";
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
        this.url = jceInputStream.readString(0, true);
        if (a == null) {
            a = new ProductVersion();
        }
        this.version = (ProductVersion) jceInputStream.read((JceStruct) a, 1, true);
        this.uid = jceInputStream.readString(2, false);
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
        jceOutputStream.write(this.url, 0);
        jceOutputStream.write((JceStruct) this.version, 1);
        if (this.uid != null) {
            jceOutputStream.write(this.uid, 2);
        }
    }
}
