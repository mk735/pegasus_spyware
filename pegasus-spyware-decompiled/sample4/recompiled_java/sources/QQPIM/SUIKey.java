package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupConfig;

public final class SUIKey extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!SUIKey.class.desiredAssertionStatus());
    public String channelid;
    public String guid;
    public String imei;
    public String imsi;
    public String ip;
    public int isbuildin;
    public short lang;
    public String lc;
    public String machineconf;
    public String machineuid;
    public String name;
    public String osversion;
    public String phone;
    public String qq;
    public String sdk;
    public int subplatform;
    public int type;
    public String uuid;
    public String version;

    public SUIKey() {
        this.lc = "";
        this.name = "";
        this.version = "";
        this.imei = "";
        this.imsi = "";
        this.qq = "";
        this.ip = "";
        this.type = EPhoneType.MPT_NONE.value();
        this.osversion = "";
        this.machineuid = "";
        this.machineconf = "";
        this.phone = "";
        this.subplatform = 0;
        this.channelid = "";
        this.isbuildin = 0;
        this.uuid = "";
        this.lang = 0;
        this.guid = "";
        this.sdk = "";
        this.lc = this.lc;
        this.name = this.name;
        this.version = this.version;
        this.imei = this.imei;
        this.imsi = this.imsi;
        this.qq = this.qq;
        this.ip = this.ip;
        this.type = this.type;
        this.osversion = this.osversion;
        this.machineuid = this.machineuid;
        this.machineconf = this.machineconf;
        this.phone = this.phone;
        this.subplatform = this.subplatform;
        this.channelid = this.channelid;
        this.isbuildin = this.isbuildin;
        this.uuid = this.uuid;
        this.lang = this.lang;
        this.guid = this.guid;
        this.sdk = this.sdk;
    }

    public SUIKey(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, String str9, String str10, String str11, int i2, String str12, int i3, String str13, short s, String str14, String str15) {
        this.lc = "";
        this.name = "";
        this.version = "";
        this.imei = "";
        this.imsi = "";
        this.qq = "";
        this.ip = "";
        this.type = EPhoneType.MPT_NONE.value();
        this.osversion = "";
        this.machineuid = "";
        this.machineconf = "";
        this.phone = "";
        this.subplatform = 0;
        this.channelid = "";
        this.isbuildin = 0;
        this.uuid = "";
        this.lang = 0;
        this.guid = "";
        this.sdk = "";
        this.lc = str;
        this.name = str2;
        this.version = str3;
        this.imei = str4;
        this.imsi = str5;
        this.qq = str6;
        this.ip = str7;
        this.type = i;
        this.osversion = str8;
        this.machineuid = str9;
        this.machineconf = str10;
        this.phone = str11;
        this.subplatform = i2;
        this.channelid = str12;
        this.isbuildin = i3;
        this.uuid = str13;
        this.lang = s;
        this.guid = str14;
        this.sdk = str15;
    }

    public final String className() {
        return "QQPIM.SUIKey";
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
        jceDisplayer.display(this.lc, TMSApplication.CON_LC);
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.imei, "imei");
        jceDisplayer.display(this.imsi, "imsi");
        jceDisplayer.display(this.qq, "qq");
        jceDisplayer.display(this.ip, "ip");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.osversion, "osversion");
        jceDisplayer.display(this.machineuid, "machineuid");
        jceDisplayer.display(this.machineconf, "machineconf");
        jceDisplayer.display(this.phone, "phone");
        jceDisplayer.display(this.subplatform, "subplatform");
        jceDisplayer.display(this.channelid, "channelid");
        jceDisplayer.display(this.isbuildin, "isbuildin");
        jceDisplayer.display(this.uuid, "uuid");
        jceDisplayer.display(this.lang, "lang");
        jceDisplayer.display(this.guid, WupConfig.KEY_GUID);
        jceDisplayer.display(this.sdk, "sdk");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SUIKey sUIKey = (SUIKey) obj;
        return JceUtil.equals(this.lc, sUIKey.lc) && JceUtil.equals(this.name, sUIKey.name) && JceUtil.equals(this.version, sUIKey.version) && JceUtil.equals(this.imei, sUIKey.imei) && JceUtil.equals(this.imsi, sUIKey.imsi) && JceUtil.equals(this.qq, sUIKey.qq) && JceUtil.equals(this.ip, sUIKey.ip) && JceUtil.equals(this.type, sUIKey.type) && JceUtil.equals(this.osversion, sUIKey.osversion) && JceUtil.equals(this.machineuid, sUIKey.machineuid) && JceUtil.equals(this.machineconf, sUIKey.machineconf) && JceUtil.equals(this.phone, sUIKey.phone) && JceUtil.equals(this.subplatform, sUIKey.subplatform) && JceUtil.equals(this.channelid, sUIKey.channelid) && JceUtil.equals(this.isbuildin, sUIKey.isbuildin) && JceUtil.equals(this.uuid, sUIKey.uuid) && JceUtil.equals(this.lang, sUIKey.lang) && JceUtil.equals(this.guid, sUIKey.guid) && JceUtil.equals(this.sdk, sUIKey.sdk);
    }

    public final String fullClassName() {
        return "QQPIM.SUIKey";
    }

    public final String getChannelid() {
        return this.channelid;
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

    public final String getIp() {
        return this.ip;
    }

    public final int getIsbuildin() {
        return this.isbuildin;
    }

    public final short getLang() {
        return this.lang;
    }

    public final String getLc() {
        return this.lc;
    }

    public final String getMachineconf() {
        return this.machineconf;
    }

    public final String getMachineuid() {
        return this.machineuid;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOsversion() {
        return this.osversion;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getQq() {
        return this.qq;
    }

    public final String getSdk() {
        return this.sdk;
    }

    public final int getSubplatform() {
        return this.subplatform;
    }

    public final int getType() {
        return this.type;
    }

    public final String getUuid() {
        return this.uuid;
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
        this.lc = jceInputStream.readString(0, true);
        this.name = jceInputStream.readString(1, true);
        this.version = jceInputStream.readString(2, true);
        this.imei = jceInputStream.readString(3, true);
        this.imsi = jceInputStream.readString(4, true);
        this.qq = jceInputStream.readString(5, false);
        this.ip = jceInputStream.readString(6, false);
        this.type = jceInputStream.read(this.type, 7, false);
        this.osversion = jceInputStream.readString(8, false);
        this.machineuid = jceInputStream.readString(9, false);
        this.machineconf = jceInputStream.readString(10, false);
        this.phone = jceInputStream.readString(11, false);
        this.subplatform = jceInputStream.read(this.subplatform, 12, false);
        this.channelid = jceInputStream.readString(13, false);
        this.isbuildin = jceInputStream.read(this.isbuildin, 14, false);
        this.uuid = jceInputStream.readString(15, false);
        this.lang = jceInputStream.read(this.lang, 16, false);
        this.guid = jceInputStream.readString(17, false);
        this.sdk = jceInputStream.readString(18, false);
    }

    public final void setChannelid(String str) {
        this.channelid = str;
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

    public final void setIp(String str) {
        this.ip = str;
    }

    public final void setIsbuildin(int i) {
        this.isbuildin = i;
    }

    public final void setLang(short s) {
        this.lang = s;
    }

    public final void setLc(String str) {
        this.lc = str;
    }

    public final void setMachineconf(String str) {
        this.machineconf = str;
    }

    public final void setMachineuid(String str) {
        this.machineuid = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOsversion(String str) {
        this.osversion = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setQq(String str) {
        this.qq = str;
    }

    public final void setSdk(String str) {
        this.sdk = str;
    }

    public final void setSubplatform(int i) {
        this.subplatform = i;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUuid(String str) {
        this.uuid = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.lc, 0);
        jceOutputStream.write(this.name, 1);
        jceOutputStream.write(this.version, 2);
        jceOutputStream.write(this.imei, 3);
        jceOutputStream.write(this.imsi, 4);
        if (this.qq != null) {
            jceOutputStream.write(this.qq, 5);
        }
        if (this.ip != null) {
            jceOutputStream.write(this.ip, 6);
        }
        jceOutputStream.write(this.type, 7);
        if (this.osversion != null) {
            jceOutputStream.write(this.osversion, 8);
        }
        if (this.machineuid != null) {
            jceOutputStream.write(this.machineuid, 9);
        }
        if (this.machineconf != null) {
            jceOutputStream.write(this.machineconf, 10);
        }
        if (this.phone != null) {
            jceOutputStream.write(this.phone, 11);
        }
        jceOutputStream.write(this.subplatform, 12);
        if (this.channelid != null) {
            jceOutputStream.write(this.channelid, 13);
        }
        jceOutputStream.write(this.isbuildin, 14);
        if (this.uuid != null) {
            jceOutputStream.write(this.uuid, 15);
        }
        jceOutputStream.write(this.lang, 16);
        if (this.guid != null) {
            jceOutputStream.write(this.guid, 17);
        }
        if (this.sdk != null) {
            jceOutputStream.write(this.sdk, 18);
        }
    }
}
