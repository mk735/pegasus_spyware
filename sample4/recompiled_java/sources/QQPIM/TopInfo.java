package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TopInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TopInfo.class.desiredAssertionStatus());
    public int ranktype;
    public int timetype;
    public int topn;

    public TopInfo() {
        this.topn = 0;
        this.ranktype = 0;
        this.timetype = 0;
        this.topn = this.topn;
        this.ranktype = this.ranktype;
        this.timetype = this.timetype;
    }

    public TopInfo(int i, int i2, int i3) {
        this.topn = 0;
        this.ranktype = 0;
        this.timetype = 0;
        this.topn = i;
        this.ranktype = i2;
        this.timetype = i3;
    }

    public final String className() {
        return "QQPIM.TopInfo";
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
        jceDisplayer.display(this.topn, "topn");
        jceDisplayer.display(this.ranktype, "ranktype");
        jceDisplayer.display(this.timetype, "timetype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TopInfo topInfo = (TopInfo) obj;
        return JceUtil.equals(this.topn, topInfo.topn) && JceUtil.equals(this.ranktype, topInfo.ranktype) && JceUtil.equals(this.timetype, topInfo.timetype);
    }

    public final String fullClassName() {
        return "QQPIM.TopInfo";
    }

    public final int getRanktype() {
        return this.ranktype;
    }

    public final int getTimetype() {
        return this.timetype;
    }

    public final int getTopn() {
        return this.topn;
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
        this.topn = jceInputStream.read(this.topn, 0, true);
        this.ranktype = jceInputStream.read(this.ranktype, 1, true);
        this.timetype = jceInputStream.read(this.timetype, 2, true);
    }

    public final void setRanktype(int i) {
        this.ranktype = i;
    }

    public final void setTimetype(int i) {
        this.timetype = i;
    }

    public final void setTopn(int i) {
        this.topn = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.topn, 0);
        jceOutputStream.write(this.ranktype, 1);
        jceOutputStream.write(this.timetype, 2);
    }
}
