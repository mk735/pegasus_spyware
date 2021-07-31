package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MisssionRes extends JceStruct implements Cloneable {
    static ResCode a;
    static Missions b;
    static final /* synthetic */ boolean c = (!MisssionRes.class.desiredAssertionStatus());
    public Missions missions;
    public ResCode rescode;

    public MisssionRes() {
        this.rescode = null;
        this.missions = null;
        this.rescode = this.rescode;
        this.missions = this.missions;
    }

    public MisssionRes(ResCode resCode, Missions missions2) {
        this.rescode = null;
        this.missions = null;
        this.rescode = resCode;
        this.missions = missions2;
    }

    public final String className() {
        return "QQPIM.MisssionRes";
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
        jceDisplayer.display((JceStruct) this.rescode, "rescode");
        jceDisplayer.display((JceStruct) this.missions, "missions");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        MisssionRes misssionRes = (MisssionRes) obj;
        return JceUtil.equals(this.rescode, misssionRes.rescode) && JceUtil.equals(this.missions, misssionRes.missions);
    }

    public final String fullClassName() {
        return "QQPIM.MisssionRes";
    }

    public final Missions getMissions() {
        return this.missions;
    }

    public final ResCode getRescode() {
        return this.rescode;
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
            a = new ResCode();
        }
        this.rescode = (ResCode) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new Missions();
        }
        this.missions = (Missions) jceInputStream.read((JceStruct) b, 1, true);
    }

    public final void setMissions(Missions missions2) {
        this.missions = missions2;
    }

    public final void setRescode(ResCode resCode) {
        this.rescode = resCode;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.rescode, 0);
        jceOutputStream.write((JceStruct) this.missions, 1);
    }
}
