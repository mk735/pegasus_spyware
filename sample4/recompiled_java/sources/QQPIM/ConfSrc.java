package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.software.AppEntity;

public final class ConfSrc extends JceStruct implements Cloneable {
    static byte[] a;
    static final /* synthetic */ boolean b = (!ConfSrc.class.desiredAssertionStatus());
    public String checksum;
    public byte[] data;
    public String filename;
    public int isincreupdate;
    public String iuchecksum;
    public int rnum;
    public int size;
    public int timestamp;
    public String url;

    public ConfSrc() {
        this.filename = "";
        this.checksum = "";
        this.timestamp = 0;
        this.url = "";
        this.isincreupdate = 0;
        this.iuchecksum = "";
        this.data = null;
        this.rnum = 0;
        this.size = 0;
        this.filename = this.filename;
        this.checksum = this.checksum;
        this.timestamp = this.timestamp;
        this.url = this.url;
        this.isincreupdate = this.isincreupdate;
        this.iuchecksum = this.iuchecksum;
        this.data = this.data;
        this.rnum = this.rnum;
        this.size = this.size;
    }

    public ConfSrc(String str, String str2, int i, String str3, int i2, String str4, byte[] bArr, int i3, int i4) {
        this.filename = "";
        this.checksum = "";
        this.timestamp = 0;
        this.url = "";
        this.isincreupdate = 0;
        this.iuchecksum = "";
        this.data = null;
        this.rnum = 0;
        this.size = 0;
        this.filename = str;
        this.checksum = str2;
        this.timestamp = i;
        this.url = str3;
        this.isincreupdate = i2;
        this.iuchecksum = str4;
        this.data = bArr;
        this.rnum = i3;
        this.size = i4;
    }

    public final String className() {
        return "QQPIM.ConfSrc";
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
        jceDisplayer.display(this.filename, "filename");
        jceDisplayer.display(this.checksum, "checksum");
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display(this.isincreupdate, "isincreupdate");
        jceDisplayer.display(this.iuchecksum, "iuchecksum");
        jceDisplayer.display(this.data, SettingUtil.DATA);
        jceDisplayer.display(this.rnum, "rnum");
        jceDisplayer.display(this.size, AppEntity.KEY_SIZE_LONG);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ConfSrc confSrc = (ConfSrc) obj;
        return JceUtil.equals(this.filename, confSrc.filename) && JceUtil.equals(this.checksum, confSrc.checksum) && JceUtil.equals(this.timestamp, confSrc.timestamp) && JceUtil.equals(this.url, confSrc.url) && JceUtil.equals(this.isincreupdate, confSrc.isincreupdate) && JceUtil.equals(this.iuchecksum, confSrc.iuchecksum) && JceUtil.equals(this.data, confSrc.data) && JceUtil.equals(this.rnum, confSrc.rnum) && JceUtil.equals(this.size, confSrc.size);
    }

    public final String fullClassName() {
        return "QQPIM.ConfSrc";
    }

    public final String getChecksum() {
        return this.checksum;
    }

    public final byte[] getData() {
        return this.data;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final int getIsincreupdate() {
        return this.isincreupdate;
    }

    public final String getIuchecksum() {
        return this.iuchecksum;
    }

    public final int getRnum() {
        return this.rnum;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getTimestamp() {
        return this.timestamp;
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
        this.filename = jceInputStream.readString(0, true);
        this.checksum = jceInputStream.readString(1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.url = jceInputStream.readString(3, true);
        this.isincreupdate = jceInputStream.read(this.isincreupdate, 4, false);
        this.iuchecksum = jceInputStream.readString(5, false);
        if (a == null) {
            a = new byte[1];
            a[0] = 0;
        }
        this.data = jceInputStream.read(a, 6, false);
        this.rnum = jceInputStream.read(this.rnum, 7, false);
        this.size = jceInputStream.read(this.size, 8, false);
    }

    public final void setChecksum(String str) {
        this.checksum = str;
    }

    public final void setData(byte[] bArr) {
        this.data = bArr;
    }

    public final void setFilename(String str) {
        this.filename = str;
    }

    public final void setIsincreupdate(int i) {
        this.isincreupdate = i;
    }

    public final void setIuchecksum(String str) {
        this.iuchecksum = str;
    }

    public final void setRnum(int i) {
        this.rnum = i;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.filename, 0);
        jceOutputStream.write(this.checksum, 1);
        jceOutputStream.write(this.timestamp, 2);
        jceOutputStream.write(this.url, 3);
        jceOutputStream.write(this.isincreupdate, 4);
        if (this.iuchecksum != null) {
            jceOutputStream.write(this.iuchecksum, 5);
        }
        if (this.data != null) {
            jceOutputStream.write(this.data, 6);
        }
        jceOutputStream.write(this.rnum, 7);
        jceOutputStream.write(this.size, 8);
    }
}
