package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBMobile extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FBMobile.class.desiredAssertionStatus());
    public String city;
    public int mtype;
    public String phone;
    public int sp;
    public String state;

    public FBMobile() {
        this.phone = "";
        this.mtype = 0;
        this.state = "";
        this.city = "";
        this.sp = 0;
        this.phone = this.phone;
        this.mtype = this.mtype;
        this.state = this.state;
        this.city = this.city;
        this.sp = this.sp;
    }

    public FBMobile(String str, int i, String str2, String str3, int i2) {
        this.phone = "";
        this.mtype = 0;
        this.state = "";
        this.city = "";
        this.sp = 0;
        this.phone = str;
        this.mtype = i;
        this.state = str2;
        this.city = str3;
        this.sp = i2;
    }

    public final String className() {
        return "QQPIM.FBMobile";
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
        jceDisplayer.display(this.phone, "phone");
        jceDisplayer.display(this.mtype, "mtype");
        jceDisplayer.display(this.state, "state");
        jceDisplayer.display(this.city, "city");
        jceDisplayer.display(this.sp, "sp");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FBMobile fBMobile = (FBMobile) obj;
        return JceUtil.equals(this.phone, fBMobile.phone) && JceUtil.equals(this.mtype, fBMobile.mtype) && JceUtil.equals(this.state, fBMobile.state) && JceUtil.equals(this.city, fBMobile.city) && JceUtil.equals(this.sp, fBMobile.sp);
    }

    public final String fullClassName() {
        return "QQPIM.FBMobile";
    }

    public final String getCity() {
        return this.city;
    }

    public final int getMtype() {
        return this.mtype;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final int getSp() {
        return this.sp;
    }

    public final String getState() {
        return this.state;
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
        this.phone = jceInputStream.readString(0, true);
        this.mtype = jceInputStream.read(this.mtype, 1, true);
        this.state = jceInputStream.readString(2, true);
        this.city = jceInputStream.readString(3, true);
        this.sp = jceInputStream.read(this.sp, 4, true);
    }

    public final void setCity(String str) {
        this.city = str;
    }

    public final void setMtype(int i) {
        this.mtype = i;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setSp(int i) {
        this.sp = i;
    }

    public final void setState(String str) {
        this.state = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.phone, 0);
        jceOutputStream.write(this.mtype, 1);
        jceOutputStream.write(this.state, 2);
        jceOutputStream.write(this.city, 3);
        jceOutputStream.write(this.sp, 4);
    }
}
