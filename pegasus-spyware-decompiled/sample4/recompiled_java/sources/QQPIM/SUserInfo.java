package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.common.TMSApplication;

public final class SUserInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!SUserInfo.class.desiredAssertionStatus());
    public String imei;
    public String imsi;
    public String ip;
    public String lc;
    public String phone;
    public String qq;

    public SUserInfo() {
        this.imei = "";
        this.qq = "";
        this.phone = "";
        this.ip = "";
        this.lc = "";
        this.imsi = "";
        this.imei = this.imei;
        this.qq = this.qq;
        this.phone = this.phone;
        this.ip = this.ip;
        this.lc = this.lc;
        this.imsi = this.imsi;
    }

    public SUserInfo(String str, String str2, String str3, String str4, String str5, String str6) {
        this.imei = "";
        this.qq = "";
        this.phone = "";
        this.ip = "";
        this.lc = "";
        this.imsi = "";
        this.imei = str;
        this.qq = str2;
        this.phone = str3;
        this.ip = str4;
        this.lc = str5;
        this.imsi = str6;
    }

    public final String className() {
        return "QQPIM.SUserInfo";
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
        jceDisplayer.display(this.imei, "imei");
        jceDisplayer.display(this.qq, "qq");
        jceDisplayer.display(this.phone, "phone");
        jceDisplayer.display(this.ip, "ip");
        jceDisplayer.display(this.lc, TMSApplication.CON_LC);
        jceDisplayer.display(this.imsi, "imsi");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SUserInfo sUserInfo = (SUserInfo) obj;
        return JceUtil.equals(this.imei, sUserInfo.imei) && JceUtil.equals(this.qq, sUserInfo.qq) && JceUtil.equals(this.phone, sUserInfo.phone) && JceUtil.equals(this.ip, sUserInfo.ip) && JceUtil.equals(this.lc, sUserInfo.lc) && JceUtil.equals(this.imsi, sUserInfo.imsi);
    }

    public final String fullClassName() {
        return "QQPIM.QQPIM.SUserInfo";
    }

    public final String getImei() {
        return this.imei;
    }

    public final String getImsi() {
        return this.imsi;
    }

    public final String getIp() {
        return this.ip;
    }

    public final String getLc() {
        return this.lc;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getQq() {
        return this.qq;
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
        this.imei = jceInputStream.readString(0, true);
        this.qq = jceInputStream.readString(1, false);
        this.phone = jceInputStream.readString(2, false);
        this.ip = jceInputStream.readString(3, false);
        this.lc = jceInputStream.readString(4, false);
        this.imsi = jceInputStream.readString(5, false);
    }

    public final void setImei(String str) {
        this.imei = str;
    }

    public final void setImsi(String str) {
        this.imsi = str;
    }

    public final void setIp(String str) {
        this.ip = str;
    }

    public final void setLc(String str) {
        this.lc = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setQq(String str) {
        this.qq = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.imei, 0);
        if (this.qq != null) {
            jceOutputStream.write(this.qq, 1);
        }
        if (this.phone != null) {
            jceOutputStream.write(this.phone, 2);
        }
        if (this.ip != null) {
            jceOutputStream.write(this.ip, 3);
        }
        if (this.lc != null) {
            jceOutputStream.write(this.lc, 4);
        }
        if (this.imsi != null) {
            jceOutputStream.write(this.imsi, 5);
        }
    }
}
