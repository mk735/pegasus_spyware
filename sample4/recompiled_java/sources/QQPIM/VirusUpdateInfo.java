package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusUpdateInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!VirusUpdateInfo.class.desiredAssertionStatus());
    public String description;
    public int level;
    public String newestvirus;
    public String version;

    public VirusUpdateInfo() {
        this.version = "";
        this.newestvirus = "";
        this.level = 0;
        this.description = "";
        this.version = this.version;
        this.newestvirus = this.newestvirus;
        this.level = this.level;
        this.description = this.description;
    }

    public VirusUpdateInfo(String str, String str2, int i, String str3) {
        this.version = "";
        this.newestvirus = "";
        this.level = 0;
        this.description = "";
        this.version = str;
        this.newestvirus = str2;
        this.level = i;
        this.description = str3;
    }

    public final String className() {
        return "QQPIM.VirusUpdateInfo";
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
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.newestvirus, "newestvirus");
        jceDisplayer.display(this.level, "level");
        jceDisplayer.display(this.description, "description");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        VirusUpdateInfo virusUpdateInfo = (VirusUpdateInfo) obj;
        return JceUtil.equals(this.version, virusUpdateInfo.version) && JceUtil.equals(this.newestvirus, virusUpdateInfo.newestvirus) && JceUtil.equals(this.level, virusUpdateInfo.level) && JceUtil.equals(this.description, virusUpdateInfo.description);
    }

    public final String fullClassName() {
        return "QQPIM.VirusUpdateInfo";
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getLevel() {
        return this.level;
    }

    public final String getNewestvirus() {
        return this.newestvirus;
    }

    public final String getVersion() {
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
        this.version = jceInputStream.readString(0, true);
        this.newestvirus = jceInputStream.readString(1, true);
        this.level = jceInputStream.read(this.level, 2, true);
        this.description = jceInputStream.readString(3, true);
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setLevel(int i) {
        this.level = i;
    }

    public final void setNewestvirus(String str) {
        this.newestvirus = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.version, 0);
        jceOutputStream.write(this.newestvirus, 1);
        jceOutputStream.write(this.level, 2);
        jceOutputStream.write(this.description, 3);
    }
}
