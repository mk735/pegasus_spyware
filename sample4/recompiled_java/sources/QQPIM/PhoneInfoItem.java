package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhoneInfoItem extends JceStruct implements Cloneable {
    static byte[] a;
    static final /* synthetic */ boolean b = (!PhoneInfoItem.class.desiredAssertionStatus());
    public byte[] info;
    public int infoid;

    public PhoneInfoItem() {
        this.infoid = 0;
        this.info = null;
        this.infoid = this.infoid;
        this.info = this.info;
    }

    public PhoneInfoItem(int i, byte[] bArr) {
        this.infoid = 0;
        this.info = null;
        this.infoid = i;
        this.info = bArr;
    }

    public final String className() {
        return "QQPIM.PhoneInfoItem";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (b) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.infoid, "infoid");
        jceDisplayer.display(this.info, "info");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        PhoneInfoItem phoneInfoItem = (PhoneInfoItem) obj;
        return JceUtil.equals(this.infoid, phoneInfoItem.infoid) && JceUtil.equals(this.info, phoneInfoItem.info);
    }

    public final String fullClassName() {
        return "QQPIM.PhoneInfoItem";
    }

    public final byte[] getInfo() {
        return this.info;
    }

    public final int getInfoid() {
        return this.infoid;
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
        this.infoid = jceInputStream.read(this.infoid, 0, true);
        if (a == null) {
            a = new byte[1];
            a[0] = 0;
        }
        this.info = jceInputStream.read(a, 1, true);
    }

    public final void setInfo(byte[] bArr) {
        this.info = bArr;
    }

    public final void setInfoid(int i) {
        this.infoid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.infoid, 0);
        jceOutputStream.write(this.info, 1);
    }
}
