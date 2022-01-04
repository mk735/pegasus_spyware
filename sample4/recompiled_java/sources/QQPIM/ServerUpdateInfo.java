package QQPIM;

import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ServerUpdateInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ServerUpdateInfo.class.desiredAssertionStatus());
    public int action;
    public String message;
    public int nextcheckinterval;
    public int time;
    public int type;

    public ServerUpdateInfo() {
        this.action = 0;
        this.type = 0;
        this.message = "";
        this.time = 0;
        this.nextcheckinterval = 0;
        this.action = this.action;
        this.type = this.type;
        this.message = this.message;
        this.time = this.time;
        this.nextcheckinterval = this.nextcheckinterval;
    }

    public ServerUpdateInfo(int i, int i2, String str, int i3, int i4) {
        this.action = 0;
        this.type = 0;
        this.message = "";
        this.time = 0;
        this.nextcheckinterval = 0;
        this.action = i;
        this.type = i2;
        this.message = str;
        this.time = i3;
        this.nextcheckinterval = i4;
    }

    public final String className() {
        return "QQPIM.ServerUpdateInfo";
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
        jceDisplayer.display(this.action, "action");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.message, DatabaseTables.LOG_MESSAGE);
        jceDisplayer.display(this.time, AppDatabase.TIME);
        jceDisplayer.display(this.nextcheckinterval, "nextcheckinterval");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ServerUpdateInfo serverUpdateInfo = (ServerUpdateInfo) obj;
        return JceUtil.equals(this.action, serverUpdateInfo.action) && JceUtil.equals(this.type, serverUpdateInfo.type) && JceUtil.equals(this.message, serverUpdateInfo.message) && JceUtil.equals(this.time, serverUpdateInfo.time) && JceUtil.equals(this.nextcheckinterval, serverUpdateInfo.nextcheckinterval);
    }

    public final String fullClassName() {
        return "QQPIM.ServerUpdateInfo";
    }

    public final int getAction() {
        return this.action;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getNextcheckinterval() {
        return this.nextcheckinterval;
    }

    public final int getTime() {
        return this.time;
    }

    public final int getType() {
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
        this.action = jceInputStream.read(this.action, 0, true);
        this.type = jceInputStream.read(this.type, 1, true);
        this.message = jceInputStream.readString(2, true);
        this.time = jceInputStream.read(this.time, 3, false);
        this.nextcheckinterval = jceInputStream.read(this.nextcheckinterval, 4, false);
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final void setNextcheckinterval(int i) {
        this.nextcheckinterval = i;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.action, 0);
        jceOutputStream.write(this.type, 1);
        jceOutputStream.write(this.message, 2);
        jceOutputStream.write(this.time, 3);
        jceOutputStream.write(this.nextcheckinterval, 4);
    }
}
