package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RspHeader extends JceStruct {
    static final /* synthetic */ boolean a = (!RspHeader.class.desiredAssertionStatus());
    public int eResult;
    public short shVersion;
    public String strErrMsg;

    public RspHeader() {
        this.shVersion = 1;
        this.eResult = 0;
        this.strErrMsg = "";
        this.shVersion = this.shVersion;
        this.eResult = this.eResult;
        this.strErrMsg = this.strErrMsg;
    }

    public RspHeader(short s, int i, String str) {
        this.shVersion = 1;
        this.eResult = 0;
        this.strErrMsg = "";
        this.shVersion = s;
        this.eResult = i;
        this.strErrMsg = str;
    }

    public final String className() {
        return "LBSAPIProtocol.RspHeader";
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
        jceDisplayer.display(this.eResult, "eResult");
        jceDisplayer.display(this.strErrMsg, "strErrMsg");
    }

    public final boolean equals(Object obj) {
        RspHeader rspHeader = (RspHeader) obj;
        return JceUtil.equals(this.shVersion, rspHeader.shVersion) && JceUtil.equals(this.eResult, rspHeader.eResult) && JceUtil.equals(this.strErrMsg, rspHeader.strErrMsg);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.RspHeader";
    }

    public final int getEResult() {
        return this.eResult;
    }

    public final short getShVersion() {
        return this.shVersion;
    }

    public final String getStrErrMsg() {
        return this.strErrMsg;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.shVersion = jceInputStream.read(this.shVersion, 0, true);
        this.eResult = jceInputStream.read(this.eResult, 1, true);
        this.strErrMsg = jceInputStream.readString(2, true);
    }

    public final void setEResult(int i) {
        this.eResult = i;
    }

    public final void setShVersion(short s) {
        this.shVersion = s;
    }

    public final void setStrErrMsg(String str) {
        this.strErrMsg = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.shVersion, 0);
        jceOutputStream.write(this.eResult, 1);
        jceOutputStream.write(this.strErrMsg, 2);
    }
}
