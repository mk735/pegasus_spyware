package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusClientInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!VirusClientInfo.class.desiredAssertionStatus());
    public int engine_version;
    public int timestamp;
    public int version;

    public VirusClientInfo() {
        this.timestamp = 0;
        this.version = 0;
        this.engine_version = 2;
        this.timestamp = this.timestamp;
        this.version = this.version;
        this.engine_version = this.engine_version;
    }

    public VirusClientInfo(int i, int i2, int i3) {
        this.timestamp = 0;
        this.version = 0;
        this.engine_version = 2;
        this.timestamp = i;
        this.version = i2;
        this.engine_version = i3;
    }

    public final String className() {
        return "QQPIM.VirusClientInfo";
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
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.engine_version, "engine_version");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        VirusClientInfo virusClientInfo = (VirusClientInfo) obj;
        return JceUtil.equals(this.timestamp, virusClientInfo.timestamp) && JceUtil.equals(this.version, virusClientInfo.version) && JceUtil.equals(this.engine_version, virusClientInfo.engine_version);
    }

    public final String fullClassName() {
        return "QQPIM.VirusClientInfo";
    }

    public final int getEngine_version() {
        return this.engine_version;
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
        this.timestamp = jceInputStream.read(this.timestamp, 0, true);
        this.version = jceInputStream.read(this.version, 1, true);
        this.engine_version = jceInputStream.read(this.engine_version, 2, false);
    }

    public final void setEngine_version(int i) {
        this.engine_version = i;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.timestamp, 0);
        jceOutputStream.write(this.version, 1);
        jceOutputStream.write(this.engine_version, 2);
    }
}
