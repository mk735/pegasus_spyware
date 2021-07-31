package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhoneType extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!PhoneType.class.desiredAssertionStatus());
    public int phonetype;
    public int subplatform;

    public PhoneType() {
        this.phonetype = 0;
        this.subplatform = ESubPlatform.ESP_NONE.value();
        this.phonetype = this.phonetype;
        this.subplatform = this.subplatform;
    }

    public PhoneType(int i, int i2) {
        this.phonetype = 0;
        this.subplatform = ESubPlatform.ESP_NONE.value();
        this.phonetype = i;
        this.subplatform = i2;
    }

    public final String className() {
        return "QQPIM.PhoneType";
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
        jceDisplayer.display(this.phonetype, "phonetype");
        jceDisplayer.display(this.subplatform, "subplatform");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        PhoneType phoneType = (PhoneType) obj;
        return JceUtil.equals(this.phonetype, phoneType.phonetype) && JceUtil.equals(this.subplatform, phoneType.subplatform);
    }

    public final String fullClassName() {
        return "QQPIM.PhoneType";
    }

    public final int getPhonetype() {
        return this.phonetype;
    }

    public final int getSubplatform() {
        return this.subplatform;
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
        this.phonetype = jceInputStream.read(this.phonetype, 0, true);
        this.subplatform = jceInputStream.read(this.subplatform, 1, false);
    }

    public final void setPhonetype(int i) {
        this.phonetype = i;
    }

    public final void setSubplatform(int i) {
        this.subplatform = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.phonetype, 0);
        jceOutputStream.write(this.subplatform, 1);
    }
}
