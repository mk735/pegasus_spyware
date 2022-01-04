package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class uploadPacketInfoResp extends JceStruct {
    static final /* synthetic */ boolean a = (!uploadPacketInfoResp.class.desiredAssertionStatus());
    public int is_succ;

    public uploadPacketInfoResp() {
        this.is_succ = 0;
        this.is_succ = this.is_succ;
    }

    public uploadPacketInfoResp(int i) {
        this.is_succ = 0;
        this.is_succ = i;
    }

    public final String className() {
        return "QQPIM.uploadPacketInfoResp";
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
        new JceDisplayer(sb, i).display(this.is_succ, "is_succ");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.is_succ, ((uploadPacketInfoResp) obj).is_succ);
    }

    public final int getIs_succ() {
        return this.is_succ;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.is_succ = jceInputStream.read(this.is_succ, 0, true);
    }

    public final void setIs_succ(int i) {
        this.is_succ = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.is_succ, 0);
    }
}
