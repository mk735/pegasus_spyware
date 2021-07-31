package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DownSoftInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!DownSoftInfo.class.desiredAssertionStatus());
    public int categoryid;
    public String downnetname;
    public int downnettype;
    public int errorcode;
    public String errormsg;
    public int filesize;
    public String hostaddress;
    public int nAvgSpeed;
    public int nDownSize;
    public byte nDownType;
    public int nFileId;
    public int nMaxSpeed;
    public int nProductId;
    public int nRetryTimes;
    public int nSoftId;
    public byte nSuccess;
    public int nUsedTime;
    public int pos;
    public String reportnetname;
    public int reportnettype;
    public int rssi;
    public int sdcardstatus;
    public SoftKey softkey;
    public String url;

    public DownSoftInfo() {
        this.nProductId = 0;
        this.nSoftId = 0;
        this.nFileId = 0;
        this.nSuccess = 0;
        this.nDownSize = 0;
        this.nUsedTime = 0;
        this.nMaxSpeed = 0;
        this.nAvgSpeed = 0;
        this.nRetryTimes = 0;
        this.nDownType = 0;
        this.softkey = null;
        this.categoryid = 0;
        this.pos = 0;
        this.url = "";
        this.errorcode = 0;
        this.downnettype = ConnectType.CT_NONE.value();
        this.downnetname = "";
        this.reportnettype = ConnectType.CT_NONE.value();
        this.reportnetname = "";
        this.errormsg = "";
        this.rssi = -1;
        this.sdcardstatus = -1;
        this.filesize = 0;
        this.hostaddress = "";
        this.nProductId = this.nProductId;
        this.nSoftId = this.nSoftId;
        this.nFileId = this.nFileId;
        this.nSuccess = this.nSuccess;
        this.nDownSize = this.nDownSize;
        this.nUsedTime = this.nUsedTime;
        this.nMaxSpeed = this.nMaxSpeed;
        this.nAvgSpeed = this.nAvgSpeed;
        this.nRetryTimes = this.nRetryTimes;
        this.nDownType = this.nDownType;
        this.softkey = this.softkey;
        this.categoryid = this.categoryid;
        this.pos = this.pos;
        this.url = this.url;
        this.errorcode = this.errorcode;
        this.downnettype = this.downnettype;
        this.downnetname = this.downnetname;
        this.reportnettype = this.reportnettype;
        this.reportnetname = this.reportnetname;
        this.errormsg = this.errormsg;
        this.rssi = this.rssi;
        this.sdcardstatus = this.sdcardstatus;
        this.filesize = this.filesize;
        this.hostaddress = this.hostaddress;
    }

    public DownSoftInfo(int i, int i2, int i3, byte b2, int i4, int i5, int i6, int i7, int i8, byte b3, SoftKey softKey, int i9, int i10, String str, int i11, int i12, String str2, int i13, String str3, String str4, int i14, int i15, int i16, String str5) {
        this.nProductId = 0;
        this.nSoftId = 0;
        this.nFileId = 0;
        this.nSuccess = 0;
        this.nDownSize = 0;
        this.nUsedTime = 0;
        this.nMaxSpeed = 0;
        this.nAvgSpeed = 0;
        this.nRetryTimes = 0;
        this.nDownType = 0;
        this.softkey = null;
        this.categoryid = 0;
        this.pos = 0;
        this.url = "";
        this.errorcode = 0;
        this.downnettype = ConnectType.CT_NONE.value();
        this.downnetname = "";
        this.reportnettype = ConnectType.CT_NONE.value();
        this.reportnetname = "";
        this.errormsg = "";
        this.rssi = -1;
        this.sdcardstatus = -1;
        this.filesize = 0;
        this.hostaddress = "";
        this.nProductId = i;
        this.nSoftId = i2;
        this.nFileId = i3;
        this.nSuccess = b2;
        this.nDownSize = i4;
        this.nUsedTime = i5;
        this.nMaxSpeed = i6;
        this.nAvgSpeed = i7;
        this.nRetryTimes = i8;
        this.nDownType = b3;
        this.softkey = softKey;
        this.categoryid = i9;
        this.pos = i10;
        this.url = str;
        this.errorcode = i11;
        this.downnettype = i12;
        this.downnetname = str2;
        this.reportnettype = i13;
        this.reportnetname = str3;
        this.errormsg = str4;
        this.rssi = i14;
        this.sdcardstatus = i15;
        this.filesize = i16;
        this.hostaddress = str5;
    }

    public final String className() {
        return "QQPIM.DownSoftInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (b) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.nProductId, "nProductId");
        jceDisplayer.display(this.nSoftId, "nSoftId");
        jceDisplayer.display(this.nFileId, "nFileId");
        jceDisplayer.display(this.nSuccess, "nSuccess");
        jceDisplayer.display(this.nDownSize, "nDownSize");
        jceDisplayer.display(this.nUsedTime, "nUsedTime");
        jceDisplayer.display(this.nMaxSpeed, "nMaxSpeed");
        jceDisplayer.display(this.nAvgSpeed, "nAvgSpeed");
        jceDisplayer.display(this.nRetryTimes, "nRetryTimes");
        jceDisplayer.display(this.nDownType, "nDownType");
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.categoryid, "categoryid");
        jceDisplayer.display(this.pos, "pos");
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display(this.errorcode, "errorcode");
        jceDisplayer.display(this.downnettype, "downnettype");
        jceDisplayer.display(this.downnetname, "downnetname");
        jceDisplayer.display(this.reportnettype, "reportnettype");
        jceDisplayer.display(this.reportnetname, "reportnetname");
        jceDisplayer.display(this.errormsg, "errormsg");
        jceDisplayer.display(this.rssi, "rssi");
        jceDisplayer.display(this.sdcardstatus, "sdcardstatus");
        jceDisplayer.display(this.filesize, "filesize");
        jceDisplayer.display(this.hostaddress, "hostaddress");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DownSoftInfo downSoftInfo = (DownSoftInfo) obj;
        return JceUtil.equals(this.nProductId, downSoftInfo.nProductId) && JceUtil.equals(this.nSoftId, downSoftInfo.nSoftId) && JceUtil.equals(this.nFileId, downSoftInfo.nFileId) && JceUtil.equals(this.nSuccess, downSoftInfo.nSuccess) && JceUtil.equals(this.nDownSize, downSoftInfo.nDownSize) && JceUtil.equals(this.nUsedTime, downSoftInfo.nUsedTime) && JceUtil.equals(this.nMaxSpeed, downSoftInfo.nMaxSpeed) && JceUtil.equals(this.nAvgSpeed, downSoftInfo.nAvgSpeed) && JceUtil.equals(this.nRetryTimes, downSoftInfo.nRetryTimes) && JceUtil.equals(this.nDownType, downSoftInfo.nDownType) && JceUtil.equals(this.softkey, downSoftInfo.softkey) && JceUtil.equals(this.categoryid, downSoftInfo.categoryid) && JceUtil.equals(this.pos, downSoftInfo.pos) && JceUtil.equals(this.url, downSoftInfo.url) && JceUtil.equals(this.errorcode, downSoftInfo.errorcode) && JceUtil.equals(this.downnettype, downSoftInfo.downnettype) && JceUtil.equals(this.downnetname, downSoftInfo.downnetname) && JceUtil.equals(this.reportnettype, downSoftInfo.reportnettype) && JceUtil.equals(this.reportnetname, downSoftInfo.reportnetname) && JceUtil.equals(this.errormsg, downSoftInfo.errormsg) && JceUtil.equals(this.rssi, downSoftInfo.rssi) && JceUtil.equals(this.sdcardstatus, downSoftInfo.sdcardstatus) && JceUtil.equals(this.filesize, downSoftInfo.filesize) && JceUtil.equals(this.hostaddress, downSoftInfo.hostaddress);
    }

    public final String fullClassName() {
        return "QQPIM.DownSoftInfo";
    }

    public final int getCategoryid() {
        return this.categoryid;
    }

    public final String getDownnetname() {
        return this.downnetname;
    }

    public final int getDownnettype() {
        return this.downnettype;
    }

    public final int getErrorcode() {
        return this.errorcode;
    }

    public final String getErrormsg() {
        return this.errormsg;
    }

    public final int getFilesize() {
        return this.filesize;
    }

    public final String getHostaddress() {
        return this.hostaddress;
    }

    public final int getNAvgSpeed() {
        return this.nAvgSpeed;
    }

    public final int getNDownSize() {
        return this.nDownSize;
    }

    public final byte getNDownType() {
        return this.nDownType;
    }

    public final int getNFileId() {
        return this.nFileId;
    }

    public final int getNMaxSpeed() {
        return this.nMaxSpeed;
    }

    public final int getNProductId() {
        return this.nProductId;
    }

    public final int getNRetryTimes() {
        return this.nRetryTimes;
    }

    public final int getNSoftId() {
        return this.nSoftId;
    }

    public final byte getNSuccess() {
        return this.nSuccess;
    }

    public final int getNUsedTime() {
        return this.nUsedTime;
    }

    public final int getPos() {
        return this.pos;
    }

    public final String getReportnetname() {
        return this.reportnetname;
    }

    public final int getReportnettype() {
        return this.reportnettype;
    }

    public final int getRssi() {
        return this.rssi;
    }

    public final int getSdcardstatus() {
        return this.sdcardstatus;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
    }

    public final String getUrl() {
        return this.url;
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
        this.nProductId = jceInputStream.read(this.nProductId, 0, true);
        this.nSoftId = jceInputStream.read(this.nSoftId, 1, true);
        this.nFileId = jceInputStream.read(this.nFileId, 2, true);
        this.nSuccess = jceInputStream.read(this.nSuccess, 3, true);
        this.nDownSize = jceInputStream.read(this.nDownSize, 4, true);
        this.nUsedTime = jceInputStream.read(this.nUsedTime, 5, true);
        this.nMaxSpeed = jceInputStream.read(this.nMaxSpeed, 6, true);
        this.nAvgSpeed = jceInputStream.read(this.nAvgSpeed, 7, true);
        this.nRetryTimes = jceInputStream.read(this.nRetryTimes, 8, true);
        this.nDownType = jceInputStream.read(this.nDownType, 9, true);
        if (a == null) {
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 10, true);
        this.categoryid = jceInputStream.read(this.categoryid, 11, false);
        this.pos = jceInputStream.read(this.pos, 12, false);
        this.url = jceInputStream.readString(13, false);
        this.errorcode = jceInputStream.read(this.errorcode, 14, false);
        this.downnettype = jceInputStream.read(this.downnettype, 15, false);
        this.downnetname = jceInputStream.readString(16, false);
        this.reportnettype = jceInputStream.read(this.reportnettype, 17, false);
        this.reportnetname = jceInputStream.readString(18, false);
        this.errormsg = jceInputStream.readString(19, false);
        this.rssi = jceInputStream.read(this.rssi, 20, false);
        this.sdcardstatus = jceInputStream.read(this.sdcardstatus, 21, false);
        this.filesize = jceInputStream.read(this.filesize, 22, false);
        this.hostaddress = jceInputStream.readString(23, false);
    }

    public final void setCategoryid(int i) {
        this.categoryid = i;
    }

    public final void setDownnetname(String str) {
        this.downnetname = str;
    }

    public final void setDownnettype(int i) {
        this.downnettype = i;
    }

    public final void setErrorcode(int i) {
        this.errorcode = i;
    }

    public final void setErrormsg(String str) {
        this.errormsg = str;
    }

    public final void setFilesize(int i) {
        this.filesize = i;
    }

    public final void setHostaddress(String str) {
        this.hostaddress = str;
    }

    public final void setNAvgSpeed(int i) {
        this.nAvgSpeed = i;
    }

    public final void setNDownSize(int i) {
        this.nDownSize = i;
    }

    public final void setNDownType(byte b2) {
        this.nDownType = b2;
    }

    public final void setNFileId(int i) {
        this.nFileId = i;
    }

    public final void setNMaxSpeed(int i) {
        this.nMaxSpeed = i;
    }

    public final void setNProductId(int i) {
        this.nProductId = i;
    }

    public final void setNRetryTimes(int i) {
        this.nRetryTimes = i;
    }

    public final void setNSoftId(int i) {
        this.nSoftId = i;
    }

    public final void setNSuccess(byte b2) {
        this.nSuccess = b2;
    }

    public final void setNUsedTime(int i) {
        this.nUsedTime = i;
    }

    public final void setPos(int i) {
        this.pos = i;
    }

    public final void setReportnetname(String str) {
        this.reportnetname = str;
    }

    public final void setReportnettype(int i) {
        this.reportnettype = i;
    }

    public final void setRssi(int i) {
        this.rssi = i;
    }

    public final void setSdcardstatus(int i) {
        this.sdcardstatus = i;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nProductId, 0);
        jceOutputStream.write(this.nSoftId, 1);
        jceOutputStream.write(this.nFileId, 2);
        jceOutputStream.write(this.nSuccess, 3);
        jceOutputStream.write(this.nDownSize, 4);
        jceOutputStream.write(this.nUsedTime, 5);
        jceOutputStream.write(this.nMaxSpeed, 6);
        jceOutputStream.write(this.nAvgSpeed, 7);
        jceOutputStream.write(this.nRetryTimes, 8);
        jceOutputStream.write(this.nDownType, 9);
        jceOutputStream.write((JceStruct) this.softkey, 10);
        jceOutputStream.write(this.categoryid, 11);
        jceOutputStream.write(this.pos, 12);
        if (this.url != null) {
            jceOutputStream.write(this.url, 13);
        }
        jceOutputStream.write(this.errorcode, 14);
        jceOutputStream.write(this.downnettype, 15);
        if (this.downnetname != null) {
            jceOutputStream.write(this.downnetname, 16);
        }
        jceOutputStream.write(this.reportnettype, 17);
        if (this.reportnetname != null) {
            jceOutputStream.write(this.reportnetname, 18);
        }
        if (this.errormsg != null) {
            jceOutputStream.write(this.errormsg, 19);
        }
        jceOutputStream.write(this.rssi, 20);
        jceOutputStream.write(this.sdcardstatus, 21);
        jceOutputStream.write(this.filesize, 22);
        if (this.hostaddress != null) {
            jceOutputStream.write(this.hostaddress, 23);
        }
    }
}
