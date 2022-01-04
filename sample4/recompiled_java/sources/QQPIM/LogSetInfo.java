package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LogSetInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!LogSetInfo.class.desiredAssertionStatus());
    public boolean islogcat;
    public boolean islogfile;
    public short loglevel;
    public int uploadtype;

    public LogSetInfo() {
        this.islogcat = true;
        this.islogfile = true;
        this.loglevel = 0;
        this.uploadtype = 0;
        this.islogcat = this.islogcat;
        this.islogfile = this.islogfile;
        this.loglevel = this.loglevel;
        this.uploadtype = this.uploadtype;
    }

    public LogSetInfo(boolean z, boolean z2, short s, int i) {
        this.islogcat = true;
        this.islogfile = true;
        this.loglevel = 0;
        this.uploadtype = 0;
        this.islogcat = z;
        this.islogfile = z2;
        this.loglevel = s;
        this.uploadtype = i;
    }

    public final String className() {
        return "QQPIM.LogSetInfo";
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
        jceDisplayer.display(this.islogcat, "islogcat");
        jceDisplayer.display(this.islogfile, "islogfile");
        jceDisplayer.display(this.loglevel, "loglevel");
        jceDisplayer.display(this.uploadtype, "uploadtype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        LogSetInfo logSetInfo = (LogSetInfo) obj;
        return JceUtil.equals(this.islogcat, logSetInfo.islogcat) && JceUtil.equals(this.islogfile, logSetInfo.islogfile) && JceUtil.equals(this.loglevel, logSetInfo.loglevel) && JceUtil.equals(this.uploadtype, logSetInfo.uploadtype);
    }

    public final String fullClassName() {
        return "QQPIM.LogSetInfo";
    }

    public final boolean getIslogcat() {
        return this.islogcat;
    }

    public final boolean getIslogfile() {
        return this.islogfile;
    }

    public final short getLoglevel() {
        return this.loglevel;
    }

    public final int getUploadtype() {
        return this.uploadtype;
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
        this.islogcat = jceInputStream.read(this.islogcat, 0, true);
        this.islogfile = jceInputStream.read(this.islogfile, 1, true);
        this.loglevel = jceInputStream.read(this.loglevel, 2, false);
        this.uploadtype = jceInputStream.read(this.uploadtype, 3, false);
    }

    public final void setIslogcat(boolean z) {
        this.islogcat = z;
    }

    public final void setIslogfile(boolean z) {
        this.islogfile = z;
    }

    public final void setLoglevel(short s) {
        this.loglevel = s;
    }

    public final void setUploadtype(int i) {
        this.uploadtype = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.islogcat, 0);
        jceOutputStream.write(this.islogfile, 1);
        jceOutputStream.write(this.loglevel, 2);
        jceOutputStream.write(this.uploadtype, 3);
    }
}
