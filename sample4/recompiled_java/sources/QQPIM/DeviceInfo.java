package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.common.TMSApplication;

public final class DeviceInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!DeviceInfo.class.desiredAssertionStatus());
    public String androidid;
    public String iccid;
    public String imei;
    public String imsi;
    public String lguid;
    public String mac;
    public String model;
    public String netfile;
    public String product;
    public int sdkversion;

    public DeviceInfo() {
        this.imei = "";
        this.imsi = "";
        this.mac = "";
        this.iccid = "";
        this.androidid = "";
        this.sdkversion = 0;
        this.model = "";
        this.product = "";
        this.netfile = "";
        this.lguid = "";
        this.imei = this.imei;
        this.imsi = this.imsi;
        this.mac = this.mac;
        this.iccid = this.iccid;
        this.androidid = this.androidid;
        this.sdkversion = this.sdkversion;
        this.model = this.model;
        this.product = this.product;
        this.netfile = this.netfile;
        this.lguid = this.lguid;
    }

    public DeviceInfo(String str, String str2, String str3, String str4, String str5, int i, String str6, String str7, String str8, String str9) {
        this.imei = "";
        this.imsi = "";
        this.mac = "";
        this.iccid = "";
        this.androidid = "";
        this.sdkversion = 0;
        this.model = "";
        this.product = "";
        this.netfile = "";
        this.lguid = "";
        this.imei = str;
        this.imsi = str2;
        this.mac = str3;
        this.iccid = str4;
        this.androidid = str5;
        this.sdkversion = i;
        this.model = str6;
        this.product = str7;
        this.netfile = str8;
        this.lguid = str9;
    }

    public final String className() {
        return "QQPIM.DeviceInfo";
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
        jceDisplayer.display(this.imsi, "imsi");
        jceDisplayer.display(this.mac, "mac");
        jceDisplayer.display(this.iccid, "iccid");
        jceDisplayer.display(this.androidid, "androidid");
        jceDisplayer.display(this.sdkversion, "sdkversion");
        jceDisplayer.display(this.model, "model");
        jceDisplayer.display(this.product, TMSApplication.CON_PRODUCT);
        jceDisplayer.display(this.netfile, "netfile");
        jceDisplayer.display(this.lguid, "lguid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) obj;
        return JceUtil.equals(this.imei, deviceInfo.imei) && JceUtil.equals(this.imsi, deviceInfo.imsi) && JceUtil.equals(this.mac, deviceInfo.mac) && JceUtil.equals(this.iccid, deviceInfo.iccid) && JceUtil.equals(this.androidid, deviceInfo.androidid) && JceUtil.equals(this.sdkversion, deviceInfo.sdkversion) && JceUtil.equals(this.model, deviceInfo.model) && JceUtil.equals(this.product, deviceInfo.product) && JceUtil.equals(this.netfile, deviceInfo.netfile) && JceUtil.equals(this.lguid, deviceInfo.lguid);
    }

    public final String fullClassName() {
        return "QQPIM.DeviceInfo";
    }

    public final String getAndroidid() {
        return this.androidid;
    }

    public final String getIccid() {
        return this.iccid;
    }

    public final String getImei() {
        return this.imei;
    }

    public final String getImsi() {
        return this.imsi;
    }

    public final String getLguid() {
        return this.lguid;
    }

    public final String getMac() {
        return this.mac;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getNetfile() {
        return this.netfile;
    }

    public final String getProduct() {
        return this.product;
    }

    public final int getSdkversion() {
        return this.sdkversion;
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
        this.imsi = jceInputStream.readString(1, false);
        this.mac = jceInputStream.readString(2, false);
        this.iccid = jceInputStream.readString(3, false);
        this.androidid = jceInputStream.readString(4, false);
        this.sdkversion = jceInputStream.read(this.sdkversion, 5, false);
        this.model = jceInputStream.readString(6, false);
        this.product = jceInputStream.readString(7, false);
        this.netfile = jceInputStream.readString(8, false);
        this.lguid = jceInputStream.readString(9, false);
    }

    public final void setAndroidid(String str) {
        this.androidid = str;
    }

    public final void setIccid(String str) {
        this.iccid = str;
    }

    public final void setImei(String str) {
        this.imei = str;
    }

    public final void setImsi(String str) {
        this.imsi = str;
    }

    public final void setLguid(String str) {
        this.lguid = str;
    }

    public final void setMac(String str) {
        this.mac = str;
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setNetfile(String str) {
        this.netfile = str;
    }

    public final void setProduct(String str) {
        this.product = str;
    }

    public final void setSdkversion(int i) {
        this.sdkversion = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.imei, 0);
        if (this.imsi != null) {
            jceOutputStream.write(this.imsi, 1);
        }
        if (this.mac != null) {
            jceOutputStream.write(this.mac, 2);
        }
        if (this.iccid != null) {
            jceOutputStream.write(this.iccid, 3);
        }
        if (this.androidid != null) {
            jceOutputStream.write(this.androidid, 4);
        }
        jceOutputStream.write(this.sdkversion, 5);
        if (this.model != null) {
            jceOutputStream.write(this.model, 6);
        }
        if (this.product != null) {
            jceOutputStream.write(this.product, 7);
        }
        if (this.netfile != null) {
            jceOutputStream.write(this.netfile, 8);
        }
        if (this.lguid != null) {
            jceOutputStream.write(this.lguid, 9);
        }
    }
}
