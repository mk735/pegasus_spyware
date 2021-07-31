package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class NetInterfaceTypeInfoList extends JceStruct {
    static ArrayList<NetInterfaceTypeInfo> a;
    static final /* synthetic */ boolean b = (!NetInterfaceTypeInfoList.class.desiredAssertionStatus());
    public ArrayList<NetInterfaceTypeInfo> vctInterfaceInfos;

    public NetInterfaceTypeInfoList() {
        this.vctInterfaceInfos = null;
        this.vctInterfaceInfos = this.vctInterfaceInfos;
    }

    public NetInterfaceTypeInfoList(ArrayList<NetInterfaceTypeInfo> arrayList) {
        this.vctInterfaceInfos = null;
        this.vctInterfaceInfos = arrayList;
    }

    public final String className() {
        return "QQPIM.NetInterfaceTypeInfoList";
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
        new JceDisplayer(sb, i).display((Collection) this.vctInterfaceInfos, "vctInterfaceInfos");
    }

    public final boolean equals(Object obj) {
        return JceUtil.equals(this.vctInterfaceInfos, ((NetInterfaceTypeInfoList) obj).vctInterfaceInfos);
    }

    public final ArrayList<NetInterfaceTypeInfo> getVctInterfaceInfos() {
        return this.vctInterfaceInfos;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new ArrayList<>();
            a.add(new NetInterfaceTypeInfo());
        }
        setVctInterfaceInfos((ArrayList) jceInputStream.read((Object) a, 0, true));
    }

    public final void setVctInterfaceInfos(ArrayList<NetInterfaceTypeInfo> arrayList) {
        this.vctInterfaceInfos = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.vctInterfaceInfos, 0);
    }
}
