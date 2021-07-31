package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Cell extends JceStruct {
    static final /* synthetic */ boolean a = (!Cell.class.desiredAssertionStatus());
    public int iCellId;
    public int iLac;
    public short shMcc;
    public short shMnc;

    public Cell() {
        this.shMcc = -1;
        this.shMnc = -1;
        this.iLac = -1;
        this.iCellId = -1;
        this.shMcc = this.shMcc;
        this.shMnc = this.shMnc;
        this.iLac = this.iLac;
        this.iCellId = this.iCellId;
    }

    public Cell(short s, short s2, int i, int i2) {
        this.shMcc = -1;
        this.shMnc = -1;
        this.iLac = -1;
        this.iCellId = -1;
        this.shMcc = s;
        this.shMnc = s2;
        this.iLac = i;
        this.iCellId = i2;
    }

    public final String className() {
        return "LBSAPIProtocol.Cell";
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
        jceDisplayer.display(this.shMcc, "shMcc");
        jceDisplayer.display(this.shMnc, "shMnc");
        jceDisplayer.display(this.iLac, "iLac");
        jceDisplayer.display(this.iCellId, "iCellId");
    }

    public final boolean equals(Object obj) {
        Cell cell = (Cell) obj;
        return JceUtil.equals(this.shMcc, cell.shMcc) && JceUtil.equals(this.shMnc, cell.shMnc) && JceUtil.equals(this.iLac, cell.iLac) && JceUtil.equals(this.iCellId, cell.iCellId);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.Cell";
    }

    public final int getICellId() {
        return this.iCellId;
    }

    public final int getILac() {
        return this.iLac;
    }

    public final short getShMcc() {
        return this.shMcc;
    }

    public final short getShMnc() {
        return this.shMnc;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.shMcc = jceInputStream.read(this.shMcc, 0, true);
        this.shMnc = jceInputStream.read(this.shMnc, 1, true);
        this.iLac = jceInputStream.read(this.iLac, 2, true);
        this.iCellId = jceInputStream.read(this.iCellId, 3, true);
    }

    public final void setICellId(int i) {
        this.iCellId = i;
    }

    public final void setILac(int i) {
        this.iLac = i;
    }

    public final void setShMcc(short s) {
        this.shMcc = s;
    }

    public final void setShMnc(short s) {
        this.shMnc = s;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.shMcc, 0);
        jceOutputStream.write(this.shMnc, 1);
        jceOutputStream.write(this.iLac, 2);
        jceOutputStream.write(this.iCellId, 3);
    }
}
