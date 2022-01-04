package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusServerInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!VirusServerInfo.class.desiredAssertionStatus());
    public String advise;
    public boolean bUpdate;
    public int engine_version;
    public String short_desc;
    public String strTips;
    public int timestamp;
    public String url;
    public int version;

    public VirusServerInfo() {
        this.strTips = "";
        this.bUpdate = true;
        this.version = 0;
        this.timestamp = 0;
        this.url = "";
        this.short_desc = "";
        this.advise = "";
        this.engine_version = 2;
        this.strTips = this.strTips;
        this.bUpdate = this.bUpdate;
        this.version = this.version;
        this.timestamp = this.timestamp;
        this.url = this.url;
        this.short_desc = this.short_desc;
        this.advise = this.advise;
        this.engine_version = this.engine_version;
    }

    public VirusServerInfo(String str, boolean z, int i, int i2, String str2, String str3, String str4, int i3) {
        this.strTips = "";
        this.bUpdate = true;
        this.version = 0;
        this.timestamp = 0;
        this.url = "";
        this.short_desc = "";
        this.advise = "";
        this.engine_version = 2;
        this.strTips = str;
        this.bUpdate = z;
        this.version = i;
        this.timestamp = i2;
        this.url = str2;
        this.short_desc = str3;
        this.advise = str4;
        this.engine_version = i3;
    }

    public final String className() {
        return "QQPIM.VirusServerInfo";
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
        jceDisplayer.display(this.strTips, "strTips");
        jceDisplayer.display(this.bUpdate, "bUpdate");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display(this.short_desc, "short_desc");
        jceDisplayer.display(this.advise, "advise");
        jceDisplayer.display(this.engine_version, "engine_version");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        VirusServerInfo virusServerInfo = (VirusServerInfo) obj;
        return JceUtil.equals(this.strTips, virusServerInfo.strTips) && JceUtil.equals(this.bUpdate, virusServerInfo.bUpdate) && JceUtil.equals(this.version, virusServerInfo.version) && JceUtil.equals(this.timestamp, virusServerInfo.timestamp) && JceUtil.equals(this.url, virusServerInfo.url) && JceUtil.equals(this.short_desc, virusServerInfo.short_desc) && JceUtil.equals(this.advise, virusServerInfo.advise) && JceUtil.equals(this.engine_version, virusServerInfo.engine_version);
    }

    public final String fullClassName() {
        return "QQPIM.VirusServerInfo";
    }

    public final String getAdvise() {
        return this.advise;
    }

    public final boolean getBUpdate() {
        return this.bUpdate;
    }

    public final int getEngine_version() {
        return this.engine_version;
    }

    public final String getShort_desc() {
        return this.short_desc;
    }

    public final String getStrTips() {
        return this.strTips;
    }

    public final int getTimestamp() {
        return this.timestamp;
    }

    public final String getUrl() {
        return this.url;
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
        this.strTips = jceInputStream.readString(0, true);
        this.bUpdate = jceInputStream.read(this.bUpdate, 1, true);
        this.version = jceInputStream.read(this.version, 2, true);
        this.timestamp = jceInputStream.read(this.timestamp, 3, true);
        this.url = jceInputStream.readString(4, true);
        this.short_desc = jceInputStream.readString(5, true);
        this.advise = jceInputStream.readString(6, true);
        this.engine_version = jceInputStream.read(this.engine_version, 7, false);
    }

    public final void setAdvise(String str) {
        this.advise = str;
    }

    public final void setBUpdate(boolean z) {
        this.bUpdate = z;
    }

    public final void setEngine_version(int i) {
        this.engine_version = i;
    }

    public final void setShort_desc(String str) {
        this.short_desc = str;
    }

    public final void setStrTips(String str) {
        this.strTips = str;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.strTips, 0);
        jceOutputStream.write(this.bUpdate, 1);
        jceOutputStream.write(this.version, 2);
        jceOutputStream.write(this.timestamp, 3);
        jceOutputStream.write(this.url, 4);
        jceOutputStream.write(this.short_desc, 5);
        jceOutputStream.write(this.advise, 6);
        jceOutputStream.write(this.engine_version, 7);
    }
}
