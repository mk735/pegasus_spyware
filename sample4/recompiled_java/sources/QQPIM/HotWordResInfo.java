package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class HotWordResInfo extends JceStruct implements Cloneable {
    static ArrayList<HotwordInfo> a;
    static final /* synthetic */ boolean b = (!HotWordResInfo.class.desiredAssertionStatus());
    public ArrayList<HotwordInfo> hotwords;
    public int totalnum;

    public HotWordResInfo() {
        this.totalnum = 0;
        this.hotwords = null;
        this.totalnum = this.totalnum;
        this.hotwords = this.hotwords;
    }

    public HotWordResInfo(int i, ArrayList<HotwordInfo> arrayList) {
        this.totalnum = 0;
        this.hotwords = null;
        this.totalnum = i;
        this.hotwords = arrayList;
    }

    public final String className() {
        return "QQPIM.HotWordResInfo";
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
        jceDisplayer.display(this.totalnum, "totalnum");
        jceDisplayer.display((Collection) this.hotwords, "hotwords");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        HotWordResInfo hotWordResInfo = (HotWordResInfo) obj;
        return JceUtil.equals(this.totalnum, hotWordResInfo.totalnum) && JceUtil.equals(this.hotwords, hotWordResInfo.hotwords);
    }

    public final String fullClassName() {
        return "QQPIM.HotWordResInfo";
    }

    public final ArrayList<HotwordInfo> getHotwords() {
        return this.hotwords;
    }

    public final int getTotalnum() {
        return this.totalnum;
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
        this.totalnum = jceInputStream.read(this.totalnum, 0, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new HotwordInfo());
        }
        setHotwords((ArrayList) jceInputStream.read((Object) a, 1, true));
    }

    public final void setHotwords(ArrayList<HotwordInfo> arrayList) {
        this.hotwords = arrayList;
    }

    public final void setTotalnum(int i) {
        this.totalnum = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.totalnum, 0);
        jceOutputStream.write((Collection) this.hotwords, 1);
    }
}
