package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LotteryColorEggs extends JceStruct implements Cloneable {
    static LotteryPrize a;
    static final /* synthetic */ boolean b = (!LotteryColorEggs.class.desiredAssertionStatus());
    public String activityid;
    public String checkurl;
    public String eggurl;
    public int orbit;
    public LotteryPrize prize;
    public String prizeurl;
    public String wording;

    public LotteryColorEggs() {
        this.activityid = "";
        this.eggurl = "";
        this.orbit = 0;
        this.wording = "";
        this.checkurl = "";
        this.prizeurl = "";
        this.prize = null;
        this.activityid = this.activityid;
        this.eggurl = this.eggurl;
        this.orbit = this.orbit;
        this.wording = this.wording;
        this.checkurl = this.checkurl;
        this.prizeurl = this.prizeurl;
        this.prize = this.prize;
    }

    public LotteryColorEggs(String str, String str2, int i, String str3, String str4, String str5, LotteryPrize lotteryPrize) {
        this.activityid = "";
        this.eggurl = "";
        this.orbit = 0;
        this.wording = "";
        this.checkurl = "";
        this.prizeurl = "";
        this.prize = null;
        this.activityid = str;
        this.eggurl = str2;
        this.orbit = i;
        this.wording = str3;
        this.checkurl = str4;
        this.prizeurl = str5;
        this.prize = lotteryPrize;
    }

    public final String className() {
        return "QQPIM.LotteryColorEggs";
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
        jceDisplayer.display(this.activityid, "activityid");
        jceDisplayer.display(this.eggurl, "eggurl");
        jceDisplayer.display(this.orbit, "orbit");
        jceDisplayer.display(this.wording, "wording");
        jceDisplayer.display(this.checkurl, "checkurl");
        jceDisplayer.display(this.prizeurl, "prizeurl");
        jceDisplayer.display((JceStruct) this.prize, "prize");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        LotteryColorEggs lotteryColorEggs = (LotteryColorEggs) obj;
        return JceUtil.equals(this.activityid, lotteryColorEggs.activityid) && JceUtil.equals(this.eggurl, lotteryColorEggs.eggurl) && JceUtil.equals(this.orbit, lotteryColorEggs.orbit) && JceUtil.equals(this.wording, lotteryColorEggs.wording) && JceUtil.equals(this.checkurl, lotteryColorEggs.checkurl) && JceUtil.equals(this.prizeurl, lotteryColorEggs.prizeurl) && JceUtil.equals(this.prize, lotteryColorEggs.prize);
    }

    public final String fullClassName() {
        return "QQPIM.LotteryColorEggs";
    }

    public final String getActivityid() {
        return this.activityid;
    }

    public final String getCheckurl() {
        return this.checkurl;
    }

    public final String getEggurl() {
        return this.eggurl;
    }

    public final int getOrbit() {
        return this.orbit;
    }

    public final LotteryPrize getPrize() {
        return this.prize;
    }

    public final String getPrizeurl() {
        return this.prizeurl;
    }

    public final String getWording() {
        return this.wording;
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
        this.activityid = jceInputStream.readString(0, true);
        this.eggurl = jceInputStream.readString(1, true);
        this.orbit = jceInputStream.read(this.orbit, 2, true);
        this.wording = jceInputStream.readString(3, true);
        this.checkurl = jceInputStream.readString(4, false);
        this.prizeurl = jceInputStream.readString(5, false);
        if (a == null) {
            a = new LotteryPrize();
        }
        this.prize = (LotteryPrize) jceInputStream.read((JceStruct) a, 6, false);
    }

    public final void setActivityid(String str) {
        this.activityid = str;
    }

    public final void setCheckurl(String str) {
        this.checkurl = str;
    }

    public final void setEggurl(String str) {
        this.eggurl = str;
    }

    public final void setOrbit(int i) {
        this.orbit = i;
    }

    public final void setPrize(LotteryPrize lotteryPrize) {
        this.prize = lotteryPrize;
    }

    public final void setPrizeurl(String str) {
        this.prizeurl = str;
    }

    public final void setWording(String str) {
        this.wording = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.activityid, 0);
        jceOutputStream.write(this.eggurl, 1);
        jceOutputStream.write(this.orbit, 2);
        jceOutputStream.write(this.wording, 3);
        if (this.checkurl != null) {
            jceOutputStream.write(this.checkurl, 4);
        }
        if (this.prizeurl != null) {
            jceOutputStream.write(this.prizeurl, 5);
        }
        if (this.prize != null) {
            jceOutputStream.write((JceStruct) this.prize, 6);
        }
    }
}
