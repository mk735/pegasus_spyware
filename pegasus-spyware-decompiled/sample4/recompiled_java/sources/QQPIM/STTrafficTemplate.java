package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class STTrafficTemplate extends JceStruct implements Cloneable {
    static ArrayList<STMatchRule> a;
    static final /* synthetic */ boolean b = (!STTrafficTemplate.class.desiredAssertionStatus());
    public ArrayList<STMatchRule> matchRules;

    public STTrafficTemplate() {
        this.matchRules = null;
        this.matchRules = this.matchRules;
    }

    public STTrafficTemplate(ArrayList<STMatchRule> arrayList) {
        this.matchRules = null;
        this.matchRules = arrayList;
    }

    public final String className() {
        return "QQPIM.STTrafficTemplate";
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
        new JceDisplayer(sb, i).display((Collection) this.matchRules, "matchRules");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.matchRules, ((STTrafficTemplate) obj).matchRules);
    }

    public final String fullClassName() {
        return "QQPIM.STTrafficTemplate";
    }

    public final ArrayList<STMatchRule> getMatchRules() {
        return this.matchRules;
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
            a.add(new STMatchRule());
        }
        setMatchRules((ArrayList) jceInputStream.read((Object) a, 0, false));
    }

    public final void setMatchRules(ArrayList<STMatchRule> arrayList) {
        this.matchRules = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.matchRules != null) {
            jceOutputStream.write((Collection) this.matchRules, 0);
        }
    }
}
