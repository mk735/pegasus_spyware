package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UrlCheckRequest extends JceStruct {
    static final /* synthetic */ boolean a = (!UrlCheckRequest.class.desiredAssertionStatus());
    public String ext;
    public int seq;
    public String url;

    public UrlCheckRequest() {
        this.url = "";
        this.ext = "";
        this.seq = 0;
        this.url = this.url;
        this.ext = this.ext;
        this.seq = this.seq;
    }

    public UrlCheckRequest(String str, String str2, int i) {
        this.url = "";
        this.ext = "";
        this.seq = 0;
        this.url = str;
        this.ext = str2;
        this.seq = i;
    }

    public final String className() {
        return "QQPIM.UrlCheckRequest";
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
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display(this.ext, "ext");
        jceDisplayer.display(this.seq, "seq");
    }

    public final boolean equals(Object obj) {
        UrlCheckRequest urlCheckRequest = (UrlCheckRequest) obj;
        return JceUtil.equals(this.url, urlCheckRequest.url) && JceUtil.equals(this.ext, urlCheckRequest.ext) && JceUtil.equals(this.seq, urlCheckRequest.seq);
    }

    public final String getExt() {
        return this.ext;
    }

    public final int getSeq() {
        return this.seq;
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.url = jceInputStream.readString(0, true);
        this.ext = jceInputStream.readString(1, false);
        this.seq = jceInputStream.read(this.seq, 2, false);
    }

    public final void setExt(String str) {
        this.ext = str;
    }

    public final void setSeq(int i) {
        this.seq = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.url, 0);
        if (this.ext != null) {
            jceOutputStream.write(this.ext, 1);
        }
        jceOutputStream.write(this.seq, 2);
    }
}
