package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.market.MarketManager;
import java.util.ArrayList;
import java.util.Collection;

public final class SoftInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static ArrayList<ProcInfo> b;
    static ArrayList<String> c;
    static ArrayList<Comment> d;
    static ArrayList<String> e;
    static ArrayList<String> f;
    static byte[] g;
    static final /* synthetic */ boolean h = (!SoftInfo.class.desiredAssertionStatus());
    public int asopt;
    public int autostart;
    public float cn_fee;
    public float cn_lfee;
    public ArrayList<Comment> comments;
    public String description;
    public int downloadtimes;
    public byte[] expand;
    public float fee;
    public int feetype;
    public int filesize;
    public String fileurl;
    public String function;
    public String hprice;
    public int iFileID;
    public int iProductID;
    public int iSoftID;
    public int isoftclass;
    public float lfee;
    public String logourl;
    public ArrayList<String> logourls;
    public int netaccess;
    public String nick_name;
    public int official;
    public String pageurl;
    public int phonemonitor;
    public ArrayList<String> picurls;
    public String pname;
    public ArrayList<ProcInfo> procinfo;
    public String publishtime;
    public int reportFeature;
    public int score;
    public String short_desc;
    public int smsmonitor;
    public int softDescTimestamp;
    public String softclass;
    public SoftKey softkey;
    public ArrayList<String> srcpicurls;
    public String strLinkContent;
    public String strLinkUrl;
    public String strSource;
    public int suser;
    public String type;
    public int update;

    public SoftInfo() {
        this.softkey = null;
        this.short_desc = "";
        this.description = "";
        this.type = "";
        this.softclass = "";
        this.procinfo = null;
        this.smsmonitor = 0;
        this.phonemonitor = 0;
        this.netaccess = 0;
        this.autostart = 0;
        this.asopt = EAutoStartOption.EASO_NONE.value();
        this.nick_name = "";
        this.reportFeature = 0;
        this.logourl = "";
        this.filesize = 0;
        this.publishtime = "";
        this.downloadtimes = 0;
        this.function = "";
        this.fileurl = "";
        this.picurls = null;
        this.official = 0;
        this.update = 0;
        this.score = 0;
        this.suser = 0;
        this.softDescTimestamp = 0;
        this.iProductID = 0;
        this.iSoftID = 0;
        this.iFileID = 0;
        this.feetype = 0;
        this.fee = 0.0f;
        this.pname = "";
        this.hprice = "";
        this.comments = null;
        this.logourls = null;
        this.pageurl = "";
        this.lfee = 0.0f;
        this.isoftclass = 0;
        this.cn_fee = 0.0f;
        this.cn_lfee = 0.0f;
        this.srcpicurls = null;
        this.expand = null;
        this.strSource = "";
        this.strLinkContent = "";
        this.strLinkUrl = "";
        this.softkey = this.softkey;
        this.short_desc = this.short_desc;
        this.description = this.description;
        this.type = this.type;
        this.softclass = this.softclass;
        this.procinfo = this.procinfo;
        this.smsmonitor = this.smsmonitor;
        this.phonemonitor = this.phonemonitor;
        this.netaccess = this.netaccess;
        this.autostart = this.autostart;
        this.asopt = this.asopt;
        this.nick_name = this.nick_name;
        this.reportFeature = this.reportFeature;
        this.logourl = this.logourl;
        this.filesize = this.filesize;
        this.publishtime = this.publishtime;
        this.downloadtimes = this.downloadtimes;
        this.function = this.function;
        this.fileurl = this.fileurl;
        this.picurls = this.picurls;
        this.official = this.official;
        this.update = this.update;
        this.score = this.score;
        this.suser = this.suser;
        this.softDescTimestamp = this.softDescTimestamp;
        this.iProductID = this.iProductID;
        this.iSoftID = this.iSoftID;
        this.iFileID = this.iFileID;
        this.feetype = this.feetype;
        this.fee = this.fee;
        this.pname = this.pname;
        this.hprice = this.hprice;
        this.comments = this.comments;
        this.logourls = this.logourls;
        this.pageurl = this.pageurl;
        this.lfee = this.lfee;
        this.isoftclass = this.isoftclass;
        this.cn_fee = this.cn_fee;
        this.cn_lfee = this.cn_lfee;
        this.srcpicurls = this.srcpicurls;
        this.expand = this.expand;
        this.strSource = this.strSource;
        this.strLinkContent = this.strLinkContent;
        this.strLinkUrl = this.strLinkUrl;
    }

    public SoftInfo(SoftKey softKey, String str, String str2, String str3, String str4, ArrayList<ProcInfo> arrayList, int i, int i2, int i3, int i4, int i5, String str5, int i6, String str6, int i7, String str7, int i8, String str8, String str9, ArrayList<String> arrayList2, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f2, String str10, String str11, ArrayList<Comment> arrayList3, ArrayList<String> arrayList4, String str12, float f3, int i18, float f4, float f5, ArrayList<String> arrayList5, byte[] bArr, String str13, String str14, String str15) {
        this.softkey = null;
        this.short_desc = "";
        this.description = "";
        this.type = "";
        this.softclass = "";
        this.procinfo = null;
        this.smsmonitor = 0;
        this.phonemonitor = 0;
        this.netaccess = 0;
        this.autostart = 0;
        this.asopt = EAutoStartOption.EASO_NONE.value();
        this.nick_name = "";
        this.reportFeature = 0;
        this.logourl = "";
        this.filesize = 0;
        this.publishtime = "";
        this.downloadtimes = 0;
        this.function = "";
        this.fileurl = "";
        this.picurls = null;
        this.official = 0;
        this.update = 0;
        this.score = 0;
        this.suser = 0;
        this.softDescTimestamp = 0;
        this.iProductID = 0;
        this.iSoftID = 0;
        this.iFileID = 0;
        this.feetype = 0;
        this.fee = 0.0f;
        this.pname = "";
        this.hprice = "";
        this.comments = null;
        this.logourls = null;
        this.pageurl = "";
        this.lfee = 0.0f;
        this.isoftclass = 0;
        this.cn_fee = 0.0f;
        this.cn_lfee = 0.0f;
        this.srcpicurls = null;
        this.expand = null;
        this.strSource = "";
        this.strLinkContent = "";
        this.strLinkUrl = "";
        this.softkey = softKey;
        this.short_desc = str;
        this.description = str2;
        this.type = str3;
        this.softclass = str4;
        this.procinfo = arrayList;
        this.smsmonitor = i;
        this.phonemonitor = i2;
        this.netaccess = i3;
        this.autostart = i4;
        this.asopt = i5;
        this.nick_name = str5;
        this.reportFeature = i6;
        this.logourl = str6;
        this.filesize = i7;
        this.publishtime = str7;
        this.downloadtimes = i8;
        this.function = str8;
        this.fileurl = str9;
        this.picurls = arrayList2;
        this.official = i9;
        this.update = i10;
        this.score = i11;
        this.suser = i12;
        this.softDescTimestamp = i13;
        this.iProductID = i14;
        this.iSoftID = i15;
        this.iFileID = i16;
        this.feetype = i17;
        this.fee = f2;
        this.pname = str10;
        this.hprice = str11;
        this.comments = arrayList3;
        this.logourls = arrayList4;
        this.pageurl = str12;
        this.lfee = f3;
        this.isoftclass = i18;
        this.cn_fee = f4;
        this.cn_lfee = f5;
        this.srcpicurls = arrayList5;
        this.expand = bArr;
        this.strSource = str13;
        this.strLinkContent = str14;
        this.strLinkUrl = str15;
    }

    public final String className() {
        return "QQPIM.SoftInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (h) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.short_desc, "short_desc");
        jceDisplayer.display(this.description, "description");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.softclass, "softclass");
        jceDisplayer.display((Collection) this.procinfo, "procinfo");
        jceDisplayer.display(this.smsmonitor, "smsmonitor");
        jceDisplayer.display(this.phonemonitor, "phonemonitor");
        jceDisplayer.display(this.netaccess, "netaccess");
        jceDisplayer.display(this.autostart, "autostart");
        jceDisplayer.display(this.asopt, "asopt");
        jceDisplayer.display(this.nick_name, "nick_name");
        jceDisplayer.display(this.reportFeature, "reportFeature");
        jceDisplayer.display(this.logourl, "logourl");
        jceDisplayer.display(this.filesize, "filesize");
        jceDisplayer.display(this.publishtime, "publishtime");
        jceDisplayer.display(this.downloadtimes, "downloadtimes");
        jceDisplayer.display(this.function, "function");
        jceDisplayer.display(this.fileurl, "fileurl");
        jceDisplayer.display((Collection) this.picurls, "picurls");
        jceDisplayer.display(this.official, "official");
        jceDisplayer.display(this.update, "update");
        jceDisplayer.display(this.score, "score");
        jceDisplayer.display(this.suser, "suser");
        jceDisplayer.display(this.softDescTimestamp, "softDescTimestamp");
        jceDisplayer.display(this.iProductID, "iProductID");
        jceDisplayer.display(this.iSoftID, "iSoftID");
        jceDisplayer.display(this.iFileID, "iFileID");
        jceDisplayer.display(this.feetype, "feetype");
        jceDisplayer.display(this.fee, "fee");
        jceDisplayer.display(this.pname, "pname");
        jceDisplayer.display(this.hprice, "hprice");
        jceDisplayer.display((Collection) this.comments, "comments");
        jceDisplayer.display((Collection) this.logourls, "logourls");
        jceDisplayer.display(this.pageurl, "pageurl");
        jceDisplayer.display(this.lfee, "lfee");
        jceDisplayer.display(this.isoftclass, "isoftclass");
        jceDisplayer.display(this.cn_fee, "cn_fee");
        jceDisplayer.display(this.cn_lfee, "cn_lfee");
        jceDisplayer.display((Collection) this.srcpicurls, "srcpicurls");
        jceDisplayer.display(this.expand, MarketManager.JCE_EXPAND_KEY);
        jceDisplayer.display(this.strSource, "strSource");
        jceDisplayer.display(this.strLinkContent, "strLinkContent");
        jceDisplayer.display(this.strLinkUrl, "strLinkUrl");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftInfo softInfo = (SoftInfo) obj;
        return JceUtil.equals(this.softkey, softInfo.softkey) && JceUtil.equals(this.short_desc, softInfo.short_desc) && JceUtil.equals(this.description, softInfo.description) && JceUtil.equals(this.type, softInfo.type) && JceUtil.equals(this.softclass, softInfo.softclass) && JceUtil.equals(this.procinfo, softInfo.procinfo) && JceUtil.equals(this.smsmonitor, softInfo.smsmonitor) && JceUtil.equals(this.phonemonitor, softInfo.phonemonitor) && JceUtil.equals(this.netaccess, softInfo.netaccess) && JceUtil.equals(this.autostart, softInfo.autostart) && JceUtil.equals(this.asopt, softInfo.asopt) && JceUtil.equals(this.nick_name, softInfo.nick_name) && JceUtil.equals(this.reportFeature, softInfo.reportFeature) && JceUtil.equals(this.logourl, softInfo.logourl) && JceUtil.equals(this.filesize, softInfo.filesize) && JceUtil.equals(this.publishtime, softInfo.publishtime) && JceUtil.equals(this.downloadtimes, softInfo.downloadtimes) && JceUtil.equals(this.function, softInfo.function) && JceUtil.equals(this.fileurl, softInfo.fileurl) && JceUtil.equals(this.picurls, softInfo.picurls) && JceUtil.equals(this.official, softInfo.official) && JceUtil.equals(this.update, softInfo.update) && JceUtil.equals(this.score, softInfo.score) && JceUtil.equals(this.suser, softInfo.suser) && JceUtil.equals(this.softDescTimestamp, softInfo.softDescTimestamp) && JceUtil.equals(this.iProductID, softInfo.iProductID) && JceUtil.equals(this.iSoftID, softInfo.iSoftID) && JceUtil.equals(this.iFileID, softInfo.iFileID) && JceUtil.equals(this.feetype, softInfo.feetype) && JceUtil.equals(this.fee, softInfo.fee) && JceUtil.equals(this.pname, softInfo.pname) && JceUtil.equals(this.hprice, softInfo.hprice) && JceUtil.equals(this.comments, softInfo.comments) && JceUtil.equals(this.logourls, softInfo.logourls) && JceUtil.equals(this.pageurl, softInfo.pageurl) && JceUtil.equals(this.lfee, softInfo.lfee) && JceUtil.equals(this.isoftclass, softInfo.isoftclass) && JceUtil.equals(this.cn_fee, softInfo.cn_fee) && JceUtil.equals(this.cn_lfee, softInfo.cn_lfee) && JceUtil.equals(this.srcpicurls, softInfo.srcpicurls) && JceUtil.equals(this.expand, softInfo.expand) && JceUtil.equals(this.strSource, softInfo.strSource) && JceUtil.equals(this.strLinkContent, softInfo.strLinkContent) && JceUtil.equals(this.strLinkUrl, softInfo.strLinkUrl);
    }

    public final String fullClassName() {
        return "QQPIM.SoftInfo";
    }

    public final int getAsopt() {
        return this.asopt;
    }

    public final int getAutostart() {
        return this.autostart;
    }

    public final float getCn_fee() {
        return this.cn_fee;
    }

    public final float getCn_lfee() {
        return this.cn_lfee;
    }

    public final ArrayList<Comment> getComments() {
        return this.comments;
    }

    public final String getDescription() {
        return this.description;
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

    public final String getFunction() {
        return this.function;
    }

    public final String getHprice() {
        return this.hprice;
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

    public final int getIsoftclass() {
        return this.isoftclass;
    }

    public final float getLfee() {
        return this.lfee;
    }

    public final String getLogourl() {
        return this.logourl;
    }

    public final ArrayList<String> getLogourls() {
        return this.logourls;
    }

    public final int getNetaccess() {
        return this.netaccess;
    }

    public final String getNick_name() {
        return this.nick_name;
    }

    public final int getOfficial() {
        return this.official;
    }

    public final String getPageurl() {
        return this.pageurl;
    }

    public final int getPhonemonitor() {
        return this.phonemonitor;
    }

    public final ArrayList<String> getPicurls() {
        return this.picurls;
    }

    public final String getPname() {
        return this.pname;
    }

    public final ArrayList<ProcInfo> getProcinfo() {
        return this.procinfo;
    }

    public final String getPublishtime() {
        return this.publishtime;
    }

    public final int getReportFeature() {
        return this.reportFeature;
    }

    public final int getScore() {
        return this.score;
    }

    public final String getShort_desc() {
        return this.short_desc;
    }

    public final int getSmsmonitor() {
        return this.smsmonitor;
    }

    public final int getSoftDescTimestamp() {
        return this.softDescTimestamp;
    }

    public final String getSoftclass() {
        return this.softclass;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
    }

    public final ArrayList<String> getSrcpicurls() {
        return this.srcpicurls;
    }

    public final String getStrLinkContent() {
        return this.strLinkContent;
    }

    public final String getStrLinkUrl() {
        return this.strLinkUrl;
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

    public final int getUpdate() {
        return this.update;
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 0, true);
        this.short_desc = jceInputStream.readString(1, false);
        this.description = jceInputStream.readString(2, false);
        this.type = jceInputStream.readString(3, false);
        this.softclass = jceInputStream.readString(4, false);
        if (b == null) {
            b = new ArrayList<>();
            b.add(new ProcInfo());
        }
        setProcinfo((ArrayList) jceInputStream.read((Object) b, 5, false));
        setSmsmonitor(jceInputStream.read(this.smsmonitor, 6, false));
        setPhonemonitor(jceInputStream.read(this.phonemonitor, 7, false));
        setNetaccess(jceInputStream.read(this.netaccess, 8, false));
        setAutostart(jceInputStream.read(this.autostart, 9, false));
        setAsopt(jceInputStream.read(this.asopt, 10, false));
        setNick_name(jceInputStream.readString(11, false));
        setReportFeature(jceInputStream.read(this.reportFeature, 12, false));
        setLogourl(jceInputStream.readString(13, false));
        setFilesize(jceInputStream.read(this.filesize, 14, false));
        setPublishtime(jceInputStream.readString(15, false));
        setDownloadtimes(jceInputStream.read(this.downloadtimes, 16, false));
        setFunction(jceInputStream.readString(17, false));
        setFileurl(jceInputStream.readString(18, false));
        if (c == null) {
            c = new ArrayList<>();
            c.add("");
        }
        setPicurls((ArrayList) jceInputStream.read((Object) c, 19, false));
        setOfficial(jceInputStream.read(this.official, 20, false));
        setUpdate(jceInputStream.read(this.update, 21, false));
        setScore(jceInputStream.read(this.score, 22, false));
        setSuser(jceInputStream.read(this.suser, 23, false));
        setSoftDescTimestamp(jceInputStream.read(this.softDescTimestamp, 24, false));
        setIProductID(jceInputStream.read(this.iProductID, 25, false));
        setISoftID(jceInputStream.read(this.iSoftID, 26, false));
        setIFileID(jceInputStream.read(this.iFileID, 27, false));
        setFeetype(jceInputStream.read(this.feetype, 28, false));
        setFee(jceInputStream.read(this.fee, 29, false));
        setPname(jceInputStream.readString(30, false));
        setHprice(jceInputStream.readString(31, false));
        if (d == null) {
            d = new ArrayList<>();
            d.add(new Comment());
        }
        setComments((ArrayList) jceInputStream.read((Object) d, 32, false));
        if (e == null) {
            e = new ArrayList<>();
            e.add("");
        }
        setLogourls((ArrayList) jceInputStream.read((Object) e, 33, false));
        setPageurl(jceInputStream.readString(34, false));
        setLfee(jceInputStream.read(this.lfee, 35, false));
        setIsoftclass(jceInputStream.read(this.isoftclass, 36, false));
        setCn_fee(jceInputStream.read(this.cn_fee, 37, false));
        setCn_lfee(jceInputStream.read(this.cn_lfee, 38, false));
        if (f == null) {
            f = new ArrayList<>();
            f.add("");
        }
        setSrcpicurls((ArrayList) jceInputStream.read((Object) f, 39, false));
        if (g == null) {
            g = new byte[1];
            g[0] = 0;
        }
        setExpand(jceInputStream.read(g, 40, false));
        setStrSource(jceInputStream.readString(41, false));
        setStrLinkContent(jceInputStream.readString(42, false));
        setStrLinkUrl(jceInputStream.readString(43, false));
    }

    public final void setAsopt(int i) {
        this.asopt = i;
    }

    public final void setAutostart(int i) {
        this.autostart = i;
    }

    public final void setCn_fee(float f2) {
        this.cn_fee = f2;
    }

    public final void setCn_lfee(float f2) {
        this.cn_lfee = f2;
    }

    public final void setComments(ArrayList<Comment> arrayList) {
        this.comments = arrayList;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownloadtimes(int i) {
        this.downloadtimes = i;
    }

    public final void setExpand(byte[] bArr) {
        this.expand = bArr;
    }

    public final void setFee(float f2) {
        this.fee = f2;
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

    public final void setFunction(String str) {
        this.function = str;
    }

    public final void setHprice(String str) {
        this.hprice = str;
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

    public final void setIsoftclass(int i) {
        this.isoftclass = i;
    }

    public final void setLfee(float f2) {
        this.lfee = f2;
    }

    public final void setLogourl(String str) {
        this.logourl = str;
    }

    public final void setLogourls(ArrayList<String> arrayList) {
        this.logourls = arrayList;
    }

    public final void setNetaccess(int i) {
        this.netaccess = i;
    }

    public final void setNick_name(String str) {
        this.nick_name = str;
    }

    public final void setOfficial(int i) {
        this.official = i;
    }

    public final void setPageurl(String str) {
        this.pageurl = str;
    }

    public final void setPhonemonitor(int i) {
        this.phonemonitor = i;
    }

    public final void setPicurls(ArrayList<String> arrayList) {
        this.picurls = arrayList;
    }

    public final void setPname(String str) {
        this.pname = str;
    }

    public final void setProcinfo(ArrayList<ProcInfo> arrayList) {
        this.procinfo = arrayList;
    }

    public final void setPublishtime(String str) {
        this.publishtime = str;
    }

    public final void setReportFeature(int i) {
        this.reportFeature = i;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setShort_desc(String str) {
        this.short_desc = str;
    }

    public final void setSmsmonitor(int i) {
        this.smsmonitor = i;
    }

    public final void setSoftDescTimestamp(int i) {
        this.softDescTimestamp = i;
    }

    public final void setSoftclass(String str) {
        this.softclass = str;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    public final void setSrcpicurls(ArrayList<String> arrayList) {
        this.srcpicurls = arrayList;
    }

    public final void setStrLinkContent(String str) {
        this.strLinkContent = str;
    }

    public final void setStrLinkUrl(String str) {
        this.strLinkUrl = str;
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

    public final void setUpdate(int i) {
        this.update = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        if (this.short_desc != null) {
            jceOutputStream.write(this.short_desc, 1);
        }
        if (this.description != null) {
            jceOutputStream.write(this.description, 2);
        }
        if (this.type != null) {
            jceOutputStream.write(this.type, 3);
        }
        if (this.softclass != null) {
            jceOutputStream.write(this.softclass, 4);
        }
        if (this.procinfo != null) {
            jceOutputStream.write((Collection) this.procinfo, 5);
        }
        jceOutputStream.write(this.smsmonitor, 6);
        jceOutputStream.write(this.phonemonitor, 7);
        jceOutputStream.write(this.netaccess, 8);
        jceOutputStream.write(this.autostart, 9);
        jceOutputStream.write(this.asopt, 10);
        if (this.nick_name != null) {
            jceOutputStream.write(this.nick_name, 11);
        }
        jceOutputStream.write(this.reportFeature, 12);
        if (this.logourl != null) {
            jceOutputStream.write(this.logourl, 13);
        }
        jceOutputStream.write(this.filesize, 14);
        if (this.publishtime != null) {
            jceOutputStream.write(this.publishtime, 15);
        }
        jceOutputStream.write(this.downloadtimes, 16);
        if (this.function != null) {
            jceOutputStream.write(this.function, 17);
        }
        if (this.fileurl != null) {
            jceOutputStream.write(this.fileurl, 18);
        }
        if (this.picurls != null) {
            jceOutputStream.write((Collection) this.picurls, 19);
        }
        jceOutputStream.write(this.official, 20);
        jceOutputStream.write(this.update, 21);
        jceOutputStream.write(this.score, 22);
        jceOutputStream.write(this.suser, 23);
        jceOutputStream.write(this.softDescTimestamp, 24);
        jceOutputStream.write(this.iProductID, 25);
        jceOutputStream.write(this.iSoftID, 26);
        jceOutputStream.write(this.iFileID, 27);
        jceOutputStream.write(this.feetype, 28);
        jceOutputStream.write(this.fee, 29);
        if (this.pname != null) {
            jceOutputStream.write(this.pname, 30);
        }
        if (this.hprice != null) {
            jceOutputStream.write(this.hprice, 31);
        }
        if (this.comments != null) {
            jceOutputStream.write((Collection) this.comments, 32);
        }
        if (this.logourls != null) {
            jceOutputStream.write((Collection) this.logourls, 33);
        }
        if (this.pageurl != null) {
            jceOutputStream.write(this.pageurl, 34);
        }
        jceOutputStream.write(this.lfee, 35);
        jceOutputStream.write(this.isoftclass, 36);
        jceOutputStream.write(this.cn_fee, 37);
        jceOutputStream.write(this.cn_lfee, 38);
        if (this.srcpicurls != null) {
            jceOutputStream.write((Collection) this.srcpicurls, 39);
        }
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 40);
        }
        if (this.strSource != null) {
            jceOutputStream.write(this.strSource, 41);
        }
        if (this.strLinkContent != null) {
            jceOutputStream.write(this.strLinkContent, 42);
        }
        if (this.strLinkUrl != null) {
            jceOutputStream.write(this.strLinkUrl, 43);
        }
    }
}
