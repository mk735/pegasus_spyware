package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class SoftAction extends JceStruct implements Cloneable {
    static FeatureKey a;
    static ArrayList<ActionItem> b;
    static final /* synthetic */ boolean c = (!SoftAction.class.desiredAssertionStatus());
    public FeatureKey featurekey;
    public ArrayList<ActionItem> vecaction;

    public SoftAction() {
        this.featurekey = null;
        this.vecaction = null;
        this.featurekey = this.featurekey;
        this.vecaction = this.vecaction;
    }

    public SoftAction(FeatureKey featureKey, ArrayList<ActionItem> arrayList) {
        this.featurekey = null;
        this.vecaction = null;
        this.featurekey = featureKey;
        this.vecaction = arrayList;
    }

    public final String className() {
        return "QQPIM.SoftAction";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.featurekey, "featurekey");
        jceDisplayer.display((Collection) this.vecaction, "vecaction");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftAction softAction = (SoftAction) obj;
        return JceUtil.equals(this.featurekey, softAction.featurekey) && JceUtil.equals(this.vecaction, softAction.vecaction);
    }

    public final String fullClassName() {
        return "QQPIM.SoftAction";
    }

    public final FeatureKey getFeaturekey() {
        return this.featurekey;
    }

    public final ArrayList<ActionItem> getVecaction() {
        return this.vecaction;
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
        this.featurekey = (FeatureKey) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList<>();
            b.add(new ActionItem());
        }
        setVecaction((ArrayList) jceInputStream.read((Object) b, 1, true));
    }

    public final void setFeaturekey(FeatureKey featureKey) {
        this.featurekey = featureKey;
    }

    public final void setVecaction(ArrayList<ActionItem> arrayList) {
        this.vecaction = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.featurekey, 0);
        jceOutputStream.write((Collection) this.vecaction, 1);
    }
}
