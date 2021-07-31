package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.wupsession.WupConfig;

public final class CheckClientInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!CheckClientInfo.class.desiredAssertionStatus());
    public int connectType;
    public int engineVersion;
    public String guid;
    public String imei;
    public String imsi;
    public boolean isRoot;

    public CheckClientInfo() {
        this.engineVersion = 0;
        this.guid = "";
        this.imei = "";
        this.imsi = "";
        this.connectType = 0;
        this.isRoot = false;
        this.engineVersion = this.engineVersion;
        this.guid = this.guid;
        this.imei = this.imei;
        this.imsi = this.imsi;
        this.connectType = this.connectType;
        this.isRoot = this.isRoot;
    }

    public CheckClientInfo(int i, String str, String str2, String str3, int i2, boolean z) {
        this.engineVersion = 0;
        this.guid = "";
        this.imei = "";
        this.imsi = "";
        this.connectType = 0;
        this.isRoot = false;
        this.engineVersion = i;
        this.guid = str;
        this.imei = str2;
        this.imsi = str3;
        this.connectType = i2;
        this.isRoot = z;
    }

    public final String className() {
        return "QQPIM.CheckClientInfo";
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
        jceDisplayer.display(this.engineVersion, "engineVersion");
        jceDisplayer.display(this.guid, WupConfig.KEY_GUID);
        jceDisplayer.display(this.imei, "imei");
        jceDisplayer.display(this.imsi, "imsi");
        jceDisplayer.display(this.connectType, "connectType");
        jceDisplayer.display(this.isRoot, "isRoot");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CheckClientInfo checkClientInfo = (CheckClientInfo) obj;
        return JceUtil.equals(this.engineVersion, checkClientInfo.engineVersion) && JceUtil.equals(this.guid, checkClientInfo.guid) && JceUtil.equals(this.imei, checkClientInfo.imei) && JceUtil.equals(this.imsi, checkClientInfo.imsi) && JceUtil.equals(this.connectType, checkClientInfo.connectType) && JceUtil.equals(this.isRoot, checkClientInfo.isRoot);
    }

    public final String fullClassName() {
        return "QQPIM.CheckClientInfo";
    }

    public final int getConnectType() {
        return this.connectType;
    }

    public final int getEngineVersion() {
        return this.engineVersion;
    }

    public final String getGuid() {
        return this.guid;
    }

    public final String getImei() {
        return this.imei;
    }

    public final String getImsi() {
        return this.imsi;
    }

    public final boolean getIsRoot() {
        return this.isRoot;
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
        this.engineVersion = jceInputStream.read(this.engineVersion, 0, true);
        this.guid = jceInputStream.readString(1, true);
        this.imei = jceInputStream.readString(2, false);
        this.imsi = jceInputStream.readString(3, false);
        this.connectType = jceInputStream.read(this.connectType, 4, false);
        this.isRoot = jceInputStream.read(this.isRoot, 5, false);
    }

    public final void setConnectType(int i) {
        this.connectType = i;
    }

    public final void setEngineVersion(int i) {
        this.engineVersion = i;
    }

    public final void setGuid(String str) {
        this.guid = str;
    }

    public final void setImei(String str) {
        this.imei = str;
    }

    public final void setImsi(String str) {
        this.imsi = str;
    }

    public final void setIsRoot(boolean z) {
        this.isRoot = z;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.engineVersion, 0);
        jceOutputStream.write(this.guid, 1);
        if (this.imei != null) {
            jceOutputStream.write(this.imei, 2);
        }
        if (this.imsi != null) {
            jceOutputStream.write(this.imsi, 3);
        }
        jceOutputStream.write(this.connectType, 4);
        jceOutputStream.write(this.isRoot, 5);
    }
}
