package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MQQSecRunInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!MQQSecRunInfo.class.desiredAssertionStatus());
    public int option;

    public MQQSecRunInfo() {
        this.option = 0;
        this.option = this.option;
    }

    public MQQSecRunInfo(int i) {
        this.option = 0;
        this.option = i;
    }

    public final String className() {
        return "QQPIM.MQQSecRunInfo";
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
        new JceDisplayer(sb, i).display(this.option, "option");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.option, ((MQQSecRunInfo) obj).option);
    }

    public final String fullClassName() {
        return "QQPIM.MQQSecRunInfo";
    }

    public final int getOption() {
        return this.option;
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
        this.option = jceInputStream.read(this.option, 0, true);
    }

    public final void setOption(int i) {
        this.option = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.option, 0);
    }
}
