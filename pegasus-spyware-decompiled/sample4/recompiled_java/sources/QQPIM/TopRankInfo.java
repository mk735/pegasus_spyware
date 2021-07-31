package QQPIM;

import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TopRankInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TopRankInfo.class.desiredAssertionStatus());
    public String model;
    public String os;
    public int score;
    public String user;

    public TopRankInfo() {
        this.user = "";
        this.model = "";
        this.os = "";
        this.score = 0;
        this.user = this.user;
        this.model = this.model;
        this.os = this.os;
        this.score = this.score;
    }

    public TopRankInfo(String str, String str2, String str3, int i) {
        this.user = "";
        this.model = "";
        this.os = "";
        this.score = 0;
        this.user = str;
        this.model = str2;
        this.os = str3;
        this.score = i;
    }

    public final String className() {
        return "QQPIM.TopRankInfo";
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
        jceDisplayer.display(this.user, PolicyAppInfo.APP_TYPE_USER);
        jceDisplayer.display(this.model, "model");
        jceDisplayer.display(this.os, "os");
        jceDisplayer.display(this.score, "score");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TopRankInfo topRankInfo = (TopRankInfo) obj;
        return JceUtil.equals(this.user, topRankInfo.user) && JceUtil.equals(this.model, topRankInfo.model) && JceUtil.equals(this.os, topRankInfo.os) && JceUtil.equals(this.score, topRankInfo.score);
    }

    public final String fullClassName() {
        return "QQPIM.TopRankInfo";
    }

    public final String getModel() {
        return this.model;
    }

    public final String getOs() {
        return this.os;
    }

    public final int getScore() {
        return this.score;
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
        this.user = jceInputStream.readString(0, true);
        this.model = jceInputStream.readString(1, true);
        this.os = jceInputStream.readString(2, true);
        this.score = jceInputStream.read(this.score, 3, true);
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setOs(String str) {
        this.os = str;
    }

    public final void setScore(int i) {
        this.score = i;
    }

    public final void setUser(String str) {
        this.user = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.user, 0);
        jceOutputStream.write(this.model, 1);
        jceOutputStream.write(this.os, 2);
        jceOutputStream.write(this.score, 3);
    }
}
