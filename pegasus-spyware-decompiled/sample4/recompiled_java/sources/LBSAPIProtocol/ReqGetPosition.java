package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ReqGetPosition extends JceStruct {
    static GPS a;
    static ArrayList b;
    static ArrayList c;
    static ArrayList d;
    static final /* synthetic */ boolean e = (!ReqGetPosition.class.desiredAssertionStatus());
    public GPS stGps;
    public String strAppUA;
    public String strImei;
    public ArrayList vCells;
    public ArrayList vMacs;
    public ArrayList vMeasures;

    public ReqGetPosition() {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = this.stGps;
        this.vMacs = this.vMacs;
        this.vCells = this.vCells;
        this.vMeasures = this.vMeasures;
        this.strAppUA = this.strAppUA;
        this.strImei = this.strImei;
    }

    public ReqGetPosition(GPS gps, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str, String str2) {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = gps;
        this.vMacs = arrayList;
        this.vCells = arrayList2;
        this.vMeasures = arrayList3;
        this.strAppUA = str;
        this.strImei = str2;
    }

    public final String className() {
        return "LBSAPIProtocol.ReqGetPosition";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (e) {
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
        jceDisplayer.display((Collection) this.vMeasures, "vMeasures");
        jceDisplayer.display(this.strAppUA, "strAppUA");
        jceDisplayer.display(this.strImei, "strImei");
    }

    public final boolean equals(Object obj) {
        ReqGetPosition reqGetPosition = (ReqGetPosition) obj;
        return JceUtil.equals(this.stGps, reqGetPosition.stGps) && JceUtil.equals(this.vMacs, reqGetPosition.vMacs) && JceUtil.equals(this.vCells, reqGetPosition.vCells) && JceUtil.equals(this.vMeasures, reqGetPosition.vMeasures) && JceUtil.equals(this.strAppUA, reqGetPosition.strAppUA) && JceUtil.equals(this.strImei, reqGetPosition.strImei);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.ReqGetPosition";
    }

    public final GPS getStGps() {
        return this.stGps;
    }

    public final String getStrAppUA() {
        return this.strAppUA;
    }

    public final String getStrImei() {
        return this.strImei;
    }

    public final ArrayList getVCells() {
        return this.vCells;
    }

    public final ArrayList getVMacs() {
        return this.vMacs;
    }

    public final ArrayList getVMeasures() {
        return this.vMeasures;
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
        if (d == null) {
            d = new ArrayList();
            d.add(new Measure());
        }
        setVMeasures((ArrayList) jceInputStream.read((Object) d, 3, false));
        setStrAppUA(jceInputStream.readString(4, false));
        setStrImei(jceInputStream.readString(5, false));
    }

    public final void setStGps(GPS gps) {
        this.stGps = gps;
    }

    public final void setStrAppUA(String str) {
        this.strAppUA = str;
    }

    public final void setStrImei(String str) {
        this.strImei = str;
    }

    public final void setVCells(ArrayList arrayList) {
        this.vCells = arrayList;
    }

    public final void setVMacs(ArrayList arrayList) {
        this.vMacs = arrayList;
    }

    public final void setVMeasures(ArrayList arrayList) {
        this.vMeasures = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stGps, 0);
        jceOutputStream.write((Collection) this.vMacs, 1);
        jceOutputStream.write((Collection) this.vCells, 2);
        if (this.vMeasures != null) {
            jceOutputStream.write((Collection) this.vMeasures, 3);
        }
        if (this.strAppUA != null) {
            jceOutputStream.write(this.strAppUA, 4);
        }
        if (this.strImei != null) {
            jceOutputStream.write(this.strImei, 5);
        }
    }
}
