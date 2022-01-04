package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ServerCmdInfo extends JceStruct implements Cloneable {
    static ArrayList<CloudInfo> a;
    static final /* synthetic */ boolean b = (!ServerCmdInfo.class.desiredAssertionStatus());
    public ArrayList<CloudInfo> cloudinfos;
    public int nextcheckinterval;

    public ServerCmdInfo() {
        this.cloudinfos = null;
        this.nextcheckinterval = 0;
        this.cloudinfos = this.cloudinfos;
        this.nextcheckinterval = this.nextcheckinterval;
    }

    public ServerCmdInfo(ArrayList<CloudInfo> arrayList, int i) {
        this.cloudinfos = null;
        this.nextcheckinterval = 0;
        this.cloudinfos = arrayList;
        this.nextcheckinterval = i;
    }

    public final String className() {
        return "QQPIM.ServerCmdInfo";
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
        jceDisplayer.display((Collection) this.cloudinfos, "cloudinfos");
        jceDisplayer.display(this.nextcheckinterval, "nextcheckinterval");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ServerCmdInfo serverCmdInfo = (ServerCmdInfo) obj;
        return JceUtil.equals(this.cloudinfos, serverCmdInfo.cloudinfos) && JceUtil.equals(this.nextcheckinterval, serverCmdInfo.nextcheckinterval);
    }

    public final String fullClassName() {
        return "QQPIM.ServerCmdInfo";
    }

    public final ArrayList<CloudInfo> getCloudinfos() {
        return this.cloudinfos;
    }

    public final int getNextcheckinterval() {
        return this.nextcheckinterval;
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
            a = new ArrayList<>();
            a.add(new CloudInfo());
        }
        setCloudinfos((ArrayList) jceInputStream.read((Object) a, 1, true));
        setNextcheckinterval(jceInputStream.read(this.nextcheckinterval, 2, true));
    }

    public final void setCloudinfos(ArrayList<CloudInfo> arrayList) {
        this.cloudinfos = arrayList;
    }

    public final void setNextcheckinterval(int i) {
        this.nextcheckinterval = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.cloudinfos, 1);
        jceOutputStream.write(this.nextcheckinterval, 2);
    }
}
