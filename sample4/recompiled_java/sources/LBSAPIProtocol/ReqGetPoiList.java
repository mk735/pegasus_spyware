package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ReqGetPoiList extends JceStruct {
    static GPS a;
    static ArrayList b;
    static ArrayList c;
    static ArrayList d;
    static ArrayList e;
    static final /* synthetic */ boolean f = (!ReqGetPoiList.class.desiredAssertionStatus());
    public int eSortMethod;
    public int iBeginPos;
    public int iRadius;
    public int iReqNum;
    public GPS stGps;
    public String strAppUA;
    public String strImei;
    public ArrayList vCells;
    public ArrayList vMacs;
    public ArrayList vMeasures;
    public ArrayList vTypes;

    public ReqGetPoiList() {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.vTypes = null;
        this.iRadius = 100;
        this.iBeginPos = 0;
        this.iReqNum = 10;
        this.eSortMethod = 0;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = this.stGps;
        this.vMacs = this.vMacs;
        this.vCells = this.vCells;
        this.vTypes = this.vTypes;
        this.iRadius = this.iRadius;
        this.iBeginPos = this.iBeginPos;
        this.iReqNum = this.iReqNum;
        this.eSortMethod = this.eSortMethod;
        this.vMeasures = this.vMeasures;
        this.strAppUA = this.strAppUA;
        this.strImei = this.strImei;
    }

    public ReqGetPoiList(GPS gps, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i, int i2, int i3, int i4, ArrayList arrayList4, String str, String str2) {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.vTypes = null;
        this.iRadius = 100;
        this.iBeginPos = 0;
        this.iReqNum = 10;
        this.eSortMethod = 0;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = gps;
        this.vMacs = arrayList;
        this.vCells = arrayList2;
        this.vTypes = arrayList3;
        this.iRadius = i;
        this.iBeginPos = i2;
        this.iReqNum = i3;
        this.eSortMethod = i4;
        this.vMeasures = arrayList4;
        this.strAppUA = str;
        this.strImei = str2;
    }

    public final String className() {
        return "LBSAPIProtocol.ReqGetPoiList";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (f) {
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
        jceDisplayer.display((Collection) this.vTypes, "vTypes");
        jceDisplayer.display(this.iRadius, "iRadius");
        jceDisplayer.display(this.iBeginPos, "iBeginPos");
        jceDisplayer.display(this.iReqNum, "iReqNum");
        jceDisplayer.display(this.eSortMethod, "eSortMethod");
        jceDisplayer.display((Collection) this.vMeasures, "vMeasures");
        jceDisplayer.display(this.strAppUA, "strAppUA");
        jceDisplayer.display(this.strImei, "strImei");
    }

    public final boolean equals(Object obj) {
        ReqGetPoiList reqGetPoiList = (ReqGetPoiList) obj;
        return JceUtil.equals(this.stGps, reqGetPoiList.stGps) && JceUtil.equals(this.vMacs, reqGetPoiList.vMacs) && JceUtil.equals(this.vCells, reqGetPoiList.vCells) && JceUtil.equals(this.vTypes, reqGetPoiList.vTypes) && JceUtil.equals(this.iRadius, reqGetPoiList.iRadius) && JceUtil.equals(this.iBeginPos, reqGetPoiList.iBeginPos) && JceUtil.equals(this.iReqNum, reqGetPoiList.iReqNum) && JceUtil.equals(this.eSortMethod, reqGetPoiList.eSortMethod) && JceUtil.equals(this.vMeasures, reqGetPoiList.vMeasures) && JceUtil.equals(this.strAppUA, reqGetPoiList.strAppUA) && JceUtil.equals(this.strImei, reqGetPoiList.strImei);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.ReqGetPoiList";
    }

    public final int getESortMethod() {
        return this.eSortMethod;
    }

    public final int getIBeginPos() {
        return this.iBeginPos;
    }

    public final int getIRadius() {
        return this.iRadius;
    }

    public final int getIReqNum() {
        return this.iReqNum;
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

    public final ArrayList getVTypes() {
        return this.vTypes;
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
            d.add(0);
        }
        setVTypes((ArrayList) jceInputStream.read((Object) d, 3, true));
        setIRadius(jceInputStream.read(this.iRadius, 4, true));
        setIBeginPos(jceInputStream.read(this.iBeginPos, 5, true));
        setIReqNum(jceInputStream.read(this.iReqNum, 6, true));
        setESortMethod(jceInputStream.read(this.eSortMethod, 7, true));
        if (e == null) {
            e = new ArrayList();
            e.add(new Measure());
        }
        setVMeasures((ArrayList) jceInputStream.read((Object) e, 8, false));
        setStrAppUA(jceInputStream.readString(9, false));
        setStrImei(jceInputStream.readString(10, false));
    }

    public final void setESortMethod(int i) {
        this.eSortMethod = i;
    }

    public final void setIBeginPos(int i) {
        this.iBeginPos = i;
    }

    public final void setIRadius(int i) {
        this.iRadius = i;
    }

    public final void setIReqNum(int i) {
        this.iReqNum = i;
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

    public final void setVTypes(ArrayList arrayList) {
        this.vTypes = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stGps, 0);
        jceOutputStream.write((Collection) this.vMacs, 1);
        jceOutputStream.write((Collection) this.vCells, 2);
        jceOutputStream.write((Collection) this.vTypes, 3);
        jceOutputStream.write(this.iRadius, 4);
        jceOutputStream.write(this.iBeginPos, 5);
        jceOutputStream.write(this.iReqNum, 6);
        jceOutputStream.write(this.eSortMethod, 7);
        if (this.vMeasures != null) {
            jceOutputStream.write((Collection) this.vMeasures, 8);
        }
        if (this.strAppUA != null) {
            jceOutputStream.write(this.strAppUA, 9);
        }
        if (this.strImei != null) {
            jceOutputStream.write(this.strImei, 10);
        }
    }
}
