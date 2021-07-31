package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBWBList extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FBWBList.class.desiredAssertionStatus());
    public int listtype;
    public String phone;

    public FBWBList() {
        this.listtype = 0;
        this.phone = "";
        this.listtype = this.listtype;
        this.phone = this.phone;
    }

    public FBWBList(int i, String str) {
        this.listtype = 0;
        this.phone = "";
        this.listtype = i;
        this.phone = str;
    }

    public final String className() {
        return "QQPIM.FBWBList";
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
        jceDisplayer.display(this.listtype, "listtype");
        jceDisplayer.display(this.phone, "phone");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FBWBList fBWBList = (FBWBList) obj;
        return JceUtil.equals(this.listtype, fBWBList.listtype) && JceUtil.equals(this.phone, fBWBList.phone);
    }

    public final String fullClassName() {
        return "QQPIM.FBWBList";
    }

    public final int getListtype() {
        return this.listtype;
    }

    public final String getPhone() {
        return this.phone;
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
        this.listtype = jceInputStream.read(this.listtype, 0, true);
        this.phone = jceInputStream.readString(1, true);
    }

    public final void setListtype(int i) {
        this.listtype = i;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.listtype, 0);
        jceOutputStream.write(this.phone, 1);
    }
}
