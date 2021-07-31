package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserKey extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!UserKey.class.desiredAssertionStatus());
    public String mainkey;
    public String model;

    public UserKey() {
        this.mainkey = "";
        this.model = "";
        this.mainkey = this.mainkey;
        this.model = this.model;
    }

    public UserKey(String str, String str2) {
        this.mainkey = "";
        this.model = "";
        this.mainkey = str;
        this.model = str2;
    }

    public final String className() {
        return "QQPIM.UserKey";
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
        jceDisplayer.display(this.mainkey, "mainkey");
        jceDisplayer.display(this.model, "model");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        UserKey userKey = (UserKey) obj;
        return JceUtil.equals(this.mainkey, userKey.mainkey) && JceUtil.equals(this.model, userKey.model);
    }

    public final String fullClassName() {
        return "QQPIM.UserKey";
    }

    public final String getMainkey() {
        return this.mainkey;
    }

    public final String getModel() {
        return this.model;
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
        this.mainkey = jceInputStream.readString(0, true);
        this.model = jceInputStream.readString(1, true);
    }

    public final void setMainkey(String str) {
        this.mainkey = str;
    }

    public final void setModel(String str) {
        this.model = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.mainkey, 0);
        jceOutputStream.write(this.model, 1);
    }
}
