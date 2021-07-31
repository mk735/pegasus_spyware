package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ConfInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ConfInfo.class.desiredAssertionStatus());
    public String checksum;
    public String filename;
    public int gettype;
    public int pfutimestamp;
    public int timestamp;
    public int version;

    public ConfInfo() {
        this.filename = "";
        this.checksum = "";
        this.timestamp = 0;
        this.pfutimestamp = 0;
        this.gettype = 0;
        this.version = 0;
        this.filename = this.filename;
        this.checksum = this.checksum;
        this.timestamp = this.timestamp;
        this.pfutimestamp = this.pfutimestamp;
        this.gettype = this.gettype;
        this.version = this.version;
    }

    public ConfInfo(String str, String str2, int i, int i2, int i3, int i4) {
        this.filename = "";
        this.checksum = "";
        this.timestamp = 0;
        this.pfutimestamp = 0;
        this.gettype = 0;
        this.version = 0;
        this.filename = str;
        this.checksum = str2;
        this.timestamp = i;
        this.pfutimestamp = i2;
        this.gettype = i3;
        this.version = i4;
    }

    public final String className() {
        return "QQPIM.ConfInfo";
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
        jceDisplayer.display(this.filename, "filename");
        jceDisplayer.display(this.checksum, "checksum");
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.pfutimestamp, "pfutimestamp");
        jceDisplayer.display(this.gettype, "gettype");
        jceDisplayer.display(this.version, "version");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ConfInfo confInfo = (ConfInfo) obj;
        return JceUtil.equals(this.filename, confInfo.filename) && JceUtil.equals(this.checksum, confInfo.checksum) && JceUtil.equals(this.timestamp, confInfo.timestamp) && JceUtil.equals(this.pfutimestamp, confInfo.pfutimestamp) && JceUtil.equals(this.gettype, confInfo.gettype) && JceUtil.equals(this.version, confInfo.version);
    }

    public final String fullClassName() {
        return "QQPIM.ConfInfo";
    }

    public final String getChecksum() {
        return this.checksum;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final int getGettype() {
        return this.gettype;
    }

    public final int getPfutimestamp() {
        return this.pfutimestamp;
    }

    public final int getTimestamp() {
        return this.timestamp;
    }

    public final int getVersion() {
        return this.version;
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
        this.filename = jceInputStream.readString(0, true);
        this.checksum = jceInputStream.readString(1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.pfutimestamp = jceInputStream.read(this.pfutimestamp, 3, false);
        this.gettype = jceInputStream.read(this.gettype, 4, false);
        this.version = jceInputStream.read(this.version, 5, false);
    }

    public final void setChecksum(String str) {
        this.checksum = str;
    }

    public final void setFilename(String str) {
        this.filename = str;
    }

    public final void setGettype(int i) {
        this.gettype = i;
    }

    public final void setPfutimestamp(int i) {
        this.pfutimestamp = i;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.filename, 0);
        jceOutputStream.write(this.checksum, 1);
        jceOutputStream.write(this.timestamp, 2);
        jceOutputStream.write(this.pfutimestamp, 3);
        jceOutputStream.write(this.gettype, 4);
        jceOutputStream.write(this.version, 5);
    }
}
