package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBURL extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FBURL.class.desiredAssertionStatus());
    public String content;
    public String phone;
    public String url;

    public FBURL() {
        this.url = "";
        this.phone = "";
        this.content = "";
        this.url = this.url;
        this.phone = this.phone;
        this.content = this.content;
    }

    public FBURL(String str, String str2, String str3) {
        this.url = "";
        this.phone = "";
        this.content = "";
        this.url = str;
        this.phone = str2;
        this.content = str3;
    }

    public final String className() {
        return "QQPIM.FBURL";
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
        jceDisplayer.display(this.phone, "phone");
        jceDisplayer.display(this.content, AppDatabase.CONTENT);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FBURL fburl = (FBURL) obj;
        return JceUtil.equals(this.url, fburl.url) && JceUtil.equals(this.phone, fburl.phone) && JceUtil.equals(this.content, fburl.content);
    }

    public final String fullClassName() {
        return "QQPIM.FBURL";
    }

    public final String getContent() {
        return this.content;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getUrl() {
        return this.url;
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
        this.url = jceInputStream.readString(0, true);
        this.phone = jceInputStream.readString(1, true);
        this.content = jceInputStream.readString(2, true);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.url, 0);
        jceOutputStream.write(this.phone, 1);
        jceOutputStream.write(this.content, 2);
    }
}
