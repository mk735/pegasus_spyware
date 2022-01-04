package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class Measure extends JceStruct {
    static GPS a;
    static ArrayList b;
    static ArrayList c;
    static final /* synthetic */ boolean d = (!Measure.class.desiredAssertionStatus());
    public long lTime;
    public GPS stGps;
    public String strExtraInfo;
    public ArrayList vCells;
    public ArrayList vMacs;

    public Measure() {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.lTime = 0;
        this.strExtraInfo = "";
        this.stGps = this.stGps;
        this.vMacs = this.vMacs;
        this.vCells = this.vCells;
        this.lTime = this.lTime;
        this.strExtraInfo = this.strExtraInfo;
    }

    public Measure(GPS gps, ArrayList arrayList, ArrayList arrayList2, long j, String str) {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.lTime = 0;
        this.strExtraInfo = "";
        this.stGps = gps;
        this.vMacs = arrayList;
        this.vCells = arrayList2;
        this.lTime = j;
        this.strExtraInfo = str;
    }

    public final String className() {
        return "LBSAPIProtocol.Measure";
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
        jceDisplayer.display((JceStruct) this.stGps, "stGps");
        jceDisplayer.display((Collection) this.vMacs, "vMacs");
        jceDisplayer.display((Collection) this.vCells, "vCells");
        jceDisplayer.display(this.lTime, "lTime");
        jceDisplayer.display(this.strExtraInfo, "strExtraInfo");
    }

    public final boolean equals(Object obj) {
        Measure measure = (Measure) obj;
        return JceUtil.equals(this.stGps, measure.stGps) && JceUtil.equals(this.vMacs, measure.vMacs) && JceUtil.equals(this.vCells, measure.vCells) && JceUtil.equals(this.lTime, measure.lTime) && JceUtil.equals(this.strExtraInfo, measure.strExtraInfo);
    }

    public final long getLTime() {
        return this.lTime;
    }

    public final GPS getStGps() {
        return this.stGps;
    }

    public final String getStrExtraInfo() {
        return this.strExtraInfo;
    }

    public final ArrayList getVCells() {
        return this.vCells;
    }

    public final ArrayList getVMacs() {
        return this.vMacs;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new GPS();
        }
        this.stGps = (GPS) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList();
            b.add(0L);
        }
        setVMacs((ArrayList) jceInputStream.read((Object) b, 1, true));
        if (c == null) {
            c = new ArrayList();
            c.add(new Cell());
        }
        setVCells((ArrayList) jceInputStream.read((Object) c, 2, true));
        setLTime(jceInputStream.read(this.lTime, 3, true));
        setStrExtraInfo(jceInputStream.readString(4, false));
    }

    public final void setLTime(long j) {
        this.lTime = j;
    }

    public final void setStGps(GPS gps) {
        this.stGps = gps;
    }

    public final void setStrExtraInfo(String str) {
        this.strExtraInfo = str;
    }

    public final void setVCells(ArrayList arrayList) {
        this.vCells = arrayList;
    }

    public final void setVMacs(ArrayList arrayList) {
        this.vMacs = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stGps, 0);
        jceOutputStream.write((Collection) this.vMacs, 1);
        jceOutputStream.write((Collection) this.vCells, 2);
        jceOutputStream.write(this.lTime, 3);
        if (this.strExtraInfo != null) {
            jceOutputStream.write(this.strExtraInfo, 4);
        }
    }
}
