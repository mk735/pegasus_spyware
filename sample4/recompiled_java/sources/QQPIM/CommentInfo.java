package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import org.apache.commons.httpclient.cookie.Cookie2;

public final class CommentInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!CommentInfo.class.desiredAssertionStatus());
    public String comment;
    public int score;
    public SoftKey softkey;

    public CommentInfo() {
        this.softkey = null;
        this.score = 0;
        this.comment = "";
        this.softkey = this.softkey;
        this.score = this.score;
        this.comment = this.comment;
    }

    public CommentInfo(SoftKey softKey, int i, String str) {
        this.softkey = null;
        this.score = 0;
        this.comment = "";
        this.softkey = softKey;
        this.score = i;
        this.comment = str;
    }

    public final String className() {
        return "QQPIM.CommentInfo";
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
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.score, "score");
        jceDisplayer.display(this.comment, Cookie2.COMMENT);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CommentInfo commentInfo = (CommentInfo) obj;
        return JceUtil.equals(this.softkey, commentInfo.softkey) && JceUtil.equals(this.score, commentInfo.score) && JceUtil.equals(this.comment, commentInfo.comment);
    }

    public final String fullClassName() {
        return "QQPIM.CommentInfo";
    }

    public final String getComment() {
        return this.comment;
    }

    public final int getScore() {
        return this.score;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
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
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 0, true);
        this.score = jceInputStream.read(this.score, 1, false);
        this.comment = jceInputStream.readString(2, false);
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        jceOutputStream.write(this.score, 1);
        if (this.comment != null) {
            jceOutputStream.write(this.comment, 2);
        }
    }
}
