package QQPIM;

import com.lenovo.safecenter.systeminfo.entity.Category;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.Arrays;

public final class SoftKey extends JceStruct implements Cloneable, Comparable<SoftKey> {
    static final /* synthetic */ boolean a = (!SoftKey.class.desiredAssertionStatus());
    public int appid;
    public int break_flag;
    public int category;
    public int categorytype;
    public String cert;
    public int isbuildin;
    public String name;
    public String newest_version;
    public int old_versioncode;
    public String producttime;
    public int sdk_version;
    public String softname;
    public int source;
    public String uid;
    public String version;
    public int versioncode;

    public SoftKey() {
        this.uid = "";
        this.softname = "";
        this.version = "";
        this.producttime = "";
        this.cert = "";
        this.versioncode = 0;
        this.name = "";
        this.isbuildin = 0;
        this.newest_version = "";
        this.old_versioncode = 0;
        this.categorytype = 0;
        this.category = 0;
        this.break_flag = 0;
        this.source = 0;
        this.sdk_version = 0;
        this.appid = 0;
        this.uid = this.uid;
        this.softname = this.softname;
        this.version = this.version;
        this.producttime = this.producttime;
        this.cert = this.cert;
        this.versioncode = this.versioncode;
        this.name = this.name;
        this.isbuildin = this.isbuildin;
        this.newest_version = this.newest_version;
        this.old_versioncode = this.old_versioncode;
        this.categorytype = this.categorytype;
        this.category = this.category;
        this.break_flag = this.break_flag;
        this.source = this.source;
        this.sdk_version = this.sdk_version;
        this.appid = this.appid;
    }

    public SoftKey(String str, String str2, String str3, String str4, String str5, int i, String str6, int i2, String str7, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.uid = "";
        this.softname = "";
        this.version = "";
        this.producttime = "";
        this.cert = "";
        this.versioncode = 0;
        this.name = "";
        this.isbuildin = 0;
        this.newest_version = "";
        this.old_versioncode = 0;
        this.categorytype = 0;
        this.category = 0;
        this.break_flag = 0;
        this.source = 0;
        this.sdk_version = 0;
        this.appid = 0;
        this.uid = str;
        this.softname = str2;
        this.version = str3;
        this.producttime = str4;
        this.cert = str5;
        this.versioncode = i;
        this.name = str6;
        this.isbuildin = i2;
        this.newest_version = str7;
        this.old_versioncode = i3;
        this.categorytype = i4;
        this.category = i5;
        this.break_flag = i6;
        this.source = i7;
        this.sdk_version = i8;
        this.appid = i9;
    }

    public final String className() {
        return "QQPIM.SoftKey";
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

    public final int compareTo(SoftKey softKey) {
        int[] iArr = {JceUtil.compareTo(this.uid, softKey.uid), JceUtil.compareTo(this.softname, softKey.softname), JceUtil.compareTo(this.version, softKey.version), JceUtil.compareTo(this.producttime, softKey.producttime)};
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] != 0) {
                return iArr[i];
            }
        }
        return 0;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.uid, "uid");
        jceDisplayer.display(this.softname, "softname");
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.producttime, "producttime");
        jceDisplayer.display(this.cert, "cert");
        jceDisplayer.display(this.versioncode, "versioncode");
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.isbuildin, "isbuildin");
        jceDisplayer.display(this.newest_version, "newest_version");
        jceDisplayer.display(this.old_versioncode, "old_versioncode");
        jceDisplayer.display(this.categorytype, "categorytype");
        jceDisplayer.display(this.category, Category.TABLE_NAME);
        jceDisplayer.display(this.break_flag, "break_flag");
        jceDisplayer.display(this.source, "source");
        jceDisplayer.display(this.sdk_version, "sdk_version");
        jceDisplayer.display(this.appid, "appid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftKey softKey = (SoftKey) obj;
        return JceUtil.equals(this.uid, softKey.uid) && JceUtil.equals(this.softname, softKey.softname) && JceUtil.equals(this.version, softKey.version) && JceUtil.equals(this.producttime, softKey.producttime);
    }

    public final String fullClassName() {
        return "QQPIM.SoftKey";
    }

    public final int getAppid() {
        return this.appid;
    }

    public final int getBreak_flag() {
        return this.break_flag;
    }

    public final int getCategory() {
        return this.category;
    }

    public final int getCategorytype() {
        return this.categorytype;
    }

    public final String getCert() {
        return this.cert;
    }

    public final int getIsbuildin() {
        return this.isbuildin;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNewest_version() {
        return this.newest_version;
    }

    public final int getOld_versioncode() {
        return this.old_versioncode;
    }

    public final String getProducttime() {
        return this.producttime;
    }

    public final int getSdk_version() {
        return this.sdk_version;
    }

    public final String getSoftname() {
        return this.softname;
    }

    public final int getSource() {
        return this.source;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getVersion() {
        return this.version;
    }

    public final int getVersioncode() {
        return this.versioncode;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{JceUtil.hashCode(this.uid), JceUtil.hashCode(this.softname), JceUtil.hashCode(this.version), JceUtil.hashCode(this.producttime)});
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.uid = jceInputStream.readString(0, true);
        this.softname = jceInputStream.readString(1, true);
        this.version = jceInputStream.readString(2, true);
        this.producttime = jceInputStream.readString(3, false);
        this.cert = jceInputStream.readString(4, false);
        this.versioncode = jceInputStream.read(this.versioncode, 5, false);
        this.name = jceInputStream.readString(6, false);
        this.isbuildin = jceInputStream.read(this.isbuildin, 7, false);
        this.newest_version = jceInputStream.readString(8, false);
        this.old_versioncode = jceInputStream.read(this.old_versioncode, 9, false);
        this.categorytype = jceInputStream.read(this.categorytype, 10, false);
        this.category = jceInputStream.read(this.category, 11, false);
        this.break_flag = jceInputStream.read(this.break_flag, 12, false);
        this.source = jceInputStream.read(this.source, 13, false);
        this.sdk_version = jceInputStream.read(this.sdk_version, 14, false);
        this.appid = jceInputStream.read(this.appid, 15, false);
    }

    public final void setAppid(int i) {
        this.appid = i;
    }

    public final void setBreak_flag(int i) {
        this.break_flag = i;
    }

    public final void setCategory(int i) {
        this.category = i;
    }

    public final void setCategorytype(int i) {
        this.categorytype = i;
    }

    public final void setCert(String str) {
        this.cert = str;
    }

    public final void setIsbuildin(int i) {
        this.isbuildin = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNewest_version(String str) {
        this.newest_version = str;
    }

    public final void setOld_versioncode(int i) {
        this.old_versioncode = i;
    }

    public final void setProducttime(String str) {
        this.producttime = str;
    }

    public final void setSdk_version(int i) {
        this.sdk_version = i;
    }

    public final void setSoftname(String str) {
        this.softname = str;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void setVersioncode(int i) {
        this.versioncode = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uid, 0);
        jceOutputStream.write(this.softname, 1);
        jceOutputStream.write(this.version, 2);
        if (this.producttime != null) {
            jceOutputStream.write(this.producttime, 3);
        }
        if (this.cert != null) {
            jceOutputStream.write(this.cert, 4);
        }
        jceOutputStream.write(this.versioncode, 5);
        if (this.name != null) {
            jceOutputStream.write(this.name, 6);
        }
        jceOutputStream.write(this.isbuildin, 7);
        if (this.newest_version != null) {
            jceOutputStream.write(this.newest_version, 8);
        }
        jceOutputStream.write(this.old_versioncode, 9);
        jceOutputStream.write(this.categorytype, 10);
        jceOutputStream.write(this.category, 11);
        jceOutputStream.write(this.break_flag, 12);
        jceOutputStream.write(this.source, 13);
        jceOutputStream.write(this.sdk_version, 14);
        jceOutputStream.write(this.appid, 15);
    }
}
