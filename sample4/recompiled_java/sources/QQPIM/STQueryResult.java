package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class STQueryResult extends JceStruct implements Cloneable {
    static ArrayList<STQueryInfo> a;
    static final /* synthetic */ boolean b = (!STQueryResult.class.desiredAssertionStatus());
    public ArrayList<STQueryInfo> queryinfo;

    public STQueryResult() {
        this.queryinfo = null;
        this.queryinfo = this.queryinfo;
    }

    public STQueryResult(ArrayList<STQueryInfo> arrayList) {
        this.queryinfo = null;
        this.queryinfo = arrayList;
    }

    public final String className() {
        return "QQPIM.STQueryResult";
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
        new JceDisplayer(sb, i).display((Collection) this.queryinfo, "queryinfo");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.queryinfo, ((STQueryResult) obj).queryinfo);
    }

    public final String fullClassName() {
        return "QQPIM.STQueryResult";
    }

    public final ArrayList<STQueryInfo> getQueryinfo() {
        return this.queryinfo;
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
            a.add(new STQueryInfo());
        }
        setQueryinfo((ArrayList) jceInputStream.read((Object) a, 0, false));
    }

    public final void setQueryinfo(ArrayList<STQueryInfo> arrayList) {
        this.queryinfo = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.queryinfo != null) {
            jceOutputStream.write((Collection) this.queryinfo, 0);
        }
    }
}
