package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class CmdInfoRes extends JceStruct implements Cloneable {
    static ArrayList<CloudInfoRes> a;
    static final /* synthetic */ boolean b = (!CmdInfoRes.class.desiredAssertionStatus());
    public ArrayList<CloudInfoRes> infores;

    public CmdInfoRes() {
        this.infores = null;
        this.infores = this.infores;
    }

    public CmdInfoRes(ArrayList<CloudInfoRes> arrayList) {
        this.infores = null;
        this.infores = arrayList;
    }

    public final String className() {
        return "QQPIM.CmdInfoRes";
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
        new JceDisplayer(sb, i).display((Collection) this.infores, "infores");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.infores, ((CmdInfoRes) obj).infores);
    }

    public final String fullClassName() {
        return "QQPIM.CmdInfoRes";
    }

    public final ArrayList<CloudInfoRes> getInfores() {
        return this.infores;
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
            a.add(new CloudInfoRes());
        }
        setInfores((ArrayList) jceInputStream.read((Object) a, 1, true));
    }

    public final void setInfores(ArrayList<CloudInfoRes> arrayList) {
        this.infores = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.infores, 1);
    }
}
