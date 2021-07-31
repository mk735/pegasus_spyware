package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class VirusInfo extends JceStruct implements Cloneable {
    static ArrayList<VirusFeature> a;
    static final /* synthetic */ boolean b = (!VirusInfo.class.desiredAssertionStatus());
    public int advice;
    public String description;
    public ArrayList<VirusFeature> features;
    public int id;
    public String label;
    public int level;
    public int method;
    public String name;
    public int optype;
    public byte ostype;
    public int pkgnum;
    public int safetype;
    public int scantype;
    public int timestamp;
    public String url;

    public VirusInfo() {
        this.id = 0;
        this.name = "";
        this.timestamp = 0;
        this.ostype = 0;
        this.description = "";
        this.features = null;
        this.safetype = 0;
        this.advice = 0;
        this.label = "";
        this.optype = 0;
        this.scantype = 0;
        this.level = 0;
        this.method = 0;
        this.url = "";
        this.pkgnum = 0;
        this.id = this.id;
        this.name = this.name;
        this.timestamp = this.timestamp;
        this.ostype = this.ostype;
        this.description = this.description;
        this.features = this.features;
        this.safetype = this.safetype;
        this.advice = this.advice;
        this.label = this.label;
        this.optype = this.optype;
        this.scantype = this.scantype;
        this.level = this.level;
        this.method = this.method;
        this.url = this.url;
        this.pkgnum = this.pkgnum;
    }

    public VirusInfo(int i, String str, int i2, byte b2, String str2, ArrayList<VirusFeature> arrayList, int i3, int i4, String str3, int i5, int i6, int i7, int i8, String str4, int i9) {
        this.id = 0;
        this.name = "";
        this.timestamp = 0;
        this.ostype = 0;
        this.description = "";
        this.features = null;
        this.safetype = 0;
        this.advice = 0;
        this.label = "";
        this.optype = 0;
        this.scantype = 0;
        this.level = 0;
        this.method = 0;
        this.url = "";
        this.pkgnum = 0;
        this.id = i;
        this.name = str;
        this.timestamp = i2;
        this.ostype = b2;
        this.description = str2;
        this.features = arrayList;
        this.safetype = i3;
        this.advice = i4;
        this.label = str3;
        this.optype = i5;
        this.scantype = i6;
        this.level = i7;
        this.method = i8;
        this.url = str4;
        this.pkgnum = i9;
    }

    public final String className() {
        return "QQPIM.VirusInfo";
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
        jceDisplayer.display(this.id, QueryPermissions.ID);
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.ostype, "ostype");
        jceDisplayer.display(this.description, "description");
        jceDisplayer.display((Collection) this.features, "features");
        jceDisplayer.display(this.safetype, "safetype");
        jceDisplayer.display(this.advice, "advice");
        jceDisplayer.display(this.label, "label");
        jceDisplayer.display(this.optype, "optype");
        jceDisplayer.display(this.scantype, "scantype");
        jceDisplayer.display(this.level, "level");
        jceDisplayer.display(this.method, "method");
        jceDisplayer.display(this.url, "url");
        jceDisplayer.display(this.pkgnum, "pkgnum");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        VirusInfo virusInfo = (VirusInfo) obj;
        return JceUtil.equals(this.id, virusInfo.id) && JceUtil.equals(this.name, virusInfo.name) && JceUtil.equals(this.timestamp, virusInfo.timestamp) && JceUtil.equals(this.ostype, virusInfo.ostype) && JceUtil.equals(this.description, virusInfo.description) && JceUtil.equals(this.features, virusInfo.features) && JceUtil.equals(this.safetype, virusInfo.safetype) && JceUtil.equals(this.advice, virusInfo.advice) && JceUtil.equals(this.label, virusInfo.label) && JceUtil.equals(this.optype, virusInfo.optype) && JceUtil.equals(this.scantype, virusInfo.scantype) && JceUtil.equals(this.level, virusInfo.level) && JceUtil.equals(this.method, virusInfo.method) && JceUtil.equals(this.url, virusInfo.url) && JceUtil.equals(this.pkgnum, virusInfo.pkgnum);
    }

    public final String fullClassName() {
        return "QQPIM.VirusInfo";
    }

    public final int getAdvice() {
        return this.advice;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ArrayList<VirusFeature> getFeatures() {
        return this.features;
    }

    public final int getId() {
        return this.id;
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getMethod() {
        return this.method;
    }

    public final String getName() {
        return this.name;
    }

    public final int getOptype() {
        return this.optype;
    }

    public final byte getOstype() {
        return this.ostype;
    }

    public final int getPkgnum() {
        return this.pkgnum;
    }

    public final int getSafetype() {
        return this.safetype;
    }

    public final int getScantype() {
        return this.scantype;
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
        this.id = jceInputStream.read(this.id, 0, true);
        this.name = jceInputStream.readString(1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.ostype = jceInputStream.read(this.ostype, 3, true);
        this.description = jceInputStream.readString(4, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new VirusFeature());
        }
        setFeatures((ArrayList) jceInputStream.read((Object) a, 5, true));
        setSafetype(jceInputStream.read(this.safetype, 6, false));
        setAdvice(jceInputStream.read(this.advice, 7, false));
        setLabel(jceInputStream.readString(8, false));
        setOptype(jceInputStream.read(this.optype, 9, false));
        setScantype(jceInputStream.read(this.scantype, 10, false));
        setLevel(jceInputStream.read(this.level, 11, false));
        setMethod(jceInputStream.read(this.method, 12, false));
        setUrl(jceInputStream.readString(13, false));
        setPkgnum(jceInputStream.read(this.pkgnum, 14, false));
    }

    public final void setAdvice(int i) {
        this.advice = i;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setFeatures(ArrayList<VirusFeature> arrayList) {
        this.features = arrayList;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setLabel(String str) {
        this.label = str;
    }

    public final void setLevel(int i) {
        this.level = i;
    }

    public final void setMethod(int i) {
        this.method = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOptype(int i) {
        this.optype = i;
    }

    public final void setOstype(byte b2) {
        this.ostype = b2;
    }

    public final void setPkgnum(int i) {
        this.pkgnum = i;
    }

    public final void setSafetype(int i) {
        this.safetype = i;
    }

    public final void setScantype(int i) {
        this.scantype = i;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write(this.name, 1);
        jceOutputStream.write(this.timestamp, 2);
        jceOutputStream.write(this.ostype, 3);
        jceOutputStream.write(this.description, 4);
        jceOutputStream.write((Collection) this.features, 5);
        jceOutputStream.write(this.safetype, 6);
        jceOutputStream.write(this.advice, 7);
        if (this.label != null) {
            jceOutputStream.write(this.label, 8);
        }
        jceOutputStream.write(this.optype, 9);
        jceOutputStream.write(this.scantype, 10);
        jceOutputStream.write(this.level, 11);
        jceOutputStream.write(this.method, 12);
        if (this.url != null) {
            jceOutputStream.write(this.url, 13);
        }
        jceOutputStream.write(this.pkgnum, 14);
    }
}
