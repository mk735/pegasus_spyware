package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;

public final class UploadInfo extends JceStruct {
    static final /* synthetic */ boolean a = (!UploadInfo.class.desiredAssertionStatus());
    public long pos;
    public int size;

    public UploadInfo() {
        this.pos = 0;
        this.size = 0;
        this.pos = this.pos;
        this.size = this.size;
    }

    public UploadInfo(long j, int i) {
        this.pos = 0;
        this.size = 0;
        this.pos = j;
        this.size = i;
    }

    public final String className() {
        return "QQPIM.UploadInfo";
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
        UploadInfo uploadInfo = (UploadInfo) obj;
        return JceUtil.equals(this.pos, uploadInfo.pos) && JceUtil.equals(this.size, uploadInfo.size);
    }

    public final String fullClassName() {
        return "QQPIM.UploadInfo";
    }

    public final long getPos() {
        return this.pos;
    }

    public final int getSize() {
        return this.size;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.pos = jceInputStream.read(this.pos, 0, true);
        this.size = jceInputStream.read(this.size, 1, true);
    }

    public final void setPos(long j) {
        this.pos = j;
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
