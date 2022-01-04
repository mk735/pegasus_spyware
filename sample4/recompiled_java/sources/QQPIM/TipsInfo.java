package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TipsInfo.class.desiredAssertionStatus());
    public int atype;
    public String msg;
    public String title;
    public int type;

    public TipsInfo() {
        this.title = "";
        this.msg = "";
        this.type = 0;
        this.atype = 0;
        this.title = this.title;
        this.msg = this.msg;
        this.type = this.type;
        this.atype = this.atype;
    }

    public TipsInfo(String str, String str2, int i, int i2) {
        this.title = "";
        this.msg = "";
        this.type = 0;
        this.atype = 0;
        this.title = str;
        this.msg = str2;
        this.type = i;
        this.atype = i2;
    }

    public final String className() {
        return "QQPIM.TipsInfo";
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
        jceDisplayer.display(this.title, "title");
        jceDisplayer.display(this.msg, "msg");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.atype, "atype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TipsInfo tipsInfo = (TipsInfo) obj;
        return JceUtil.equals(this.title, tipsInfo.title) && JceUtil.equals(this.msg, tipsInfo.msg) && JceUtil.equals(this.type, tipsInfo.type) && JceUtil.equals(this.atype, tipsInfo.atype);
    }

    public final String fullClassName() {
        return "QQPIM.TipsInfo";
    }

    public final int getAtype() {
        return this.atype;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
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
        this.title = jceInputStream.readString(0, true);
        this.msg = jceInputStream.readString(1, true);
        this.type = jceInputStream.read(this.type, 2, true);
        this.atype = jceInputStream.read(this.atype, 3, true);
    }

    public final void setAtype(int i) {
        this.atype = i;
    }

    public final void setMsg(String str) {
        this.msg = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.msg, 1);
        jceOutputStream.write(this.type, 2);
        jceOutputStream.write(this.atype, 3);
    }
}
