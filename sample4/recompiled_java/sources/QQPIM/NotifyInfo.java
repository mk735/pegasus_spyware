package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class NotifyInfo extends JceStruct implements Cloneable {
    static FeatureKey a;
    static final /* synthetic */ boolean b = (!NotifyInfo.class.desiredAssertionStatus());
    public String content;
    public FeatureKey featurekey;
    public int reportType;
    public int timestamp;
    public String title;

    public NotifyInfo() {
        this.featurekey = null;
        this.title = "";
        this.content = "";
        this.timestamp = 0;
        this.reportType = 0;
        this.featurekey = this.featurekey;
        this.title = this.title;
        this.content = this.content;
        this.timestamp = this.timestamp;
        this.reportType = this.reportType;
    }

    public NotifyInfo(FeatureKey featureKey, String str, String str2, int i, int i2) {
        this.featurekey = null;
        this.title = "";
        this.content = "";
        this.timestamp = 0;
        this.reportType = 0;
        this.featurekey = featureKey;
        this.title = str;
        this.content = str2;
        this.timestamp = i;
        this.reportType = i2;
    }

    public final String className() {
        return "QQPIM.NotifyInfo";
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
        jceDisplayer.display((JceStruct) this.featurekey, "featurekey");
        jceDisplayer.display(this.title, "title");
        jceDisplayer.display(this.content, AppDatabase.CONTENT);
        jceDisplayer.display(this.timestamp, DatabaseTables.LOG_TIMESTAMP);
        jceDisplayer.display(this.reportType, "reportType");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        NotifyInfo notifyInfo = (NotifyInfo) obj;
        return JceUtil.equals(this.featurekey, notifyInfo.featurekey) && JceUtil.equals(this.title, notifyInfo.title) && JceUtil.equals(this.content, notifyInfo.content) && JceUtil.equals(this.timestamp, notifyInfo.timestamp) && JceUtil.equals(this.reportType, notifyInfo.reportType);
    }

    public final String fullClassName() {
        return "QQPIM.NotifyInfo";
    }

    public final String getContent() {
        return this.content;
    }

    public final FeatureKey getFeaturekey() {
        return this.featurekey;
    }

    public final int getReportType() {
        return this.reportType;
    }

    public final int getTimestamp() {
        return this.timestamp;
    }

    public final String getTitle() {
        return this.title;
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
            a = new FeatureKey();
        }
        this.featurekey = (FeatureKey) jceInputStream.read((JceStruct) a, 0, true);
        this.title = jceInputStream.readString(1, true);
        this.content = jceInputStream.readString(2, true);
        this.timestamp = jceInputStream.read(this.timestamp, 3, false);
        this.reportType = jceInputStream.read(this.reportType, 4, false);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setFeaturekey(FeatureKey featureKey) {
        this.featurekey = featureKey;
    }

    public final void setReportType(int i) {
        this.reportType = i;
    }

    public final void setTimestamp(int i) {
        this.timestamp = i;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.featurekey, 0);
        jceOutputStream.write(this.title, 1);
        jceOutputStream.write(this.content, 2);
        jceOutputStream.write(this.timestamp, 3);
        jceOutputStream.write(this.reportType, 4);
    }
}
