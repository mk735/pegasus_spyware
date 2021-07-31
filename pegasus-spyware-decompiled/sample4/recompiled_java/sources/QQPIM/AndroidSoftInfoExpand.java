package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AndroidSoftInfoExpand extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!AndroidSoftInfoExpand.class.desiredAssertionStatus());
    public String recommend;
    public String signature;

    public AndroidSoftInfoExpand() {
        this.recommend = "";
        this.signature = "";
        this.recommend = this.recommend;
        this.signature = this.signature;
    }

    public AndroidSoftInfoExpand(String str, String str2) {
        this.recommend = "";
        this.signature = "";
        this.recommend = str;
        this.signature = str2;
    }

    public final String className() {
        return "QQPIM.AndroidSoftInfoExpand";
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
        jceDisplayer.display(this.recommend, "recommend");
        jceDisplayer.display(this.signature, "signature");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AndroidSoftInfoExpand androidSoftInfoExpand = (AndroidSoftInfoExpand) obj;
        return JceUtil.equals(this.recommend, androidSoftInfoExpand.recommend) && JceUtil.equals(this.signature, androidSoftInfoExpand.signature);
    }

    public final String fullClassName() {
        return "QQPIM.AndroidSoftInfoExpand";
    }

    public final String getRecommend() {
        return this.recommend;
    }

    public final String getSignature() {
        return this.signature;
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
        this.recommend = jceInputStream.readString(0, false);
        this.signature = jceInputStream.readString(2, false);
    }

    public final void setRecommend(String str) {
        this.recommend = str;
    }

    public final void setSignature(String str) {
        this.signature = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.recommend != null) {
            jceOutputStream.write(this.recommend, 0);
        }
        if (this.signature != null) {
            jceOutputStream.write(this.signature, 2);
        }
    }
}
