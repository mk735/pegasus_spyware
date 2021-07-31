package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AndroidCategoryExpand extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!AndroidCategoryExpand.class.desiredAssertionStatus());
    public int agree;
    public int createtime;
    public int disagree;
    public int ispush;
    public int updatetime;

    public AndroidCategoryExpand() {
        this.createtime = 0;
        this.agree = 0;
        this.disagree = 0;
        this.ispush = ECategoryPushType.CPUSH_NONE.value();
        this.updatetime = 0;
        this.createtime = this.createtime;
        this.agree = this.agree;
        this.disagree = this.disagree;
        this.ispush = this.ispush;
        this.updatetime = this.updatetime;
    }

    public AndroidCategoryExpand(int i, int i2, int i3, int i4, int i5) {
        this.createtime = 0;
        this.agree = 0;
        this.disagree = 0;
        this.ispush = ECategoryPushType.CPUSH_NONE.value();
        this.updatetime = 0;
        this.createtime = i;
        this.agree = i2;
        this.disagree = i3;
        this.ispush = i4;
        this.updatetime = i5;
    }

    public final String className() {
        return "QQPIM.AndroidCategoryExpand";
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
        jceDisplayer.display(this.createtime, "createtime");
        jceDisplayer.display(this.agree, "agree");
        jceDisplayer.display(this.disagree, "disagree");
        jceDisplayer.display(this.ispush, "ispush");
        jceDisplayer.display(this.updatetime, "updatetime");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AndroidCategoryExpand androidCategoryExpand = (AndroidCategoryExpand) obj;
        return JceUtil.equals(this.createtime, androidCategoryExpand.createtime) && JceUtil.equals(this.agree, androidCategoryExpand.agree) && JceUtil.equals(this.disagree, androidCategoryExpand.disagree) && JceUtil.equals(this.ispush, androidCategoryExpand.ispush) && JceUtil.equals(this.updatetime, androidCategoryExpand.updatetime);
    }

    public final String fullClassName() {
        return "QQPIM.AndroidCategoryExpand";
    }

    public final int getAgree() {
        return this.agree;
    }

    public final int getCreatetime() {
        return this.createtime;
    }

    public final int getDisagree() {
        return this.disagree;
    }

    public final int getIspush() {
        return this.ispush;
    }

    public final int getUpdatetime() {
        return this.updatetime;
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
        this.createtime = jceInputStream.read(this.createtime, 0, false);
        this.agree = jceInputStream.read(this.agree, 1, false);
        this.disagree = jceInputStream.read(this.disagree, 2, false);
        this.ispush = jceInputStream.read(this.ispush, 3, false);
        this.updatetime = jceInputStream.read(this.updatetime, 4, false);
    }

    public final void setAgree(int i) {
        this.agree = i;
    }

    public final void setCreatetime(int i) {
        this.createtime = i;
    }

    public final void setDisagree(int i) {
        this.disagree = i;
    }

    public final void setIspush(int i) {
        this.ispush = i;
    }

    public final void setUpdatetime(int i) {
        this.updatetime = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.createtime, 0);
        jceOutputStream.write(this.agree, 1);
        jceOutputStream.write(this.disagree, 2);
        jceOutputStream.write(this.ispush, 3);
        jceOutputStream.write(this.updatetime, 4);
    }
}
