package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenLinkInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!OpenLinkInfo.class.desiredAssertionStatus());
    public String url;

    public OpenLinkInfo() {
        this.url = "";
        this.url = this.url;
    }

    public OpenLinkInfo(String str) {
        this.url = "";
        this.url = str;
    }

    public final String className() {
        return "QQPIM.OpenLinkInfo";
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
        new JceDisplayer(sb, i).display(this.url, "url");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.url, ((OpenLinkInfo) obj).url);
    }

    public final String fullClassName() {
        return "QQPIM.OpenLinkInfo";
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
        this.url = jceInputStream.readString(0, true);
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.url, 0);
    }
}
