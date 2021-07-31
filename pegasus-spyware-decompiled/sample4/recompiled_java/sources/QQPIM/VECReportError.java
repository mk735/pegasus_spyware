package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class VECReportError extends JceStruct implements Cloneable {
    static ArrayList<STReportError> a;
    static final /* synthetic */ boolean b = (!VECReportError.class.desiredAssertionStatus());
    public ArrayList<STReportError> queryinfo;

    public VECReportError() {
        this.queryinfo = null;
        this.queryinfo = this.queryinfo;
    }

    public VECReportError(ArrayList<STReportError> arrayList) {
        this.queryinfo = null;
        this.queryinfo = arrayList;
    }

    public final String className() {
        return "QQPIM.VECReportError";
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
        return JceUtil.equals(this.queryinfo, ((VECReportError) obj).queryinfo);
    }

    public final String fullClassName() {
        return "QQPIM.VECReportError";
    }

    public final ArrayList<STReportError> getQueryinfo() {
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
            a.add(new STReportError());
        }
        setQueryinfo((ArrayList) jceInputStream.read((Object) a, 0, true));
    }

    public final void setQueryinfo(ArrayList<STReportError> arrayList) {
        this.queryinfo = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.queryinfo, 0);
    }
}
