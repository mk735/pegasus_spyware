package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class HotWordReqInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!HotWordReqInfo.class.desiredAssertionStatus());
    public int index;
    public int num;
    public int version;

    public HotWordReqInfo() {
        this.version = 0;
        this.index = 0;
        this.num = 0;
        this.version = this.version;
        this.index = this.index;
        this.num = this.num;
    }

    public HotWordReqInfo(int i, int i2, int i3) {
        this.version = 0;
        this.index = 0;
        this.num = 0;
        this.version = i;
        this.index = i2;
        this.num = i3;
    }

    public final String className() {
        return "QQPIM.HotWordReqInfo";
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
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.index, "index");
        jceDisplayer.display(this.num, "num");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        HotWordReqInfo hotWordReqInfo = (HotWordReqInfo) obj;
        return JceUtil.equals(this.version, hotWordReqInfo.version) && JceUtil.equals(this.index, hotWordReqInfo.index) && JceUtil.equals(this.num, hotWordReqInfo.num);
    }

    public final String fullClassName() {
        return "QQPIM.HotWordReqInfo";
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getNum() {
        return this.num;
    }

    public final int getVersion() {
        return this.version;
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
        this.version = jceInputStream.read(this.version, 0, true);
        this.index = jceInputStream.read(this.index, 1, true);
        this.num = jceInputStream.read(this.num, 2, true);
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    public final void setNum(int i) {
        this.num = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.version, 0);
        jceOutputStream.write(this.index, 1);
        jceOutputStream.write(this.num, 2);
    }
}
