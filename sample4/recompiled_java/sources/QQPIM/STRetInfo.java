package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STRetInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!STRetInfo.class.desiredAssertionStatus());
    public int nExcess;
    public int nLeft;
    public int nPaMoney;
    public int nPaNet;
    public int nType;
    public int nUsed;
    public int ntime;

    public STRetInfo() {
        this.nType = 0;
        this.nLeft = 0;
        this.nUsed = 0;
        this.nExcess = 0;
        this.nPaNet = 0;
        this.nPaMoney = 0;
        this.ntime = 0;
        this.nType = this.nType;
        this.nLeft = this.nLeft;
        this.nUsed = this.nUsed;
        this.nExcess = this.nExcess;
        this.nPaNet = this.nPaNet;
        this.nPaMoney = this.nPaMoney;
        this.ntime = this.ntime;
    }

    public STRetInfo(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.nType = 0;
        this.nLeft = 0;
        this.nUsed = 0;
        this.nExcess = 0;
        this.nPaNet = 0;
        this.nPaMoney = 0;
        this.ntime = 0;
        this.nType = i;
        this.nLeft = i2;
        this.nUsed = i3;
        this.nExcess = i4;
        this.nPaNet = i5;
        this.nPaMoney = i6;
        this.ntime = i7;
    }

    public final String className() {
        return "QQPIM.STRetInfo";
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
        jceDisplayer.display(this.nType, "nType");
        jceDisplayer.display(this.nLeft, "nLeft");
        jceDisplayer.display(this.nUsed, "nUsed");
        jceDisplayer.display(this.nExcess, "nExcess");
        jceDisplayer.display(this.nPaNet, "nPaNet");
        jceDisplayer.display(this.nPaMoney, "nPaMoney");
        jceDisplayer.display(this.ntime, "ntime");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STRetInfo sTRetInfo = (STRetInfo) obj;
        return JceUtil.equals(this.nType, sTRetInfo.nType) && JceUtil.equals(this.nLeft, sTRetInfo.nLeft) && JceUtil.equals(this.nUsed, sTRetInfo.nUsed) && JceUtil.equals(this.nExcess, sTRetInfo.nExcess) && JceUtil.equals(this.nPaNet, sTRetInfo.nPaNet) && JceUtil.equals(this.nPaMoney, sTRetInfo.nPaMoney) && JceUtil.equals(this.ntime, sTRetInfo.ntime);
    }

    public final String fullClassName() {
        return "QQPIM.STRetInfo";
    }

    public final int getNExcess() {
        return this.nExcess;
    }

    public final int getNLeft() {
        return this.nLeft;
    }

    public final int getNPaMoney() {
        return this.nPaMoney;
    }

    public final int getNPaNet() {
        return this.nPaNet;
    }

    public final int getNType() {
        return this.nType;
    }

    public final int getNUsed() {
        return this.nUsed;
    }

    public final int getNtime() {
        return this.ntime;
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
        this.nType = jceInputStream.read(this.nType, 0, true);
        this.nLeft = jceInputStream.read(this.nLeft, 1, true);
        this.nUsed = jceInputStream.read(this.nUsed, 2, true);
        this.nExcess = jceInputStream.read(this.nExcess, 3, true);
        this.nPaNet = jceInputStream.read(this.nPaNet, 4, true);
        this.nPaMoney = jceInputStream.read(this.nPaMoney, 5, true);
        this.ntime = jceInputStream.read(this.ntime, 6, true);
    }

    public final void setNExcess(int i) {
        this.nExcess = i;
    }

    public final void setNLeft(int i) {
        this.nLeft = i;
    }

    public final void setNPaMoney(int i) {
        this.nPaMoney = i;
    }

    public final void setNPaNet(int i) {
        this.nPaNet = i;
    }

    public final void setNType(int i) {
        this.nType = i;
    }

    public final void setNUsed(int i) {
        this.nUsed = i;
    }

    public final void setNtime(int i) {
        this.ntime = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nType, 0);
        jceOutputStream.write(this.nLeft, 1);
        jceOutputStream.write(this.nUsed, 2);
        jceOutputStream.write(this.nExcess, 3);
        jceOutputStream.write(this.nPaNet, 4);
        jceOutputStream.write(this.nPaMoney, 5);
        jceOutputStream.write(this.ntime, 6);
    }
}
