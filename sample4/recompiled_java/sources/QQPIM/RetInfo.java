package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RetInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!RetInfo.class.desiredAssertionStatus());
    public String strtime_sec;
    public int time;

    public RetInfo() {
        this.time = 0;
        this.strtime_sec = "";
        this.time = this.time;
        this.strtime_sec = this.strtime_sec;
    }

    public RetInfo(int i, String str) {
        this.time = 0;
        this.strtime_sec = "";
        this.time = i;
        this.strtime_sec = str;
    }

    public final String className() {
        return "QQPIM.RetInfo";
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
        jceDisplayer.display(this.time, AppDatabase.TIME);
        jceDisplayer.display(this.strtime_sec, "strtime_sec");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        RetInfo retInfo = (RetInfo) obj;
        return JceUtil.equals(this.time, retInfo.time) && JceUtil.equals(this.strtime_sec, retInfo.strtime_sec);
    }

    public final String fullClassName() {
        return "QQPIM.RetInfo";
    }

    public final String getStrtime_sec() {
        return this.strtime_sec;
    }

    public final int getTime() {
        return this.time;
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
        this.time = jceInputStream.read(this.time, 0, false);
        this.strtime_sec = jceInputStream.readString(1, false);
    }

    public final void setStrtime_sec(String str) {
        this.strtime_sec = str;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.time, 0);
        if (this.strtime_sec != null) {
            jceOutputStream.write(this.strtime_sec, 1);
        }
    }
}
