package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SPhoneType extends JceStruct {
    static final /* synthetic */ boolean a = (!SPhoneType.class.desiredAssertionStatus());
    public int phonetype;

    public SPhoneType() {
        this.phonetype = 0;
        this.phonetype = this.phonetype;
    }

    public SPhoneType(int i) {
        this.phonetype = 0;
        this.phonetype = i;
    }

    public final String className() {
        return "QQPIM.SPhoneType";
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
        new JceDisplayer(sb, i).display(this.phonetype, "phonetype");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.phonetype, ((SPhoneType) obj).phonetype);
    }

    public final int getPhonetype() {
        return this.phonetype;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.phonetype = jceInputStream.read(this.phonetype, 0, true);
    }

    public final void setPhonetype(int i) {
        this.phonetype = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.phonetype, 0);
    }
}
