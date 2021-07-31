package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.wupsession.WupConfig;

public final class GUIDInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!GUIDInfo.class.desiredAssertionStatus());
    public String guid;

    public GUIDInfo() {
        this.guid = "";
        this.guid = this.guid;
    }

    public GUIDInfo(String str) {
        this.guid = "";
        this.guid = str;
    }

    public final String className() {
        return "QQPIM.GUIDInfo";
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
        new JceDisplayer(sb, i).display(this.guid, WupConfig.KEY_GUID);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.guid, ((GUIDInfo) obj).guid);
    }

    public final String fullClassName() {
        return "QQPIM.GUIDInfo";
    }

    public final String getGuid() {
        return this.guid;
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
        this.guid = jceInputStream.readString(0, true);
    }

    public final void setGuid(String str) {
        this.guid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.guid, 0);
    }
}
