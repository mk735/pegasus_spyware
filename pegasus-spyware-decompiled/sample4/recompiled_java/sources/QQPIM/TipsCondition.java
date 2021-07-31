package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsCondition extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TipsCondition.class.desiredAssertionStatus());
    public int bitflag;
    public int usebits;

    public TipsCondition() {
        this.usebits = 0;
        this.bitflag = 0;
        this.usebits = this.usebits;
        this.bitflag = this.bitflag;
    }

    public TipsCondition(int i, int i2) {
        this.usebits = 0;
        this.bitflag = 0;
        this.usebits = i;
        this.bitflag = i2;
    }

    public final String className() {
        return "QQPIM.TipsCondition";
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
        jceDisplayer.display(this.usebits, "usebits");
        jceDisplayer.display(this.bitflag, "bitflag");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TipsCondition tipsCondition = (TipsCondition) obj;
        return JceUtil.equals(this.usebits, tipsCondition.usebits) && JceUtil.equals(this.bitflag, tipsCondition.bitflag);
    }

    public final String fullClassName() {
        return "QQPIM.TipsCondition";
    }

    public final int getBitflag() {
        return this.bitflag;
    }

    public final int getUsebits() {
        return this.usebits;
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
        this.usebits = jceInputStream.read(this.usebits, 0, true);
        this.bitflag = jceInputStream.read(this.bitflag, 1, true);
    }

    public final void setBitflag(int i) {
        this.bitflag = i;
    }

    public final void setUsebits(int i) {
        this.usebits = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.usebits, 0);
        jceOutputStream.write(this.bitflag, 1);
    }
}
