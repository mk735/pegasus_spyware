package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;

public final class UploadFile extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!UploadFile.class.desiredAssertionStatus());
    public int pos;
    public int size;

    public UploadFile() {
        this.pos = 0;
        this.size = 0;
        this.pos = this.pos;
        this.size = this.size;
    }

    public UploadFile(int i, int i2) {
        this.pos = 0;
        this.size = 0;
        this.pos = i;
        this.size = i2;
    }

    public final String className() {
        return "QQPIM.UploadFile";
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
        jceDisplayer.display(this.pos, "pos");
        jceDisplayer.display(this.size, AppEntity.KEY_SIZE_LONG);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        UploadFile uploadFile = (UploadFile) obj;
        return JceUtil.equals(this.pos, uploadFile.pos) && JceUtil.equals(this.size, uploadFile.size);
    }

    public final String fullClassName() {
        return "QQPIM.UploadFile";
    }

    public final int getPos() {
        return this.pos;
    }

    public final int getSize() {
        return this.size;
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
        this.pos = jceInputStream.read(this.pos, 0, true);
        this.size = jceInputStream.read(this.size, 1, true);
    }

    public final void setPos(int i) {
        this.pos = i;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pos, 0);
        jceOutputStream.write(this.size, 1);
    }
}
