package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TimeCtrl extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TimeCtrl.class.desiredAssertionStatus());
    public boolean bEngross;
    public int exectime;
    public int time;
    public int validEndTime;

    public TimeCtrl() {
        this.time = 0;
        this.bEngross = true;
        this.validEndTime = 0;
        this.exectime = 0;
        this.time = this.time;
        this.bEngross = this.bEngross;
        this.validEndTime = this.validEndTime;
        this.exectime = this.exectime;
    }

    public TimeCtrl(int i, boolean z, int i2, int i3) {
        this.time = 0;
        this.bEngross = true;
        this.validEndTime = 0;
        this.exectime = 0;
        this.time = i;
        this.bEngross = z;
        this.validEndTime = i2;
        this.exectime = i3;
    }

    public final String className() {
        return "QQPIM.TimeCtrl";
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
        jceDisplayer.display(this.time, AppDatabase.TIME);
        jceDisplayer.display(this.bEngross, "bEngross");
        jceDisplayer.display(this.validEndTime, "validEndTime");
        jceDisplayer.display(this.exectime, "exectime");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TimeCtrl timeCtrl = (TimeCtrl) obj;
        return JceUtil.equals(this.time, timeCtrl.time) && JceUtil.equals(this.bEngross, timeCtrl.bEngross) && JceUtil.equals(this.validEndTime, timeCtrl.validEndTime) && JceUtil.equals(this.exectime, timeCtrl.exectime);
    }

    public final String fullClassName() {
        return "QQPIM.TimeCtrl";
    }

    public final boolean getBEngross() {
        return this.bEngross;
    }

    public final int getExectime() {
        return this.exectime;
    }

    public final int getTime() {
        return this.time;
    }

    public final int getValidEndTime() {
        return this.validEndTime;
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
        this.bEngross = jceInputStream.read(this.bEngross, 1, true);
        this.validEndTime = jceInputStream.read(this.validEndTime, 2, false);
        this.exectime = jceInputStream.read(this.exectime, 3, false);
    }

    public final void setBEngross(boolean z) {
        this.bEngross = z;
    }

    public final void setExectime(int i) {
        this.exectime = i;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setValidEndTime(int i) {
        this.validEndTime = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.time, 0);
        jceOutputStream.write(this.bEngross, 1);
        jceOutputStream.write(this.validEndTime, 2);
        jceOutputStream.write(this.exectime, 3);
    }
}
