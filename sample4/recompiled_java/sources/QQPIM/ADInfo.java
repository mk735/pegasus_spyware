package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ADInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!ADInfo.class.desiredAssertionStatus());
    public int adid;
    public int adtype;
    public String description;
    public String picalt;
    public String picurl;
    public SoftKey softkey;
    public String url;

    public ADInfo() {
        this.adid = 0;
        this.picurl = "";
        this.picalt = "";
        this.softkey = null;
        this.description = "";
        this.adtype = 0;
        this.url = "";
        this.adid = this.adid;
        this.picurl = this.picurl;
        this.picalt = this.picalt;
        this.softkey = this.softkey;
        this.description = this.description;
        this.adtype = this.adtype;
        this.url = this.url;
    }

    public ADInfo(int i, String str, String str2, SoftKey softKey, String str3, int i2, String str4) {
        this.adid = 0;
        this.picurl = "";
        this.picalt = "";
        this.softkey = null;
        this.description = "";
        this.adtype = 0;
        this.url = "";
        this.adid = i;
        this.picurl = str;
        this.picalt = str2;
        this.softkey = softKey;
        this.description = str3;
        this.adtype = i2;
        this.url = str4;
    }

    public final String className() {
        return "QQPIM.ADInfo";
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
        jceDisplayer.display(this.adid, "adid");
        jceDisplayer.display(this.picurl, "picurl");
        jceDisplayer.display(this.picalt, "picalt");
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.description, "description");
        jceDisplayer.display(this.adtype, "adtype");
        jceDisplayer.display(this.url, "url");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ADInfo aDInfo = (ADInfo) obj;
        return JceUtil.equals(this.adid, aDInfo.adid) && JceUtil.equals(this.picurl, aDInfo.picurl) && JceUtil.equals(this.picalt, aDInfo.picalt) && JceUtil.equals(this.softkey, aDInfo.softkey) && JceUtil.equals(this.description, aDInfo.description) && JceUtil.equals(this.adtype, aDInfo.adtype) && JceUtil.equals(this.url, aDInfo.url);
    }

    public final String fullClassName() {
        return "QQPIM.ADInfo";
    }

    public final int getAdid() {
        return this.adid;
    }

    public final int getAdtype() {
        return this.adtype;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getPicalt() {
        return this.picalt;
    }

    public final String getPicurl() {
        return this.picurl;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
    }

    public final String getUrl() {
        return this.url;
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
        this.adid = jceInputStream.read(this.adid, 0, true);
        this.picurl = jceInputStream.readString(1, true);
        this.picalt = jceInputStream.readString(2, true);
        if (a == null) {
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 3, true);
        this.description = jceInputStream.readString(4, true);
        this.adtype = jceInputStream.read(this.adtype, 5, false);
        this.url = jceInputStream.readString(6, false);
    }

    public final void setAdid(int i) {
        this.adid = i;
    }

    public final void setAdtype(int i) {
        this.adtype = i;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setPicalt(String str) {
        this.picalt = str;
    }

    public final void setPicurl(String str) {
        this.picurl = str;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.adid, 0);
        jceOutputStream.write(this.picurl, 1);
        jceOutputStream.write(this.picalt, 2);
        jceOutputStream.write((JceStruct) this.softkey, 3);
        jceOutputStream.write(this.description, 4);
        jceOutputStream.write(this.adtype, 5);
        if (this.url != null) {
            jceOutputStream.write(this.url, 6);
        }
    }
}
