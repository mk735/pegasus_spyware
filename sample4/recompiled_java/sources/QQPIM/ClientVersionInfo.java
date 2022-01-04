package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ClientVersionInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ClientVersionInfo.class.desiredAssertionStatus());
    public int id;
    public String info;
    public int version;

    public ClientVersionInfo() {
        this.id = 0;
        this.version = 0;
        this.info = "";
        this.id = this.id;
        this.version = this.version;
        this.info = this.info;
    }

    public ClientVersionInfo(int i, int i2, String str) {
        this.id = 0;
        this.version = 0;
        this.info = "";
        this.id = i;
        this.version = i2;
        this.info = str;
    }

    public final String className() {
        return "QQPIM.ClientVersionInfo";
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
        jceDisplayer.display(this.id, QueryPermissions.ID);
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.info, "info");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ClientVersionInfo clientVersionInfo = (ClientVersionInfo) obj;
        return JceUtil.equals(this.id, clientVersionInfo.id) && JceUtil.equals(this.version, clientVersionInfo.version) && JceUtil.equals(this.info, clientVersionInfo.info);
    }

    public final String fullClassName() {
        return "QQPIM.ClientVersionInfo";
    }

    public final int getId() {
        return this.id;
    }

    public final String getInfo() {
        return this.info;
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
        this.id = jceInputStream.read(this.id, 0, true);
        this.version = jceInputStream.read(this.version, 1, true);
        this.info = jceInputStream.readString(2, false);
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setInfo(String str) {
        this.info = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write(this.version, 1);
        if (this.info != null) {
            jceOutputStream.write(this.info, 2);
        }
    }
}
