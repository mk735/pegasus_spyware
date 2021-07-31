package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class RspTemplate extends JceStruct {
    static ArrayList<UrlCheckResponse> a;
    static final /* synthetic */ boolean b = (!RspTemplate.class.desiredAssertionStatus());
    public ArrayList<UrlCheckResponse> rspTemp;

    public RspTemplate() {
        this.rspTemp = null;
        this.rspTemp = this.rspTemp;
    }

    public RspTemplate(ArrayList<UrlCheckResponse> arrayList) {
        this.rspTemp = null;
        this.rspTemp = arrayList;
    }

    public final String className() {
        return "QQPIM.RspTemplate";
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
        new JceDisplayer(sb, i).display((Collection) this.rspTemp, "rspTemp");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.rspTemp, ((RspTemplate) obj).rspTemp);
    }

    public final ArrayList<UrlCheckResponse> getRspTemp() {
        return this.rspTemp;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new ArrayList<>();
            a.add(new UrlCheckResponse());
        }
        setRspTemp((ArrayList) jceInputStream.read((Object) a, 0, false));
    }

    public final void setRspTemp(ArrayList<UrlCheckResponse> arrayList) {
        this.rspTemp = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.rspTemp != null) {
            jceOutputStream.write((Collection) this.rspTemp, 0);
        }
    }
}
