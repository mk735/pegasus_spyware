package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenUIActionInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!OpenUIActionInfo.class.desiredAssertionStatus());
    public int action;
    public String msg;
    public String title;
    public int uiid;

    public OpenUIActionInfo() {
        this.uiid = 0;
        this.action = 0;
        this.title = "";
        this.msg = "";
        this.uiid = this.uiid;
        this.action = this.action;
        this.title = this.title;
        this.msg = this.msg;
    }

    public OpenUIActionInfo(int i, int i2, String str, String str2) {
        this.uiid = 0;
        this.action = 0;
        this.title = "";
        this.msg = "";
        this.uiid = i;
        this.action = i2;
        this.title = str;
        this.msg = str2;
    }

    public final String className() {
        return "QQPIM.OpenUIActionInfo";
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
        jceDisplayer.display(this.uiid, "uiid");
        jceDisplayer.display(this.action, "action");
        jceDisplayer.display(this.title, "title");
        jceDisplayer.display(this.msg, "msg");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        OpenUIActionInfo openUIActionInfo = (OpenUIActionInfo) obj;
        return JceUtil.equals(this.uiid, openUIActionInfo.uiid) && JceUtil.equals(this.action, openUIActionInfo.action) && JceUtil.equals(this.title, openUIActionInfo.title) && JceUtil.equals(this.msg, openUIActionInfo.msg);
    }

    public final String fullClassName() {
        return "QQPIM.OpenUIActionInfo";
    }

    public final int getAction() {
        return this.action;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getUiid() {
        return this.uiid;
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
        this.uiid = jceInputStream.read(this.uiid, 0, true);
        this.action = jceInputStream.read(this.action, 1, false);
        this.title = jceInputStream.readString(2, false);
        this.msg = jceInputStream.readString(3, false);
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setMsg(String str) {
        this.msg = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUiid(int i) {
        this.uiid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uiid, 0);
        jceOutputStream.write(this.action, 1);
        if (this.title != null) {
            jceOutputStream.write(this.title, 2);
        }
        if (this.msg != null) {
            jceOutputStream.write(this.msg, 3);
        }
    }
}
