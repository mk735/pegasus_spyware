package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UrlCheckResponse extends JceStruct {
    static final /* synthetic */ boolean a = (!UrlCheckResponse.class.desiredAssertionStatus());
    public String desc;
    public int mainHarmId;
    public int seq;
    public int subHarmId;
    public String url;

    public UrlCheckResponse() {
        this.url = "";
        this.mainHarmId = 0;
        this.subHarmId = 0;
        this.seq = 0;
        this.desc = "";
        this.url = this.url;
        this.mainHarmId = this.mainHarmId;
        this.subHarmId = this.subHarmId;
        this.seq = this.seq;
        this.desc = this.desc;
    }

    public UrlCheckResponse(String str, int i, int i2, int i3, String str2) {
        this.url = "";
        this.mainHarmId = 0;
        this.subHarmId = 0;
        this.seq = 0;
        this.desc = "";
        this.url = str;
        this.mainHarmId = i;
        this.subHarmId = i2;
        this.seq = i3;
        this.desc = str2;
    }

    public final String className() {
        return "QQPIM.UrlCheckResponse";
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
        jceDisplayer.display(this.mainHarmId, "mainHarmId");
        jceDisplayer.display(this.subHarmId, "subHarmId");
        jceDisplayer.display(this.seq, "seq");
        jceDisplayer.display(this.desc, "desc");
    }

    public final boolean equals(Object obj) {
        UrlCheckResponse urlCheckResponse = (UrlCheckResponse) obj;
        return JceUtil.equals(this.url, urlCheckResponse.url) && JceUtil.equals(this.mainHarmId, urlCheckResponse.mainHarmId) && JceUtil.equals(this.subHarmId, urlCheckResponse.subHarmId) && JceUtil.equals(this.seq, urlCheckResponse.seq) && JceUtil.equals(this.desc, urlCheckResponse.desc);
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getMainHarmId() {
        return this.mainHarmId;
    }

    public final int getSeq() {
        return this.seq;
    }

    public final int getSubHarmId() {
        return this.subHarmId;
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.url = jceInputStream.readString(0, true);
        this.mainHarmId = jceInputStream.read(this.mainHarmId, 1, true);
        this.subHarmId = jceInputStream.read(this.subHarmId, 2, false);
        this.seq = jceInputStream.read(this.seq, 3, false);
        this.desc = jceInputStream.readString(4, false);
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setMainHarmId(int i) {
        this.mainHarmId = i;
    }

    public final void setSeq(int i) {
        this.seq = i;
    }

    public final void setSubHarmId(int i) {
        this.subHarmId = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.url, 0);
        jceOutputStream.write(this.mainHarmId, 1);
        jceOutputStream.write(this.subHarmId, 2);
        jceOutputStream.write(this.seq, 3);
        if (this.desc != null) {
            jceOutputStream.write(this.desc, 4);
        }
    }
}
