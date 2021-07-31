package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.market.MarketManager;

public final class SoftSimpleInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static byte[] b;
    static final /* synthetic */ boolean c = (!SoftSimpleInfo.class.desiredAssertionStatus());
    public float cn_fee;
    public float cn_lfee;
    public int downloadtimes;
    public byte[] expand;
    public float fee;
    public int feetype;
    public int filesize;
    public String fileurl;
    public int iFileID;
    public int iProductID;
    public int iSoftID;
    public float lfee;
    public String logourl;
    public String nick_name;
    public String pageurl;
    public String pname;
    public String publishtime;
    public int safeType;
    public int score;
    public String softclass;
    public SoftKey softkey;
    public String strSource;
    public int suser;
    public String type;

    public SoftSimpleInfo() {
        this.softkey = null;
        this.type = "";
        this.softclass = "";
        this.nick_name = "";
        this.logourl = "";
        this.filesize = 0;
        this.publishtime = "";
        this.downloadtimes = 0;
        this.fileurl = "";
        this.score = 0;
        this.suser = 0;
        this.iProductID = 0;
        this.iSoftID = 0;
        this.iFileID = 0;
        this.feetype = 0;
        this.fee = 0.0f;
        this.pname = "";
        this.pageurl = "";
        this.lfee = 0.0f;
        this.cn_fee = 0.0f;
        this.cn_lfee = 0.0f;
        this.expand = null;
        this.safeType = 0;
        this.strSource = "";
        this.softkey = this.softkey;
        this.type = this.type;
        this.softclass = this.softclass;
        this.nick_name = this.nick_name;
        this.logourl = this.logourl;
        this.filesize = this.filesize;
        this.publishtime = this.publishtime;
        this.downloadtimes = this.downloadtimes;
        this.fileurl = this.fileurl;
        this.score = this.score;
        this.suser = this.suser;
        this.iProductID = this.iProductID;
        this.iSoftID = this.iSoftID;
        this.iFileID = this.iFileID;
        this.feetype = this.feetype;
        this.fee = this.fee;
        this.pname = this.pname;
        this.pageurl = this.pageurl;
        this.lfee = this.lfee;
        this.cn_fee = this.cn_fee;
        this.cn_lfee = this.cn_lfee;
        this.expand = this.expand;
        this.safeType = this.safeType;
        this.strSource = this.strSource;
    }

    public SoftSimpleInfo(SoftKey softKey, String str, String str2, String str3, String str4, int i, String str5, int i2, String str6, int i3, int i4, int i5, int i6, int i7, int i8, float f, String str7, String str8, float f2, float f3, float f4, byte[] bArr, int i9, String str9) {
        this.softkey = null;
        this.type = "";
        this.softclass = "";
        this.nick_name = "";
        this.logourl = "";
        this.filesize = 0;
        this.publishtime = "";
        this.downloadtimes = 0;
        this.fileurl = "";
        this.score = 0;
        this.suser = 0;
        this.iProductID = 0;
        this.iSoftID = 0;
        this.iFileID = 0;
        this.feetype = 0;
        this.fee = 0.0f;
        this.pname = "";
        this.pageurl = "";
        this.lfee = 0.0f;
        this.cn_fee = 0.0f;
        this.cn_lfee = 0.0f;
        this.expand = null;
        this.safeType = 0;
        this.strSource = "";
        this.softkey = softKey;
        this.type = str;
        this.softclass = str2;
        this.nick_name = str3;
        this.logourl = str4;
        this.filesize = i;
        this.publishtime = str5;
        this.downloadtimes = i2;
        this.fileurl = str6;
        this.score = i3;
        this.suser = i4;
        this.iProductID = i5;
        this.iSoftID = i6;
        this.iFileID = i7;
        this.feetype = i8;
        this.fee = f;
        this.pname = str7;
        this.pageurl = str8;
        this.lfee = f2;
        this.cn_fee = f3;
        this.cn_lfee = f4;
        this.expand = bArr;
        this.safeType = i9;
        this.strSource = str9;
    }

    public final String className() {
        return "QQPIM.SoftSimpleInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.softclass, "softclass");
        jceDisplayer.display(this.nick_name, "nick_name");
        jceDisplayer.display(this.logourl, "logourl");
        jceDisplayer.display(this.filesize, "filesize");
        jceDisplayer.display(this.publishtime, "publishtime");
        jceDisplayer.display(this.downloadtimes, "downloadtimes");
        jceDisplayer.display(this.fileurl, "fileurl");
        jceDisplayer.display(this.score, "score");
        jceDisplayer.display(this.suser, "suser");
        jceDisplayer.display(this.iProductID, "iProductID");
        jceDisplayer.display(this.iSoftID, "iSoftID");
        jceDisplayer.display(this.iFileID, "iFileID");
        jceDisplayer.display(this.feetype, "feetype");
        jceDisplayer.display(this.fee, "fee");
        jceDisplayer.display(this.pname, "pname");
        jceDisplayer.display(this.pageurl, "pageurl");
        jceDisplayer.display(this.lfee, "lfee");
        jceDisplayer.display(this.cn_fee, "cn_fee");
        jceDisplayer.display(this.cn_lfee, "cn_lfee");
        jceDisplayer.display(this.expand, MarketManager.JCE_EXPAND_KEY);
        jceDisplayer.display(this.safeType, "safeType");
        jceDisplayer.display(this.strSource, "strSource");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftSimpleInfo softSimpleInfo = (SoftSimpleInfo) obj;
        return JceUtil.equals(this.softkey, softSimpleInfo.softkey) && JceUtil.equals(this.type, softSimpleInfo.type) && JceUtil.equals(this.softclass, softSimpleInfo.softclass) && JceUtil.equals(this.nick_name, softSimpleInfo.nick_name) && JceUtil.equals(this.logourl, softSimpleInfo.logourl) && JceUtil.equals(this.filesize, softSimpleInfo.filesize) && JceUtil.equals(this.publishtime, softSimpleInfo.publishtime) && JceUtil.equals(this.downloadtimes, softSimpleInfo.downloadtimes) && JceUtil.equals(this.fileurl, softSimpleInfo.fileurl) && JceUtil.equals(this.score, softSimpleInfo.score) && JceUtil.equals(this.suser, softSimpleInfo.suser) && JceUtil.equals(this.iProductID, softSimpleInfo.iProductID) && JceUtil.equals(this.iSoftID, softSimpleInfo.iSoftID) && JceUtil.equals(this.iFileID, softSimpleInfo.iFileID) && JceUtil.equals(this.feetype, softSimpleInfo.feetype) && JceUtil.equals(this.fee, softSimpleInfo.fee) && JceUtil.equals(this.pname, softSimpleInfo.pname) && JceUtil.equals(this.pageurl, softSimpleInfo.pageurl) && JceUtil.equals(this.lfee, softSimpleInfo.lfee) && JceUtil.equals(this.cn_fee, softSimpleInfo.cn_fee) && JceUtil.equals(this.cn_lfee, softSimpleInfo.cn_lfee) && JceUtil.equals(this.expand, softSimpleInfo.expand) && JceUtil.equals(this.safeType, softSimpleInfo.safeType) && JceUtil.equals(this.strSource, softSimpleInfo.strSource);
    }

    public final String fullClassName() {
        return "QQPIM.SoftSimpleInfo";
    }

    public final float getCn_fee() {
        return this.cn_fee;
    }

    public final float getCn_lfee() {
        return this.cn_lfee;
    }

    public final int getDownloadtimes() {
        return this.downloadtimes;
    }

    public final byte[] getExpand() {
        return this.expand;
    }

    public final float getFee() {
        return this.fee;
    }

    public final int getFeetype() {
        return this.feetype;
    }

    public final int getFilesize() {
        return this.filesize;
    }

    public final String getFileurl() {
        return this.fileurl;
    }

    public final int getIFileID() {
        return this.iFileID;
    }

    public final int getIProductID() {
        return this.iProductID;
    }

    public final int getISoftID() {
        return this.iSoftID;
    }

    public final float getLfee() {
        return this.lfee;
    }

    public final String getLogourl() {
        return this.logourl;
    }

    public final String getNick_name() {
        return this.nick_name;
    }

    public final String getPageurl() {
        return this.pageurl;
    }

    public final String getPname() {
        return this.pname;
    }

    public final String getPublishtime() {
        return this.publishtime;
    }

    public final int getSafeType() {
        return this.safeType;
    }

    public final int getScore() {
        return this.score;
    }

    public final String getSoftclass() {
        return this.softclass;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
    }

    public final String getStrSource() {
        return this.strSource;
    }

    public final int getSuser() {
        return this.suser;
    }

    public final String getType() {
        return this.type;
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
        if (a == null) {
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 0, true);
        this.type = jceInputStream.readString(1, false);
        this.softclass = jceInputStream.readString(2, false);
        this.nick_name = jceInputStream.readString(3, false);
        this.logourl = jceInputStream.readString(4, false);
        this.filesize = jceInputStream.read(this.filesize, 5, false);
        this.publishtime = jceInputStream.readString(6, false);
        this.downloadtimes = jceInputStream.read(this.downloadtimes, 7, false);
        this.fileurl = jceInputStream.readString(8, false);
        this.score = jceInputStream.read(this.score, 9, false);
        this.suser = jceInputStream.read(this.suser, 10, false);
        this.iProductID = jceInputStream.read(this.iProductID, 11, false);
        this.iSoftID = jceInputStream.read(this.iSoftID, 12, false);
        this.iFileID = jceInputStream.read(this.iFileID, 13, false);
        this.feetype = jceInputStream.read(this.feetype, 14, false);
        this.fee = jceInputStream.read(this.fee, 15, false);
        this.pname = jceInputStream.readString(16, false);
        this.pageurl = jceInputStream.readString(17, false);
        this.lfee = jceInputStream.read(this.lfee, 18, false);
        this.cn_fee = jceInputStream.read(this.cn_fee, 19, false);
        this.cn_lfee = jceInputStream.read(this.cn_lfee, 20, false);
        if (b == null) {
            b = new byte[1];
            b[0] = 0;
        }
        this.expand = jceInputStream.read(b, 21, false);
        this.safeType = jceInputStream.read(this.safeType, 22, false);
        this.strSource = jceInputStream.readString(23, false);
    }

    public final void setCn_fee(float f) {
        this.cn_fee = f;
    }

    public final void setCn_lfee(float f) {
        this.cn_lfee = f;
    }

    public final void setDownloadtimes(int i) {
        this.downloadtimes = i;
    }

    public final void setExpand(byte[] bArr) {
        this.expand = bArr;
    }

    public final void setFee(float f) {
        this.fee = f;
    }

    public final void setFeetype(int i) {
        this.feetype = i;
    }

    public final void setFilesize(int i) {
        this.filesize = i;
    }

    public final void setFileurl(String str) {
        this.fileurl = str;
    }

    public final void setIFileID(int i) {
        this.iFileID = i;
    }

    public final void setIProductID(int i) {
        this.iProductID = i;
    }

    public final void setISoftID(int i) {
        this.iSoftID = i;
    }

    public final void setLfee(float f) {
        this.lfee = f;
    }

    public final void setLogourl(String str) {
        this.logourl = str;
    }

    public final void setNick_name(String str) {
        this.nick_name = str;
    }

    public final void setPageurl(String str) {
        this.pageurl = str;
    }

    public final void setPname(String str) {
        this.pname = str;
    }

    public final void setPublishtime(String str) {
        this.publishtime = str;
    }

    public final void setSafeType(int i) {
        this.safeType = i;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setSoftclass(String str) {
        this.softclass = str;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    public final void setStrSource(String str) {
        this.strSource = str;
    }

    public final void setSuser(int i) {
        this.suser = i;
    }

    public final void setType(String str) {
        this.type = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        if (this.type != null) {
            jceOutputStream.write(this.type, 1);
        }
        if (this.softclass != null) {
            jceOutputStream.write(this.softclass, 2);
        }
        if (this.nick_name != null) {
            jceOutputStream.write(this.nick_name, 3);
        }
        if (this.logourl != null) {
            jceOutputStream.write(this.logourl, 4);
        }
        jceOutputStream.write(this.filesize, 5);
        if (this.publishtime != null) {
            jceOutputStream.write(this.publishtime, 6);
        }
        jceOutputStream.write(this.downloadtimes, 7);
        if (this.fileurl != null) {
            jceOutputStream.write(this.fileurl, 8);
        }
        jceOutputStream.write(this.score, 9);
        jceOutputStream.write(this.suser, 10);
        jceOutputStream.write(this.iProductID, 11);
        jceOutputStream.write(this.iSoftID, 12);
        jceOutputStream.write(this.iFileID, 13);
        jceOutputStream.write(this.feetype, 14);
        jceOutputStream.write(this.fee, 15);
        if (this.pname != null) {
            jceOutputStream.write(this.pname, 16);
        }
        if (this.pageurl != null) {
            jceOutputStream.write(this.pageurl, 17);
        }
        jceOutputStream.write(this.lfee, 18);
        jceOutputStream.write(this.cn_fee, 19);
        jceOutputStream.write(this.cn_lfee, 20);
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 21);
        }
        jceOutputStream.write(this.safeType, 22);
        if (this.strSource != null) {
            jceOutputStream.write(this.strSource, 23);
        }
    }
}
