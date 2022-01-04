package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MissionItem extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!MissionItem.class.desiredAssertionStatus());
    public byte isextra;
    public int missionid;
    public String name;
    public int points;
    public byte state;
    public int time;
    public int times;
    public int tlast;
    public int usetimes;
    public int version;

    public MissionItem() {
        this.missionid = 0;
        this.name = "";
        this.points = 0;
        this.state = 0;
        this.times = 0;
        this.isextra = 0;
        this.time = 0;
        this.tlast = 0;
        this.usetimes = 0;
        this.version = 1;
        this.missionid = this.missionid;
        this.name = this.name;
        this.points = this.points;
        this.state = this.state;
        this.times = this.times;
        this.isextra = this.isextra;
        this.time = this.time;
        this.tlast = this.tlast;
        this.usetimes = this.usetimes;
        this.version = this.version;
    }

    public MissionItem(int i, String str, int i2, byte b, int i3, byte b2, int i4, int i5, int i6, int i7) {
        this.missionid = 0;
        this.name = "";
        this.points = 0;
        this.state = 0;
        this.times = 0;
        this.isextra = 0;
        this.time = 0;
        this.tlast = 0;
        this.usetimes = 0;
        this.version = 1;
        this.missionid = i;
        this.name = str;
        this.points = i2;
        this.state = b;
        this.times = i3;
        this.isextra = b2;
        this.time = i4;
        this.tlast = i5;
        this.usetimes = i6;
        this.version = i7;
    }

    public final String className() {
        return "QQPIM.MissionItem";
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
        jceDisplayer.display(this.missionid, "missionid");
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.points, "points");
        jceDisplayer.display(this.state, "state");
        jceDisplayer.display(this.times, "times");
        jceDisplayer.display(this.isextra, "isextra");
        jceDisplayer.display(this.time, AppDatabase.TIME);
        jceDisplayer.display(this.tlast, "tlast");
        jceDisplayer.display(this.usetimes, "usetimes");
        jceDisplayer.display(this.version, "version");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        MissionItem missionItem = (MissionItem) obj;
        return JceUtil.equals(this.missionid, missionItem.missionid) && JceUtil.equals(this.name, missionItem.name) && JceUtil.equals(this.points, missionItem.points) && JceUtil.equals(this.state, missionItem.state) && JceUtil.equals(this.times, missionItem.times) && JceUtil.equals(this.isextra, missionItem.isextra) && JceUtil.equals(this.time, missionItem.time) && JceUtil.equals(this.tlast, missionItem.tlast) && JceUtil.equals(this.usetimes, missionItem.usetimes) && JceUtil.equals(this.version, missionItem.version);
    }

    public final String fullClassName() {
        return "QQPIM.MissionItem";
    }

    public final byte getIsextra() {
        return this.isextra;
    }

    public final int getMissionid() {
        return this.missionid;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPoints() {
        return this.points;
    }

    public final byte getState() {
        return this.state;
    }

    public final int getTime() {
        return this.time;
    }

    public final int getTimes() {
        return this.times;
    }

    public final int getTlast() {
        return this.tlast;
    }

    public final int getUsetimes() {
        return this.usetimes;
    }

    public final int getVersion() {
        return this.version;
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
        this.missionid = jceInputStream.read(this.missionid, 0, true);
        this.name = jceInputStream.readString(1, true);
        this.points = jceInputStream.read(this.points, 2, true);
        this.state = jceInputStream.read(this.state, 3, true);
        this.times = jceInputStream.read(this.times, 4, true);
        this.isextra = jceInputStream.read(this.isextra, 5, true);
        this.time = jceInputStream.read(this.time, 6, false);
        this.tlast = jceInputStream.read(this.tlast, 7, false);
        this.usetimes = jceInputStream.read(this.usetimes, 8, false);
        this.version = jceInputStream.read(this.version, 9, false);
    }

    public final void setIsextra(byte b) {
        this.isextra = b;
    }

    public final void setMissionid(int i) {
        this.missionid = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPoints(int i) {
        this.points = i;
    }

    public final void setState(byte b) {
        this.state = b;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setTimes(int i) {
        this.times = i;
    }

    public final void setTlast(int i) {
        this.tlast = i;
    }

    public final void setUsetimes(int i) {
        this.usetimes = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.missionid, 0);
        jceOutputStream.write(this.name, 1);
        jceOutputStream.write(this.points, 2);
        jceOutputStream.write(this.state, 3);
        jceOutputStream.write(this.times, 4);
        jceOutputStream.write(this.isextra, 5);
        jceOutputStream.write(this.time, 6);
        jceOutputStream.write(this.tlast, 7);
        jceOutputStream.write(this.usetimes, 8);
        jceOutputStream.write(this.version, 9);
    }
}
