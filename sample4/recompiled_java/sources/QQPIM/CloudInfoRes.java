package QQPIM;

import com.lenovo.safecenter.database.AppDatabase;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class CloudInfoRes extends JceStruct implements Cloneable {
    static ArrayList<CloudCmdRes> a;
    static final /* synthetic */ boolean b = (!CloudInfoRes.class.desiredAssertionStatus());
    public int action;
    public ArrayList<CloudCmdRes> cmdres;
    public int confirmtype;
    public int phase;
    public int res;
    public int time;
    public String tipsid;

    public CloudInfoRes() {
        this.tipsid = "";
        this.action = 0;
        this.res = 0;
        this.cmdres = null;
        this.phase = 0;
        this.confirmtype = 0;
        this.time = 0;
        this.tipsid = this.tipsid;
        this.action = this.action;
        this.res = this.res;
        this.cmdres = this.cmdres;
        this.phase = this.phase;
        this.confirmtype = this.confirmtype;
        this.time = this.time;
    }

    public CloudInfoRes(String str, int i, int i2, ArrayList<CloudCmdRes> arrayList, int i3, int i4, int i5) {
        this.tipsid = "";
        this.action = 0;
        this.res = 0;
        this.cmdres = null;
        this.phase = 0;
        this.confirmtype = 0;
        this.time = 0;
        this.tipsid = str;
        this.action = i;
        this.res = i2;
        this.cmdres = arrayList;
        this.phase = i3;
        this.confirmtype = i4;
        this.time = i5;
    }

    public final String className() {
        return "QQPIM.CloudInfoRes";
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
        jceDisplayer.display(this.tipsid, "tipsid");
        jceDisplayer.display(this.action, "action");
        jceDisplayer.display(this.res, "res");
        jceDisplayer.display((Collection) this.cmdres, "cmdres");
        jceDisplayer.display(this.phase, "phase");
        jceDisplayer.display(this.confirmtype, "confirmtype");
        jceDisplayer.display(this.time, AppDatabase.TIME);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudInfoRes cloudInfoRes = (CloudInfoRes) obj;
        return JceUtil.equals(this.tipsid, cloudInfoRes.tipsid) && JceUtil.equals(this.action, cloudInfoRes.action) && JceUtil.equals(this.res, cloudInfoRes.res) && JceUtil.equals(this.cmdres, cloudInfoRes.cmdres) && JceUtil.equals(this.phase, cloudInfoRes.phase) && JceUtil.equals(this.confirmtype, cloudInfoRes.confirmtype) && JceUtil.equals(this.time, cloudInfoRes.time);
    }

    public final String fullClassName() {
        return "QQPIM.CloudInfoRes";
    }

    public final int getAction() {
        return this.action;
    }

    public final ArrayList<CloudCmdRes> getCmdres() {
        return this.cmdres;
    }

    public final int getConfirmtype() {
        return this.confirmtype;
    }

    public final int getPhase() {
        return this.phase;
    }

    public final int getRes() {
        return this.res;
    }

    public final int getTime() {
        return this.time;
    }

    public final String getTipsid() {
        return this.tipsid;
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
        this.tipsid = jceInputStream.readString(1, true);
        this.action = jceInputStream.read(this.action, 2, true);
        this.res = jceInputStream.read(this.res, 3, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new CloudCmdRes());
        }
        setCmdres((ArrayList) jceInputStream.read((Object) a, 4, true));
        setPhase(jceInputStream.read(this.phase, 5, false));
        setConfirmtype(jceInputStream.read(this.confirmtype, 6, false));
        setTime(jceInputStream.read(this.time, 7, false));
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setCmdres(ArrayList<CloudCmdRes> arrayList) {
        this.cmdres = arrayList;
    }

    public final void setConfirmtype(int i) {
        this.confirmtype = i;
    }

    public final void setPhase(int i) {
        this.phase = i;
    }

    public final void setRes(int i) {
        this.res = i;
    }

    public final void setTime(int i) {
        this.time = i;
    }

    public final void setTipsid(String str) {
        this.tipsid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.tipsid, 1);
        jceOutputStream.write(this.action, 2);
        jceOutputStream.write(this.res, 3);
        jceOutputStream.write((Collection) this.cmdres, 4);
        jceOutputStream.write(this.phase, 5);
        jceOutputStream.write(this.confirmtype, 6);
        jceOutputStream.write(this.time, 7);
    }
}
