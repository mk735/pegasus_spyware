package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PointsInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!PointsInfo.class.desiredAssertionStatus());
    public int daymaxpoints;
    public int daypoints;
    public int effetime;
    public int totalpoints;

    public PointsInfo() {
        this.totalpoints = 0;
        this.daymaxpoints = 0;
        this.daypoints = 0;
        this.effetime = 0;
        this.totalpoints = this.totalpoints;
        this.daymaxpoints = this.daymaxpoints;
        this.daypoints = this.daypoints;
        this.effetime = this.effetime;
    }

    public PointsInfo(int i, int i2, int i3, int i4) {
        this.totalpoints = 0;
        this.daymaxpoints = 0;
        this.daypoints = 0;
        this.effetime = 0;
        this.totalpoints = i;
        this.daymaxpoints = i2;
        this.daypoints = i3;
        this.effetime = i4;
    }

    public final String className() {
        return "QQPIM.PointsInfo";
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
        jceDisplayer.display(this.totalpoints, "totalpoints");
        jceDisplayer.display(this.daymaxpoints, "daymaxpoints");
        jceDisplayer.display(this.daypoints, "daypoints");
        jceDisplayer.display(this.effetime, "effetime");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        PointsInfo pointsInfo = (PointsInfo) obj;
        return JceUtil.equals(this.totalpoints, pointsInfo.totalpoints) && JceUtil.equals(this.daymaxpoints, pointsInfo.daymaxpoints) && JceUtil.equals(this.daypoints, pointsInfo.daypoints) && JceUtil.equals(this.effetime, pointsInfo.effetime);
    }

    public final String fullClassName() {
        return "QQPIM.PointsInfo";
    }

    public final int getDaymaxpoints() {
        return this.daymaxpoints;
    }

    public final int getDaypoints() {
        return this.daypoints;
    }

    public final int getEffetime() {
        return this.effetime;
    }

    public final int getTotalpoints() {
        return this.totalpoints;
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
        this.totalpoints = jceInputStream.read(this.totalpoints, 0, true);
        this.daymaxpoints = jceInputStream.read(this.daymaxpoints, 1, false);
        this.daypoints = jceInputStream.read(this.daypoints, 2, false);
        this.effetime = jceInputStream.read(this.effetime, 3, false);
    }

    public final void setDaymaxpoints(int i) {
        this.daymaxpoints = i;
    }

    public final void setDaypoints(int i) {
        this.daypoints = i;
    }

    public final void setEffetime(int i) {
        this.effetime = i;
    }

    public final void setTotalpoints(int i) {
        this.totalpoints = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.totalpoints, 0);
        jceOutputStream.write(this.daymaxpoints, 1);
        jceOutputStream.write(this.daypoints, 2);
        jceOutputStream.write(this.effetime, 3);
    }
}
