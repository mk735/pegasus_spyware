package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class RespMark extends JceStruct implements Cloneable {
    static ArrayList<Mark> a;
    static ArrayList<TopList> b;
    static final /* synthetic */ boolean c = (!RespMark.class.desiredAssertionStatus());
    public ArrayList<Mark> marks;
    public ArrayList<TopList> toplists;

    public RespMark() {
        this.marks = null;
        this.toplists = null;
        this.marks = this.marks;
        this.toplists = this.toplists;
    }

    public RespMark(ArrayList<Mark> arrayList, ArrayList<TopList> arrayList2) {
        this.marks = null;
        this.toplists = null;
        this.marks = arrayList;
        this.toplists = arrayList2;
    }

    public final String className() {
        return "QQPIM.RespMark";
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
        jceDisplayer.display((Collection) this.marks, "marks");
        jceDisplayer.display((Collection) this.toplists, "toplists");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        RespMark respMark = (RespMark) obj;
        return JceUtil.equals(this.marks, respMark.marks) && JceUtil.equals(this.toplists, respMark.toplists);
    }

    public final String fullClassName() {
        return "QQPIM.RespMark";
    }

    public final ArrayList<Mark> getMarks() {
        return this.marks;
    }

    public final ArrayList<TopList> getToplists() {
        return this.toplists;
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
            a.add(new Mark());
        }
        setMarks((ArrayList) jceInputStream.read((Object) a, 0, true));
        if (b == null) {
            b = new ArrayList<>();
            b.add(new TopList());
        }
        setToplists((ArrayList) jceInputStream.read((Object) b, 1, true));
    }

    public final void setMarks(ArrayList<Mark> arrayList) {
        this.marks = arrayList;
    }

    public final void setToplists(ArrayList<TopList> arrayList) {
        this.toplists = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.marks, 0);
        jceOutputStream.write((Collection) this.toplists, 1);
    }
}
