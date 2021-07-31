package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LotteryPrize extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!LotteryPrize.class.desiredAssertionStatus());
    public boolean lucky;
    public String prize;
    public String prizeid;

    public LotteryPrize() {
        this.lucky = true;
        this.prizeid = "";
        this.prize = "";
        this.lucky = this.lucky;
        this.prizeid = this.prizeid;
        this.prize = this.prize;
    }

    public LotteryPrize(boolean z, String str, String str2) {
        this.lucky = true;
        this.prizeid = "";
        this.prize = "";
        this.lucky = z;
        this.prizeid = str;
        this.prize = str2;
    }

    public final String className() {
        return "QQPIM.LotteryPrize";
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
        jceDisplayer.display(this.lucky, "lucky");
        jceDisplayer.display(this.prizeid, "prizeid");
        jceDisplayer.display(this.prize, "prize");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        LotteryPrize lotteryPrize = (LotteryPrize) obj;
        return JceUtil.equals(this.lucky, lotteryPrize.lucky) && JceUtil.equals(this.prizeid, lotteryPrize.prizeid) && JceUtil.equals(this.prize, lotteryPrize.prize);
    }

    public final String fullClassName() {
        return "QQPIM.LotteryPrize";
    }

    public final boolean getLucky() {
        return this.lucky;
    }

    public final String getPrize() {
        return this.prize;
    }

    public final String getPrizeid() {
        return this.prizeid;
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
        this.lucky = jceInputStream.read(this.lucky, 0, false);
        this.prizeid = jceInputStream.readString(1, false);
        this.prize = jceInputStream.readString(2, false);
    }

    public final void setLucky(boolean z) {
        this.lucky = z;
    }

    public final void setPrize(String str) {
        this.prize = str;
    }

    public final void setPrizeid(String str) {
        this.prizeid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.lucky, 0);
        if (this.prizeid != null) {
            jceOutputStream.write(this.prizeid, 1);
        }
        if (this.prize != null) {
            jceOutputStream.write(this.prize, 2);
        }
    }
}
