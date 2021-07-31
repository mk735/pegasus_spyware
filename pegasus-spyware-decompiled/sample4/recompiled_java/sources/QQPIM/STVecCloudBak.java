package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class STVecCloudBak extends JceStruct implements Cloneable {
    static ArrayList<STCloudOrderBak> a;
    static final /* synthetic */ boolean b = (!STVecCloudBak.class.desiredAssertionStatus());
    public ArrayList<STCloudOrderBak> vecbak;

    public STVecCloudBak() {
        this.vecbak = null;
        this.vecbak = this.vecbak;
    }

    public STVecCloudBak(ArrayList<STCloudOrderBak> arrayList) {
        this.vecbak = null;
        this.vecbak = arrayList;
    }

    public final String className() {
        return "QQPIM.STVecCloudBak";
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
        new JceDisplayer(sb, i).display((Collection) this.vecbak, "vecbak");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.vecbak, ((STVecCloudBak) obj).vecbak);
    }

    public final String fullClassName() {
        return "QQPIM.STVecCloudBak";
    }

    public final ArrayList<STCloudOrderBak> getVecbak() {
        return this.vecbak;
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
            a = new ArrayList<>();
            a.add(new STCloudOrderBak());
        }
        setVecbak((ArrayList) jceInputStream.read((Object) a, 0, false));
    }

    public final void setVecbak(ArrayList<STCloudOrderBak> arrayList) {
        this.vecbak = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.vecbak != null) {
            jceOutputStream.write((Collection) this.vecbak, 0);
        }
    }
}
