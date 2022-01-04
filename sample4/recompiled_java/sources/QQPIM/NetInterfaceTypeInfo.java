package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class NetInterfaceTypeInfo extends JceStruct {
    static ArrayList<String> a;
    static final /* synthetic */ boolean b = (!NetInterfaceTypeInfo.class.desiredAssertionStatus());
    public ArrayList<String> keySet;
    public String typeName;

    public NetInterfaceTypeInfo() {
        this.typeName = "";
        this.keySet = null;
        this.typeName = this.typeName;
        this.keySet = this.keySet;
    }

    public NetInterfaceTypeInfo(String str, ArrayList<String> arrayList) {
        this.typeName = "";
        this.keySet = null;
        this.typeName = str;
        this.keySet = arrayList;
    }

    public final String className() {
        return "QQPIM.NetInterfaceTypeInfo";
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
        jceDisplayer.display(this.typeName, "typeName");
        jceDisplayer.display((Collection) this.keySet, "keySet");
    }

    public final boolean equals(Object obj) {
        NetInterfaceTypeInfo netInterfaceTypeInfo = (NetInterfaceTypeInfo) obj;
        return JceUtil.equals(this.typeName, netInterfaceTypeInfo.typeName) && JceUtil.equals(this.keySet, netInterfaceTypeInfo.keySet);
    }

    public final ArrayList<String> getKeySet() {
        return this.keySet;
    }

    public final String getTypeName() {
        return this.typeName;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.typeName = jceInputStream.readString(0, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add("");
        }
        setKeySet((ArrayList) jceInputStream.read((Object) a, 1, false));
    }

    public final void setKeySet(ArrayList<String> arrayList) {
        this.keySet = arrayList;
    }

    public final void setTypeName(String str) {
        this.typeName = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.typeName, 0);
        if (this.keySet != null) {
            jceOutputStream.write((Collection) this.keySet, 1);
        }
    }
}
