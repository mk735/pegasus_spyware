package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ServerInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ServerInfo.class.desiredAssertionStatus());
    public int time;

    public ServerInfo() {
        this.time = 0;
        this.time = this.time;
    }

    public ServerInfo(int i) {
        this.time = 0;
        this.time = i;
    }

    public final String className() {
        return "QQPIM.ServerInfo";
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
        new JceDisplayer(sb, i).display(this.time, AppDatabase.TIME);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.time, ((ServerInfo) obj).time);
    }

    public final String fullClassName() {
        return "QQPIM.ServerInfo";
    }

    public final int getTime() {
        return this.time;
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
        this.time = jceInputStream.read(this.time, 0, true);
    }

    public final void setTime(int i) {
        this.time = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.time, 0);
    }
}
