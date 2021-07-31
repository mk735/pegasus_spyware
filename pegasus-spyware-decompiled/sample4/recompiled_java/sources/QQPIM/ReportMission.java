package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ReportMission extends JceStruct implements Cloneable {
    static QQInfo a;
    static ArrayList<MissionItem> b;
    static final /* synthetic */ boolean c = (!ReportMission.class.desiredAssertionStatus());
    public ArrayList<MissionItem> missions;
    public QQInfo qq;

    public ReportMission() {
        this.qq = null;
        this.missions = null;
        this.qq = this.qq;
        this.missions = this.missions;
    }

    public ReportMission(QQInfo qQInfo, ArrayList<MissionItem> arrayList) {
        this.qq = null;
        this.missions = null;
        this.qq = qQInfo;
        this.missions = arrayList;
    }

    public final String className() {
        return "QQPIM.ReportMission";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.qq, "qq");
        jceDisplayer.display((Collection) this.missions, "missions");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ReportMission reportMission = (ReportMission) obj;
        return JceUtil.equals(this.qq, reportMission.qq) && JceUtil.equals(this.missions, reportMission.missions);
    }

    public final String fullClassName() {
        return "QQPIM.ReportMission";
    }

    public final ArrayList<MissionItem> getMissions() {
        return this.missions;
    }

    public final QQInfo getQq() {
        return this.qq;
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
            a = new QQInfo();
        }
        this.qq = (QQInfo) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList<>();
            b.add(new MissionItem());
        }
        setMissions((ArrayList) jceInputStream.read((Object) b, 1, true));
    }

    public final void setMissions(ArrayList<MissionItem> arrayList) {
        this.missions = arrayList;
    }

    public final void setQq(QQInfo qQInfo) {
        this.qq = qQInfo;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.qq, 0);
        jceOutputStream.write((Collection) this.missions, 1);
    }
}
