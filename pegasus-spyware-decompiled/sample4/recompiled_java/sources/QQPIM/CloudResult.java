package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudResult extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!CloudResult.class.desiredAssertionStatus());
    public long hashKey;
    public int safeType;

    public CloudResult() {
        this.hashKey = 0;
        this.safeType = 0;
        this.hashKey = this.hashKey;
        this.safeType = this.safeType;
    }

    public CloudResult(long j, int i) {
        this.hashKey = 0;
        this.safeType = 0;
        this.hashKey = j;
        this.safeType = i;
    }

    public final String className() {
        return "QQPIM.CloudResult";
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
        jceDisplayer.display(this.safeType, "safeType");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudResult cloudResult = (CloudResult) obj;
        return JceUtil.equals(this.hashKey, cloudResult.hashKey) && JceUtil.equals(this.safeType, cloudResult.safeType);
    }

    public final String fullClassName() {
        return "QQPIM.CloudResult";
    }

    public final long getHashKey() {
        return this.hashKey;
    }

    public final int getSafeType() {
        return this.safeType;
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
        this.safeType = jceInputStream.read(this.safeType, 1, true);
    }

    public final void setHashKey(long j) {
        this.hashKey = j;
    }

    public final void setSafeType(int i) {
        this.safeType = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.hashKey, 0);
        jceOutputStream.write(this.safeType, 1);
    }
}
