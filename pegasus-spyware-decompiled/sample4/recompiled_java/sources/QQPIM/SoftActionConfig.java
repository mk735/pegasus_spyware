package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftActionConfig extends JceStruct implements Cloneable {
    static FeatureKey a;
    static final /* synthetic */ boolean b = (!SoftActionConfig.class.desiredAssertionStatus());
    public int actionLevel;
    public FeatureKey featureKey;

    public SoftActionConfig() {
        this.featureKey = null;
        this.actionLevel = 0;
        this.featureKey = this.featureKey;
        this.actionLevel = this.actionLevel;
    }

    public SoftActionConfig(FeatureKey featureKey2, int i) {
        this.featureKey = null;
        this.actionLevel = 0;
        this.featureKey = featureKey2;
        this.actionLevel = i;
    }

    public final String className() {
        return "QQPIM.SoftActionConfig";
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
        jceDisplayer.display((JceStruct) this.featureKey, "featureKey");
        jceDisplayer.display(this.actionLevel, "actionLevel");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftActionConfig softActionConfig = (SoftActionConfig) obj;
        return JceUtil.equals(this.featureKey, softActionConfig.featureKey) && JceUtil.equals(this.actionLevel, softActionConfig.actionLevel);
    }

    public final String fullClassName() {
        return "QQPIM.SoftActionConfig";
    }

    public final int getActionLevel() {
        return this.actionLevel;
    }

    public final FeatureKey getFeatureKey() {
        return this.featureKey;
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
        if (a == null) {
            a = new FeatureKey();
        }
        this.featureKey = (FeatureKey) jceInputStream.read((JceStruct) a, 0, true);
        this.actionLevel = jceInputStream.read(this.actionLevel, 1, false);
    }

    public final void setActionLevel(int i) {
        this.actionLevel = i;
    }

    public final void setFeatureKey(FeatureKey featureKey2) {
        this.featureKey = featureKey2;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.featureKey, 0);
        jceOutputStream.write(this.actionLevel, 1);
    }
}
