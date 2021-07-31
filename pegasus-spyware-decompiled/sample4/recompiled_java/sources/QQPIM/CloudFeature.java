package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudFeature extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!CloudFeature.class.desiredAssertionStatus());
    public long hashKey;
    public boolean isRom;

    public CloudFeature() {
        this.hashKey = 0;
        this.isRom = false;
        this.hashKey = this.hashKey;
        this.isRom = this.isRom;
    }

    public CloudFeature(long j, boolean z) {
        this.hashKey = 0;
        this.isRom = false;
        this.hashKey = j;
        this.isRom = z;
    }

    public final String className() {
        return "QQPIM.CloudFeature";
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
        jceDisplayer.display(this.hashKey, "hashKey");
        jceDisplayer.display(this.isRom, "isRom");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudFeature cloudFeature = (CloudFeature) obj;
        return JceUtil.equals(this.hashKey, cloudFeature.hashKey) && JceUtil.equals(this.isRom, cloudFeature.isRom);
    }

    public final String fullClassName() {
        return "QQPIM.CloudFeature";
    }

    public final long getHashKey() {
        return this.hashKey;
    }

    public final boolean getIsRom() {
        return this.isRom;
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
        this.hashKey = jceInputStream.read(this.hashKey, 0, true);
        this.isRom = jceInputStream.read(this.isRom, 1, false);
    }

    public final void setHashKey(long j) {
        this.hashKey = j;
    }

    public final void setIsRom(boolean z) {
        this.isRom = z;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.hashKey, 0);
        jceOutputStream.write(this.isRom, 1);
    }
}
