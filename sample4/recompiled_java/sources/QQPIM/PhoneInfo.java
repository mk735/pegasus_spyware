package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class PhoneInfo extends JceStruct implements Cloneable {
    static ArrayList<PhoneInfoItem> a;
    static ArrayList<Mark> b;
    static final /* synthetic */ boolean c = (!PhoneInfo.class.desiredAssertionStatus());
    public ArrayList<Mark> marks;
    public ArrayList<PhoneInfoItem> phoneinfoitems;

    public PhoneInfo() {
        this.phoneinfoitems = null;
        this.marks = null;
        this.phoneinfoitems = this.phoneinfoitems;
        this.marks = this.marks;
    }

    public PhoneInfo(ArrayList<PhoneInfoItem> arrayList, ArrayList<Mark> arrayList2) {
        this.phoneinfoitems = null;
        this.marks = null;
        this.phoneinfoitems = arrayList;
        this.marks = arrayList2;
    }

    public final String className() {
        return "QQPIM.PhoneInfo";
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
        jceDisplayer.display((Collection) this.phoneinfoitems, "phoneinfoitems");
        jceDisplayer.display((Collection) this.marks, "marks");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        PhoneInfo phoneInfo = (PhoneInfo) obj;
        return JceUtil.equals(this.phoneinfoitems, phoneInfo.phoneinfoitems) && JceUtil.equals(this.marks, phoneInfo.marks);
    }

    public final String fullClassName() {
        return "QQPIM.PhoneInfo";
    }

    public final ArrayList<Mark> getMarks() {
        return this.marks;
    }

    public final ArrayList<PhoneInfoItem> getPhoneinfoitems() {
        return this.phoneinfoitems;
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
            a.add(new PhoneInfoItem());
        }
        setPhoneinfoitems((ArrayList) jceInputStream.read((Object) a, 0, false));
        if (b == null) {
            b = new ArrayList<>();
            b.add(new Mark());
        }
        setMarks((ArrayList) jceInputStream.read((Object) b, 1, false));
    }

    public final void setMarks(ArrayList<Mark> arrayList) {
        this.marks = arrayList;
    }

    public final void setPhoneinfoitems(ArrayList<PhoneInfoItem> arrayList) {
        this.phoneinfoitems = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.phoneinfoitems != null) {
            jceOutputStream.write((Collection) this.phoneinfoitems, 0);
        }
        if (this.marks != null) {
            jceOutputStream.write((Collection) this.marks, 1);
        }
    }
}
