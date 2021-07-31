package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class STCloudOrderBak extends JceStruct implements Cloneable {
    static ArrayList<STQueryInfo> a;
    static final /* synthetic */ boolean b = (!STCloudOrderBak.class.desiredAssertionStatus());
    public int nAct;
    public int nFrequncy;
    public int nTimes;
    public String strTime;
    public ArrayList<STQueryInfo> vecCodeUpdate;

    public STCloudOrderBak() {
        this.nAct = 0;
        this.vecCodeUpdate = null;
        this.nFrequncy = 0;
        this.strTime = "";
        this.nTimes = 0;
        this.nAct = this.nAct;
        this.vecCodeUpdate = this.vecCodeUpdate;
        this.nFrequncy = this.nFrequncy;
        this.strTime = this.strTime;
        this.nTimes = this.nTimes;
    }

    public STCloudOrderBak(int i, ArrayList<STQueryInfo> arrayList, int i2, String str, int i3) {
        this.nAct = 0;
        this.vecCodeUpdate = null;
        this.nFrequncy = 0;
        this.strTime = "";
        this.nTimes = 0;
        this.nAct = i;
        this.vecCodeUpdate = arrayList;
        this.nFrequncy = i2;
        this.strTime = str;
        this.nTimes = i3;
    }

    public final String className() {
        return "QQPIM.STCloudOrderBak";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (b) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.nAct, "nAct");
        jceDisplayer.display((Collection) this.vecCodeUpdate, "vecCodeUpdate");
        jceDisplayer.display(this.nFrequncy, "nFrequncy");
        jceDisplayer.display(this.strTime, "strTime");
        jceDisplayer.display(this.nTimes, "nTimes");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STCloudOrderBak sTCloudOrderBak = (STCloudOrderBak) obj;
        return JceUtil.equals(this.nAct, sTCloudOrderBak.nAct) && JceUtil.equals(this.vecCodeUpdate, sTCloudOrderBak.vecCodeUpdate) && JceUtil.equals(this.nFrequncy, sTCloudOrderBak.nFrequncy) && JceUtil.equals(this.strTime, sTCloudOrderBak.strTime) && JceUtil.equals(this.nTimes, sTCloudOrderBak.nTimes);
    }

    public final String fullClassName() {
        return "QQPIM.STCloudOrderBak";
    }

    public final int getNAct() {
        return this.nAct;
    }

    public final int getNFrequncy() {
        return this.nFrequncy;
    }

    public final int getNTimes() {
        return this.nTimes;
    }

    public final String getStrTime() {
        return this.strTime;
    }

    public final ArrayList<STQueryInfo> getVecCodeUpdate() {
        return this.vecCodeUpdate;
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
        this.nAct = jceInputStream.read(this.nAct, 0, false);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new STQueryInfo());
        }
        setVecCodeUpdate((ArrayList) jceInputStream.read((Object) a, 1, false));
        setNFrequncy(jceInputStream.read(this.nFrequncy, 3, false));
        setStrTime(jceInputStream.readString(4, false));
        setNTimes(jceInputStream.read(this.nTimes, 5, false));
    }

    public final void setNAct(int i) {
        this.nAct = i;
    }

    public final void setNFrequncy(int i) {
        this.nFrequncy = i;
    }

    public final void setNTimes(int i) {
        this.nTimes = i;
    }

    public final void setStrTime(String str) {
        this.strTime = str;
    }

    public final void setVecCodeUpdate(ArrayList<STQueryInfo> arrayList) {
        this.vecCodeUpdate = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nAct, 0);
        if (this.vecCodeUpdate != null) {
            jceOutputStream.write((Collection) this.vecCodeUpdate, 1);
        }
        jceOutputStream.write(this.nFrequncy, 3);
        if (this.strTime != null) {
            jceOutputStream.write(this.strTime, 4);
        }
        jceOutputStream.write(this.nTimes, 5);
    }
}
