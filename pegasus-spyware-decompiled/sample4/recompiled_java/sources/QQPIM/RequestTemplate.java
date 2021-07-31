package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class RequestTemplate extends JceStruct {
    static ArrayList<UrlCheckRequest> a;
    static final /* synthetic */ boolean b = (!RequestTemplate.class.desiredAssertionStatus());
    public ArrayList<UrlCheckRequest> reqTemp;

    public RequestTemplate() {
        this.reqTemp = null;
        this.reqTemp = this.reqTemp;
    }

    public RequestTemplate(ArrayList<UrlCheckRequest> arrayList) {
        this.reqTemp = null;
        this.reqTemp = arrayList;
    }

    public final String className() {
        return "QQPIM.RequestTemplate";
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
        new JceDisplayer(sb, i).display((Collection) this.reqTemp, "reqTemp");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.reqTemp, ((RequestTemplate) obj).reqTemp);
    }

    public final ArrayList<UrlCheckRequest> getReqTemp() {
        return this.reqTemp;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new ArrayList<>();
            a.add(new UrlCheckRequest());
        }
        setReqTemp((ArrayList) jceInputStream.read((Object) a, 0, false));
    }

    public final void setReqTemp(ArrayList<UrlCheckRequest> arrayList) {
        this.reqTemp = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.reqTemp != null) {
            jceOutputStream.write((Collection) this.reqTemp, 0);
        }
    }
}
