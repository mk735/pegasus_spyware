package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DoneMissionItem extends JceStruct {
    static final /* synthetic */ boolean a = (!DoneMissionItem.class.desiredAssertionStatus());
    public int missionid;

    public DoneMissionItem() {
        this.missionid = 0;
        this.missionid = this.missionid;
    }

    public DoneMissionItem(int i) {
        this.missionid = 0;
        this.missionid = i;
    }

    public final String className() {
        return "QQPIM.DoneMissionItem";
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
        new JceDisplayer(sb, i).display(this.missionid, "missionid");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.missionid, ((DoneMissionItem) obj).missionid);
    }

    public final int getMissionid() {
        return this.missionid;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.missionid = jceInputStream.read(this.missionid, 0, true);
    }

    public final void setMissionid(int i) {
        this.missionid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.missionid, 0);
    }
}
