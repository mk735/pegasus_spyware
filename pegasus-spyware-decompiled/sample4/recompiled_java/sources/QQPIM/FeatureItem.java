package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FeatureItem extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!FeatureItem.class.desiredAssertionStatus());
    public String content;
    public short id;

    public FeatureItem() {
        this.id = 0;
        this.content = "";
        this.id = this.id;
        this.content = this.content;
    }

    public FeatureItem(short s, String str) {
        this.id = 0;
        this.content = "";
        this.id = s;
        this.content = str;
    }

    public final String className() {
        return "QQPIM.FeatureItem";
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
        jceDisplayer.display(this.id, QueryPermissions.ID);
        jceDisplayer.display(this.content, AppDatabase.CONTENT);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FeatureItem featureItem = (FeatureItem) obj;
        return JceUtil.equals(this.id, featureItem.id) && JceUtil.equals(this.content, featureItem.content);
    }

    public final String fullClassName() {
        return "QQPIM.FeatureItem";
    }

    public final String getContent() {
        return this.content;
    }

    public final short getId() {
        return this.id;
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
        this.content = jceInputStream.readString(1, true);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setId(short s) {
        this.id = s;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write(this.content, 1);
    }
}
