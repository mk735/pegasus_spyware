package QQPIM;

import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import org.apache.commons.httpclient.cookie.Cookie2;

public final class Comment extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!Comment.class.desiredAssertionStatus());
    public String comment;
    public int score;
    public String title;
    public String user;

    public Comment() {
        this.title = "";
        this.comment = "";
        this.user = "";
        this.score = 0;
        this.title = this.title;
        this.comment = this.comment;
        this.user = this.user;
        this.score = this.score;
    }

    public Comment(String str, String str2, String str3, int i) {
        this.title = "";
        this.comment = "";
        this.user = "";
        this.score = 0;
        this.title = str;
        this.comment = str2;
        this.user = str3;
        this.score = i;
    }

    public final String className() {
        return "QQPIM.Comment";
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
        jceDisplayer.display(this.title, "title");
        jceDisplayer.display(this.comment, Cookie2.COMMENT);
        jceDisplayer.display(this.user, PolicyAppInfo.APP_TYPE_USER);
        jceDisplayer.display(this.score, "score");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Comment comment2 = (Comment) obj;
        return JceUtil.equals(this.title, comment2.title) && JceUtil.equals(this.comment, comment2.comment) && JceUtil.equals(this.user, comment2.user) && JceUtil.equals(this.score, comment2.score);
    }

    public final String fullClassName() {
        return "QQPIM.Comment";
    }

    public final String getComment() {
        return this.comment;
    }

    public final int getScore() {
        return this.score;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUser() {
        return this.user;
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
        this.title = jceInputStream.readString(0, true);
        this.comment = jceInputStream.readString(1, true);
        this.user = jceInputStream.readString(2, true);
        this.score = jceInputStream.read(this.score, 3, true);
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUser(String str) {
        this.user = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.comment, 1);
        jceOutputStream.write(this.user, 2);
        jceOutputStream.write(this.score, 3);
    }
}
