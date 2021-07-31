package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ReqSearchNearPoiList extends JceStruct {
    static GPS a;
    static ArrayList b;
    static ArrayList c;
    static ArrayList d;
    static ArrayList e;
    static final /* synthetic */ boolean f = (!ReqSearchNearPoiList.class.desiredAssertionStatus());
    public int iBeginPos;
    public int iRadius;
    public int iReqNum;
    public GPS stGps;
    public String strAppUA;
    public String strImei;
    public String strKeyword;
    public ArrayList vCells;
    public ArrayList vMacs;
    public ArrayList vMeasures;
    public ArrayList vTypes;

    public ReqSearchNearPoiList() {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.strKeyword = "";
        this.vTypes = null;
        this.iRadius = 100;
        this.iBeginPos = 0;
        this.iReqNum = 10;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = this.stGps;
        this.vMacs = this.vMacs;
        this.vCells = this.vCells;
        this.strKeyword = this.strKeyword;
        this.vTypes = this.vTypes;
        this.iRadius = this.iRadius;
        this.iBeginPos = this.iBeginPos;
        this.iReqNum = this.iReqNum;
        this.vMeasures = this.vMeasures;
        this.strAppUA = this.strAppUA;
        this.strImei = this.strImei;
    }

    public ReqSearchNearPoiList(GPS gps, ArrayList arrayList, ArrayList arrayList2, String str, ArrayList arrayList3, int i, int i2, int i3, ArrayList arrayList4, String str2, String str3) {
        this.stGps = null;
        this.vMacs = null;
        this.vCells = null;
        this.strKeyword = "";
        this.vTypes = null;
        this.iRadius = 100;
        this.iBeginPos = 0;
        this.iReqNum = 10;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.stGps = gps;
        this.vMacs = arrayList;
        this.vCells = arrayList2;
        this.strKeyword = str;
        this.vTypes = arrayList3;
        this.iRadius = i;
        this.iBeginPos = i2;
        this.iReqNum = i3;
        this.vMeasures = arrayList4;
        this.strAppUA = str2;
        this.strImei = str3;
    }

    public final String className() {
        return "LBSAPIProtocol.ReqSearchNearPoiList";
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
        jceDisplayer.display(this.strKeyword, "strKeyword");
        jceDisplayer.display((Collection) this.vTypes, "vTypes");
        jceDisplayer.display(this.iRadius, "iRadius");
        jceDisplayer.display(this.iBeginPos, "iBeginPos");
        jceDisplayer.display(this.iReqNum, "iReqNum");
        jceDisplayer.display((Collection) this.vMeasures, "vMeasures");
        jceDisplayer.display(this.strAppUA, "strAppUA");
        jceDisplayer.display(this.strImei, "strImei");
    }

    public final boolean equals(Object obj) {
        ReqSearchNearPoiList reqSearchNearPoiList = (ReqSearchNearPoiList) obj;
        return JceUtil.equals(this.stGps, reqSearchNearPoiList.stGps) && JceUtil.equals(this.vMacs, reqSearchNearPoiList.vMacs) && JceUtil.equals(this.vCells, reqSearchNearPoiList.vCells) && JceUtil.equals(this.strKeyword, reqSearchNearPoiList.strKeyword) && JceUtil.equals(this.vTypes, reqSearchNearPoiList.vTypes) && JceUtil.equals(this.iRadius, reqSearchNearPoiList.iRadius) && JceUtil.equals(this.iBeginPos, reqSearchNearPoiList.iBeginPos) && JceUtil.equals(this.iReqNum, reqSearchNearPoiList.iReqNum) && JceUtil.equals(this.vMeasures, reqSearchNearPoiList.vMeasures) && JceUtil.equals(this.strAppUA, reqSearchNearPoiList.strAppUA) && JceUtil.equals(this.strImei, reqSearchNearPoiList.strImei);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.ReqSearchNearPoiList";
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

    public final String getStrKeyword() {
        return this.strKeyword;
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
        setStrKeyword(jceInputStream.readString(3, true));
        if (d == null) {
            d = new ArrayList();
            d.add(0);
        }
        setVTypes((ArrayList) jceInputStream.read((Object) d, 4, true));
        setIRadius(jceInputStream.read(this.iRadius, 5, true));
        setIBeginPos(jceInputStream.read(this.iBeginPos, 6, true));
        setIReqNum(jceInputStream.read(this.iReqNum, 7, true));
        if (e == null) {
            e = new ArrayList();
            e.add(new Measure());
        }
        setVMeasures((ArrayList) jceInputStream.read((Object) e, 8, false));
        setStrAppUA(jceInputStream.readString(9, false));
        setStrImei(jceInputStream.readString(10, false));
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

    public final void setStrKeyword(String str) {
        this.strKeyword = str;
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
        jceOutputStream.write(this.strKeyword, 3);
        jceOutputStream.write((Collection) this.vTypes, 4);
        jceOutputStream.write(this.iRadius, 5);
        jceOutputStream.write(this.iBeginPos, 6);
        jceOutputStream.write(this.iReqNum, 7);
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
