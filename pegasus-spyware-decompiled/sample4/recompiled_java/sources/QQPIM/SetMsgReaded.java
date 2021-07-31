package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SetMsgReaded extends JceStruct {
    static final /* synthetic */ boolean a = (!SetMsgReaded.class.desiredAssertionStatus());
    public byte issetreaded;

    public SetMsgReaded() {
        this.issetreaded = 0;
        this.issetreaded = this.issetreaded;
    }

    public SetMsgReaded(byte b) {
        this.issetreaded = 0;
        this.issetreaded = b;
    }

    public final String className() {
        return "QQPIM.SetMsgReaded";
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
        new JceDisplayer(sb, i).display(this.issetreaded, "issetreaded");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.issetreaded, ((SetMsgReaded) obj).issetreaded);
    }

    public final String fullClassName() {
        return "QQPIM.SetMsgReaded";
    }

    public final byte getIssetreaded() {
        return this.issetreaded;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.issetreaded = jceInputStream.read(this.issetreaded, 0, true);
    }

    public final void setIssetreaded(byte b) {
        this.issetreaded = b;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.issetreaded, 0);
    }
}
