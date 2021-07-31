package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class Missions extends JceStruct implements Cloneable {
    static PointsInfo a;
    static ArrayList<MissionItem> b;
    static ArrayList<CloudInfo> c;
    static final /* synthetic */ boolean d = (!Missions.class.desiredAssertionStatus());
    public ArrayList<CloudInfo> cloudinfos;
    public PointsInfo hpoints;
    public ArrayList<MissionItem> missions;

    public Missions() {
        this.hpoints = null;
        this.missions = null;
        this.cloudinfos = null;
        this.hpoints = this.hpoints;
        this.missions = this.missions;
        this.cloudinfos = this.cloudinfos;
    }

    public Missions(PointsInfo pointsInfo, ArrayList<MissionItem> arrayList, ArrayList<CloudInfo> arrayList2) {
        this.hpoints = null;
        this.missions = null;
        this.cloudinfos = null;
        this.hpoints = pointsInfo;
        this.missions = arrayList;
        this.cloudinfos = arrayList2;
    }

    public final String className() {
        return "QQPIM.Missions";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (d) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.hpoints, "hpoints");
        jceDisplayer.display((Collection) this.missions, "missions");
        jceDisplayer.display((Collection) this.cloudinfos, "cloudinfos");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Missions missions2 = (Missions) obj;
        return JceUtil.equals(this.hpoints, missions2.hpoints) && JceUtil.equals(this.missions, missions2.missions) && JceUtil.equals(this.cloudinfos, missions2.cloudinfos);
    }

    public final String fullClassName() {
        return "QQPIM.Missions";
    }

    public final ArrayList<CloudInfo> getCloudinfos() {
        return this.cloudinfos;
    }

    public final PointsInfo getHpoints() {
        return this.hpoints;
    }

    public final ArrayList<MissionItem> getMissions() {
        return this.missions;
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
            a = new PointsInfo();
        }
        this.hpoints = (PointsInfo) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList<>();
            b.add(new MissionItem());
        }
        setMissions((ArrayList) jceInputStream.read((Object) b, 1, true));
        if (c == null) {
            c = new ArrayList<>();
            c.add(new CloudInfo());
        }
        setCloudinfos((ArrayList) jceInputStream.read((Object) c, 2, true));
    }

    public final void setCloudinfos(ArrayList<CloudInfo> arrayList) {
        this.cloudinfos = arrayList;
    }

    public final void setHpoints(PointsInfo pointsInfo) {
        this.hpoints = pointsInfo;
    }

    public final void setMissions(ArrayList<MissionItem> arrayList) {
        this.missions = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.hpoints, 0);
        jceOutputStream.write((Collection) this.missions, 1);
        jceOutputStream.write((Collection) this.cloudinfos, 2);
    }
}
