package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class RspGetPoiList extends JceStruct {
    static GPS a;
    static ArrayList b;
    static final /* synthetic */ boolean c = (!RspGetPoiList.class.desiredAssertionStatus());
    public int iTotalNum;
    public GPS stUsrLoc;
    public ArrayList vPoiList;

    public RspGetPoiList() {
        this.stUsrLoc = null;
        this.iTotalNum = 0;
        this.vPoiList = null;
        this.stUsrLoc = this.stUsrLoc;
        this.iTotalNum = this.iTotalNum;
        this.vPoiList = this.vPoiList;
    }

    public RspGetPoiList(GPS gps, int i, ArrayList arrayList) {
        this.stUsrLoc = null;
        this.iTotalNum = 0;
        this.vPoiList = null;
        this.stUsrLoc = gps;
        this.iTotalNum = i;
        this.vPoiList = arrayList;
    }

    public final String className() {
        return "LBSAPIProtocol.RspGetPoiList";
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
        jceDisplayer.display((JceStruct) this.stUsrLoc, "stUsrLoc");
        jceDisplayer.display(this.iTotalNum, "iTotalNum");
        jceDisplayer.display((Collection) this.vPoiList, "vPoiList");
    }

    public final boolean equals(Object obj) {
        RspGetPoiList rspGetPoiList = (RspGetPoiList) obj;
        return JceUtil.equals(this.stUsrLoc, rspGetPoiList.stUsrLoc) && JceUtil.equals(this.iTotalNum, rspGetPoiList.iTotalNum) && JceUtil.equals(this.vPoiList, rspGetPoiList.vPoiList);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.RspGetPoiList";
    }

    public final int getITotalNum() {
        return this.iTotalNum;
    }

    public final GPS getStUsrLoc() {
        return this.stUsrLoc;
    }

    public final ArrayList getVPoiList() {
        return this.vPoiList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new GPS();
        }
        this.stUsrLoc = (GPS) jceInputStream.read((JceStruct) a, 0, true);
        this.iTotalNum = jceInputStream.read(this.iTotalNum, 1, true);
        if (b == null) {
            b = new ArrayList();
            b.add(new PoiInfo());
        }
        setVPoiList((ArrayList) jceInputStream.read((Object) b, 2, true));
    }

    public final void setITotalNum(int i) {
        this.iTotalNum = i;
    }

    public final void setStUsrLoc(GPS gps) {
        this.stUsrLoc = gps;
    }

    public final void setVPoiList(ArrayList arrayList) {
        this.vPoiList = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stUsrLoc, 0);
        jceOutputStream.write(this.iTotalNum, 1);
        jceOutputStream.write((Collection) this.vPoiList, 2);
    }
}
