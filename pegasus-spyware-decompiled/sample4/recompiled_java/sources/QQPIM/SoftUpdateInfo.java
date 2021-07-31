package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftUpdateInfo extends JceStruct implements Cloneable {
    static ProductVersion a;
    static final /* synthetic */ boolean b = (!SoftUpdateInfo.class.desiredAssertionStatus());
    public String market;
    public int new_buildno;
    public String newfeature;
    public ProductVersion newversion;
    public int pkg_size;
    public String url;
    public int urltype;

    public SoftUpdateInfo() {
        this.url = "";
        this.urltype = 0;
        this.newversion = null;
        this.new_buildno = 0;
        this.pkg_size = 0;
        this.newfeature = "";
        this.market = "";
        this.url = this.url;
        this.urltype = this.urltype;
        this.newversion = this.newversion;
        this.new_buildno = this.new_buildno;
        this.pkg_size = this.pkg_size;
        this.newfeature = this.newfeature;
        this.market = this.market;
    }

    public SoftUpdateInfo(String str, int i, ProductVersion productVersion, int i2, int i3, String str2, String str3) {
        this.url = "";
        this.urltype = 0;
        this.newversion = null;
        this.new_buildno = 0;
        this.pkg_size = 0;
        this.newfeature = "";
        this.market = "";
        this.url = str;
        this.urltype = i;
        this.newversion = productVersion;
        this.new_buildno = i2;
        this.pkg_size = i3;
        this.newfeature = str2;
        this.market = str3;
    }

    public final String className() {
        return "QQPIM.SoftUpdateInfo";
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
        jceDisplayer.display(this.urltype, "urltype");
        jceDisplayer.display((JceStruct) this.newversion, "newversion");
        jceDisplayer.display(this.new_buildno, "new_buildno");
        jceDisplayer.display(this.pkg_size, "pkg_size");
        jceDisplayer.display(this.newfeature, "newfeature");
        jceDisplayer.display(this.market, "market");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftUpdateInfo softUpdateInfo = (SoftUpdateInfo) obj;
        return JceUtil.equals(this.url, softUpdateInfo.url) && JceUtil.equals(this.urltype, softUpdateInfo.urltype) && JceUtil.equals(this.newversion, softUpdateInfo.newversion) && JceUtil.equals(this.new_buildno, softUpdateInfo.new_buildno) && JceUtil.equals(this.pkg_size, softUpdateInfo.pkg_size) && JceUtil.equals(this.newfeature, softUpdateInfo.newfeature) && JceUtil.equals(this.market, softUpdateInfo.market);
    }

    public final String fullClassName() {
        return "QQPIM.SoftUpdateInfo";
    }

    public final String getMarket() {
        return this.market;
    }

    public final int getNew_buildno() {
        return this.new_buildno;
    }

    public final String getNewfeature() {
        return this.newfeature;
    }

    public final ProductVersion getNewversion() {
        return this.newversion;
    }

    public final int getPkg_size() {
        return this.pkg_size;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getUrltype() {
        return this.urltype;
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
        this.urltype = jceInputStream.read(this.urltype, 1, false);
        if (a == null) {
            a = new ProductVersion();
        }
        this.newversion = (ProductVersion) jceInputStream.read((JceStruct) a, 2, false);
        this.new_buildno = jceInputStream.read(this.new_buildno, 3, false);
        this.pkg_size = jceInputStream.read(this.pkg_size, 4, false);
        this.newfeature = jceInputStream.readString(5, false);
        this.market = jceInputStream.readString(6, false);
    }

    public final void setMarket(String str) {
        this.market = str;
    }

    public final void setNew_buildno(int i) {
        this.new_buildno = i;
    }

    public final void setNewfeature(String str) {
        this.newfeature = str;
    }

    public final void setNewversion(ProductVersion productVersion) {
        this.newversion = productVersion;
    }

    public final void setPkg_size(int i) {
        this.pkg_size = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setUrltype(int i) {
        this.urltype = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.url, 0);
        jceOutputStream.write(this.urltype, 1);
        if (this.newversion != null) {
            jceOutputStream.write((JceStruct) this.newversion, 2);
        }
        jceOutputStream.write(this.new_buildno, 3);
        jceOutputStream.write(this.pkg_size, 4);
        if (this.newfeature != null) {
            jceOutputStream.write(this.newfeature, 5);
        }
        if (this.market != null) {
            jceOutputStream.write(this.market, 6);
        }
    }
}
