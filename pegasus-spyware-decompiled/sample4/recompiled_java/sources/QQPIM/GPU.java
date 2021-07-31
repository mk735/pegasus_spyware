package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GPU extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!GPU.class.desiredAssertionStatus());
    public String model;
    public String version;

    public GPU() {
        this.model = "";
        this.version = "";
        this.model = this.model;
        this.version = this.version;
    }

    public GPU(String str, String str2) {
        this.model = "";
        this.version = "";
        this.model = str;
        this.version = str2;
    }

    public final String className() {
        return "QQPIM.GPU";
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
        jceDisplayer.display(this.model, "model");
        jceDisplayer.display(this.version, "version");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        GPU gpu = (GPU) obj;
        return JceUtil.equals(this.model, gpu.model) && JceUtil.equals(this.version, gpu.version);
    }

    public final String fullClassName() {
        return "QQPIM.GPU";
    }

    public final String getModel() {
        return this.model;
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
        this.model = jceInputStream.readString(0, true);
        this.version = jceInputStream.readString(1, true);
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.model, 0);
        jceOutputStream.write(this.version, 1);
    }
}
