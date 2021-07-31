package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STQuery extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!STQuery.class.desiredAssertionStatus());
    public String nArea;
    public String nOperator;
    public int nQuerytype;
    public String nType;

    public STQuery() {
        this.nArea = "";
        this.nOperator = "";
        this.nType = "";
        this.nQuerytype = 0;
        this.nArea = this.nArea;
        this.nOperator = this.nOperator;
        this.nType = this.nType;
        this.nQuerytype = this.nQuerytype;
    }

    public STQuery(String str, String str2, String str3, int i) {
        this.nArea = "";
        this.nOperator = "";
        this.nType = "";
        this.nQuerytype = 0;
        this.nArea = str;
        this.nOperator = str2;
        this.nType = str3;
        this.nQuerytype = i;
    }

    public final String className() {
        return "QQPIM.STQuery";
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
        jceDisplayer.display(this.nArea, "nArea");
        jceDisplayer.display(this.nOperator, "nOperator");
        jceDisplayer.display(this.nType, "nType");
        jceDisplayer.display(this.nQuerytype, "nQuerytype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STQuery sTQuery = (STQuery) obj;
        return JceUtil.equals(this.nArea, sTQuery.nArea) && JceUtil.equals(this.nOperator, sTQuery.nOperator) && JceUtil.equals(this.nType, sTQuery.nType) && JceUtil.equals(this.nQuerytype, sTQuery.nQuerytype);
    }

    public final String fullClassName() {
        return "QQPIM.STQuery";
    }

    public final String getNArea() {
        return this.nArea;
    }

    public final String getNOperator() {
        return this.nOperator;
    }

    public final int getNQuerytype() {
        return this.nQuerytype;
    }

    public final String getNType() {
        return this.nType;
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
        this.nArea = jceInputStream.readString(0, true);
        this.nOperator = jceInputStream.readString(1, true);
        this.nType = jceInputStream.readString(2, true);
        this.nQuerytype = jceInputStream.read(this.nQuerytype, 3, true);
    }

    public final void setNArea(String str) {
        this.nArea = str;
    }

    public final void setNOperator(String str) {
        this.nOperator = str;
    }

    public final void setNQuerytype(int i) {
        this.nQuerytype = i;
    }

    public final void setNType(String str) {
        this.nType = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nArea, 0);
        jceOutputStream.write(this.nOperator, 1);
        jceOutputStream.write(this.nType, 2);
        jceOutputStream.write(this.nQuerytype, 3);
    }
}
