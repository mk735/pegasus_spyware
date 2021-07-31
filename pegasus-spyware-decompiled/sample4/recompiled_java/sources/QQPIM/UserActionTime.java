package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserActionTime extends JceStruct {
    static final /* synthetic */ boolean a = (!UserActionTime.class.desiredAssertionStatus());
    public int time;
    public int userAction;

    public UserActionTime() {
        this.userAction = 0;
        this.time = 0;
        this.userAction = this.userAction;
        this.time = this.time;
    }

    public UserActionTime(int i, int i2) {
        this.userAction = 0;
        this.time = 0;
        this.userAction = i;
        this.time = i2;
    }

    public final String className() {
        return "QQPIM.UserActionTime";
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
        jceDisplayer.display(this.userAction, "userAction");
        jceDisplayer.display(this.time, AppDatabase.TIME);
    }

    public final boolean equals(Object obj) {
        UserActionTime userActionTime = (UserActionTime) obj;
        return JceUtil.equals(this.userAction, userActionTime.userAction) && JceUtil.equals(this.time, userActionTime.time);
    }

    public final int getTime() {
        return this.time;
    }

    public final int getUserAction() {
        return this.userAction;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.userAction = jceInputStream.read(this.userAction, 0, true);
        this.time = jceInputStream.read(this.time, 1, true);
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setUserAction(int i) {
        this.userAction = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.userAction, 0);
        jceOutputStream.write(this.time, 1);
    }
}
