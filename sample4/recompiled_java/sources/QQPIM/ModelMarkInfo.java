package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class ModelMarkInfo extends JceStruct implements Cloneable {
    static Mobile a;
    static ArrayList<Mark> b;
    static final /* synthetic */ boolean c = (!ModelMarkInfo.class.desiredAssertionStatus());
    public int mark;
    public ArrayList<Mark> marks;
    public Mobile mobile;

    public ModelMarkInfo() {
        this.mobile = null;
        this.marks = null;
        this.mark = 0;
        this.mobile = this.mobile;
        this.marks = this.marks;
        this.mark = this.mark;
    }

    public ModelMarkInfo(Mobile mobile2, ArrayList<Mark> arrayList, int i) {
        this.mobile = null;
        this.marks = null;
        this.mark = 0;
        this.mobile = mobile2;
        this.marks = arrayList;
        this.mark = i;
    }

    public final String className() {
        return "QQPIM.ModelMarkInfo";
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
        jceDisplayer.display((JceStruct) this.mobile, "mobile");
        jceDisplayer.display((Collection) this.marks, "marks");
        jceDisplayer.display(this.mark, "mark");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ModelMarkInfo modelMarkInfo = (ModelMarkInfo) obj;
        return JceUtil.equals(this.mobile, modelMarkInfo.mobile) && JceUtil.equals(this.marks, modelMarkInfo.marks) && JceUtil.equals(this.mark, modelMarkInfo.mark);
    }

    public final String fullClassName() {
        return "QQPIM.ModelMarkInfo";
    }

    public final int getMark() {
        return this.mark;
    }

    public final ArrayList<Mark> getMarks() {
        return this.marks;
    }

    public final Mobile getMobile() {
        return this.mobile;
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
            a = new Mobile();
        }
        this.mobile = (Mobile) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList<>();
            b.add(new Mark());
        }
        setMarks((ArrayList) jceInputStream.read((Object) b, 1, true));
        setMark(jceInputStream.read(this.mark, 2, true));
    }

    public final void setMark(int i) {
        this.mark = i;
    }

    public final void setMarks(ArrayList<Mark> arrayList) {
        this.marks = arrayList;
    }

    public final void setMobile(Mobile mobile2) {
        this.mobile = mobile2;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.mobile, 0);
        jceOutputStream.write((Collection) this.marks, 1);
        jceOutputStream.write(this.mark, 2);
    }
}
