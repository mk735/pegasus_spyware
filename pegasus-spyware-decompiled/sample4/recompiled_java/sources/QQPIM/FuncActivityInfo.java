package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FuncActivityInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FuncActivityInfo.class.desiredAssertionStatus());
    public String activityid;
    public String detailurl;
    public int location;
    public String wording;

    public FuncActivityInfo() {
        this.activityid = "";
        this.location = 0;
        this.wording = "";
        this.detailurl = "";
        this.activityid = this.activityid;
        this.location = this.location;
        this.wording = this.wording;
        this.detailurl = this.detailurl;
    }

    public FuncActivityInfo(String str, int i, String str2, String str3) {
        this.activityid = "";
        this.location = 0;
        this.wording = "";
        this.detailurl = "";
        this.activityid = str;
        this.location = i;
        this.wording = str2;
        this.detailurl = str3;
    }

    public final String className() {
        return "QQPIM.FuncActivityInfo";
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
        jceDisplayer.display(this.activityid, "activityid");
        jceDisplayer.display(this.location, "location");
        jceDisplayer.display(this.wording, "wording");
        jceDisplayer.display(this.detailurl, "detailurl");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FuncActivityInfo funcActivityInfo = (FuncActivityInfo) obj;
        return JceUtil.equals(this.activityid, funcActivityInfo.activityid) && JceUtil.equals(this.location, funcActivityInfo.location) && JceUtil.equals(this.wording, funcActivityInfo.wording) && JceUtil.equals(this.detailurl, funcActivityInfo.detailurl);
    }

    public final String fullClassName() {
        return "QQPIM.FuncActivityInfo";
    }

    public final String getActivityid() {
        return this.activityid;
    }

    public final String getDetailurl() {
        return this.detailurl;
    }

    public final int getLocation() {
        return this.location;
    }

    public final String getWording() {
        return this.wording;
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
        this.activityid = jceInputStream.readString(0, true);
        this.location = jceInputStream.read(this.location, 1, true);
        this.wording = jceInputStream.readString(2, true);
        this.detailurl = jceInputStream.readString(3, false);
    }

    public final void setActivityid(String str) {
        this.activityid = str;
    }

    public final void setDetailurl(String str) {
        this.detailurl = str;
    }

    public final void setLocation(int i) {
        this.location = i;
    }

    public final void setWording(String str) {
        this.wording = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.activityid, 0);
        jceOutputStream.write(this.location, 1);
        jceOutputStream.write(this.wording, 2);
        if (this.detailurl != null) {
            jceOutputStream.write(this.detailurl, 3);
        }
    }
}
