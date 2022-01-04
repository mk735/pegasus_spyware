package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftScore extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!SoftScore.class.desiredAssertionStatus());
    public int score;
    public String softname;
    public String uid;
    public int user_num;

    public SoftScore() {
        this.softname = "";
        this.score = 0;
        this.user_num = 0;
        this.uid = "";
        this.softname = this.softname;
        this.score = this.score;
        this.user_num = this.user_num;
        this.uid = this.uid;
    }

    public SoftScore(String str, int i, int i2, String str2) {
        this.softname = "";
        this.score = 0;
        this.user_num = 0;
        this.uid = "";
        this.softname = str;
        this.score = i;
        this.user_num = i2;
        this.uid = str2;
    }

    public final String className() {
        return "QQPIM.SoftScore";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (a) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.softname, "softname");
        jceDisplayer.display(this.score, "score");
        jceDisplayer.display(this.user_num, "user_num");
        jceDisplayer.display(this.uid, "uid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftScore softScore = (SoftScore) obj;
        return JceUtil.equals(this.softname, softScore.softname) && JceUtil.equals(this.score, softScore.score) && JceUtil.equals(this.user_num, softScore.user_num) && JceUtil.equals(this.uid, softScore.uid);
    }

    public final String fullClassName() {
        return "QQPIM.SoftScore";
    }

    public final int getScore() {
        return this.score;
    }

    public final String getSoftname() {
        return this.softname;
    }

    public final String getUid() {
        return this.uid;
    }

    public final int getUser_num() {
        return this.user_num;
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
        this.softname = jceInputStream.readString(0, true);
        this.score = jceInputStream.read(this.score, 1, false);
        this.user_num = jceInputStream.read(this.user_num, 2, false);
        this.uid = jceInputStream.readString(3, false);
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setSoftname(String str) {
        this.softname = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final void setUser_num(int i) {
        this.user_num = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.softname, 0);
        jceOutputStream.write(this.score, 1);
        jceOutputStream.write(this.user_num, 2);
        if (this.uid != null) {
            jceOutputStream.write(this.uid, 3);
        }
    }
}
