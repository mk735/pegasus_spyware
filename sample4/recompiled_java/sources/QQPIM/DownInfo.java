package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class DownInfo extends JceStruct implements Cloneable {
    static ArrayList<DownSoftInfo> a;
    static final /* synthetic */ boolean b = (!DownInfo.class.desiredAssertionStatus());
    public ArrayList<DownSoftInfo> listDownSoftItems;
    public int nGUID;
    public String sQUA;

    public DownInfo() {
        this.sQUA = "";
        this.nGUID = 0;
        this.listDownSoftItems = null;
        this.sQUA = this.sQUA;
        this.nGUID = this.nGUID;
        this.listDownSoftItems = this.listDownSoftItems;
    }

    public DownInfo(String str, int i, ArrayList<DownSoftInfo> arrayList) {
        this.sQUA = "";
        this.nGUID = 0;
        this.listDownSoftItems = null;
        this.sQUA = str;
        this.nGUID = i;
        this.listDownSoftItems = arrayList;
    }

    public final String className() {
        return "QQPIM.DownInfo";
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
        jceDisplayer.display(this.sQUA, "sQUA");
        jceDisplayer.display(this.nGUID, "nGUID");
        jceDisplayer.display((Collection) this.listDownSoftItems, "listDownSoftItems");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DownInfo downInfo = (DownInfo) obj;
        return JceUtil.equals(this.sQUA, downInfo.sQUA) && JceUtil.equals(this.nGUID, downInfo.nGUID) && JceUtil.equals(this.listDownSoftItems, downInfo.listDownSoftItems);
    }

    public final String fullClassName() {
        return "QQPIM.DownInfo";
    }

    public final ArrayList<DownSoftInfo> getListDownSoftItems() {
        return this.listDownSoftItems;
    }

    public final int getNGUID() {
        return this.nGUID;
    }

    public final String getSQUA() {
        return this.sQUA;
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
        this.sQUA = jceInputStream.readString(0, true);
        this.nGUID = jceInputStream.read(this.nGUID, 1, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new DownSoftInfo());
        }
        setListDownSoftItems((ArrayList) jceInputStream.read((Object) a, 2, true));
    }

    public final void setListDownSoftItems(ArrayList<DownSoftInfo> arrayList) {
        this.listDownSoftItems = arrayList;
    }

    public final void setNGUID(int i) {
        this.nGUID = i;
    }

    public final void setSQUA(String str) {
        this.sQUA = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.sQUA, 0);
        jceOutputStream.write(this.nGUID, 1);
        jceOutputStream.write((Collection) this.listDownSoftItems, 2);
    }
}
