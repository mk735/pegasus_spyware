package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ReqHeader extends JceStruct {
    static final /* synthetic */ boolean a = (!ReqHeader.class.desiredAssertionStatus());
    public int eDeviceType;
    public int eUinType;
    public short shVersion;
    public String strAuthName;
    public String strAuthPassword;
    public String strUin;

    public ReqHeader() {
        this.shVersion = 1;
        this.eUinType = 0;
        this.strUin = "";
        this.strAuthName = "";
        this.strAuthPassword = "";
        this.eDeviceType = 0;
        this.shVersion = this.shVersion;
        this.eUinType = this.eUinType;
        this.strUin = this.strUin;
        this.strAuthName = this.strAuthName;
        this.strAuthPassword = this.strAuthPassword;
        this.eDeviceType = this.eDeviceType;
    }

    public ReqHeader(short s, int i, String str, String str2, String str3, int i2) {
        this.shVersion = 1;
        this.eUinType = 0;
        this.strUin = "";
        this.strAuthName = "";
        this.strAuthPassword = "";
        this.eDeviceType = 0;
        this.shVersion = s;
        this.eUinType = i;
        this.strUin = str;
        this.strAuthName = str2;
        this.strAuthPassword = str3;
        this.eDeviceType = i2;
    }

    public final String className() {
        return "LBSAPIProtocol.ReqHeader";
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
        jceDisplayer.display(this.shVersion, "shVersion");
        jceDisplayer.display(this.eUinType, "eUinType");
        jceDisplayer.display(this.strUin, "strUin");
        jceDisplayer.display(this.strAuthName, "strAuthName");
        jceDisplayer.display(this.strAuthPassword, "strAuthPassword");
        jceDisplayer.display(this.eDeviceType, "eDeviceType");
    }

    public final boolean equals(Object obj) {
        ReqHeader reqHeader = (ReqHeader) obj;
        return JceUtil.equals(this.shVersion, reqHeader.shVersion) && JceUtil.equals(this.eUinType, reqHeader.eUinType) && JceUtil.equals(this.strUin, reqHeader.strUin) && JceUtil.equals(this.strAuthName, reqHeader.strAuthName) && JceUtil.equals(this.strAuthPassword, reqHeader.strAuthPassword) && JceUtil.equals(this.eDeviceType, reqHeader.eDeviceType);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.ReqHeader";
    }

    public final int getEDeviceType() {
        return this.eDeviceType;
    }

    public final int getEUinType() {
        return this.eUinType;
    }

    public final short getShVersion() {
        return this.shVersion;
    }

    public final String getStrAuthName() {
        return this.strAuthName;
    }

    public final String getStrAuthPassword() {
        return this.strAuthPassword;
    }

    public final String getStrUin() {
        return this.strUin;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.shVersion = jceInputStream.read(this.shVersion, 0, true);
        this.eUinType = jceInputStream.read(this.eUinType, 1, true);
        this.strUin = jceInputStream.readString(2, true);
        this.strAuthName = jceInputStream.readString(3, true);
        this.strAuthPassword = jceInputStream.readString(4, true);
        this.eDeviceType = jceInputStream.read(this.eDeviceType, 5, false);
    }

    public final void setEDeviceType(int i) {
        this.eDeviceType = i;
    }

    public final void setEUinType(int i) {
        this.eUinType = i;
    }

    public final void setShVersion(short s) {
        this.shVersion = s;
    }

    public final void setStrAuthName(String str) {
        this.strAuthName = str;
    }

    public final void setStrAuthPassword(String str) {
        this.strAuthPassword = str;
    }

    public final void setStrUin(String str) {
        this.strUin = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.shVersion, 0);
        jceOutputStream.write(this.eUinType, 1);
        jceOutputStream.write(this.strUin, 2);
        jceOutputStream.write(this.strAuthName, 3);
        jceOutputStream.write(this.strAuthPassword, 4);
        jceOutputStream.write(this.eDeviceType, 5);
    }
}
