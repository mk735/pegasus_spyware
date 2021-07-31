package QQPIM;

import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RankInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!RankInfo.class.desiredAssertionStatus());
    public int modelrank;
    public int modeltotal;
    public int rank;
    public int total;

    public RankInfo() {
        this.rank = 0;
        this.modelrank = 0;
        this.total = 0;
        this.modeltotal = 0;
        this.rank = this.rank;
        this.modelrank = this.modelrank;
        this.total = this.total;
        this.modeltotal = this.modeltotal;
    }

    public RankInfo(int i, int i2, int i3, int i4) {
        this.rank = 0;
        this.modelrank = 0;
        this.total = 0;
        this.modeltotal = 0;
        this.rank = i;
        this.modelrank = i2;
        this.total = i3;
        this.modeltotal = i4;
    }

    public final String className() {
        return "QQPIM.RankInfo";
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
        jceDisplayer.display(this.rank, "rank");
        jceDisplayer.display(this.modelrank, "modelrank");
        jceDisplayer.display(this.total, TrafficStatsService.TOTAL);
        jceDisplayer.display(this.modeltotal, "modeltotal");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        RankInfo rankInfo = (RankInfo) obj;
        return JceUtil.equals(this.rank, rankInfo.rank) && JceUtil.equals(this.modelrank, rankInfo.modelrank) && JceUtil.equals(this.total, rankInfo.total) && JceUtil.equals(this.modeltotal, rankInfo.modeltotal);
    }

    public final String fullClassName() {
        return "QQPIM.RankInfo";
    }

    public final int getModelrank() {
        return this.modelrank;
    }

    public final int getModeltotal() {
        return this.modeltotal;
    }

    public final int getRank() {
        return this.rank;
    }

    public final int getTotal() {
        return this.total;
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
        this.rank = jceInputStream.read(this.rank, 0, true);
        this.modelrank = jceInputStream.read(this.modelrank, 1, true);
        this.total = jceInputStream.read(this.total, 2, true);
        this.modeltotal = jceInputStream.read(this.modeltotal, 3, true);
    }

    public final void setModelrank(int i) {
        this.modelrank = i;
    }

    public final void setModeltotal(int i) {
        this.modeltotal = i;
    }

    public final void setRank(int i) {
        this.rank = i;
    }

    public final void setTotal(int i) {
        this.total = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.rank, 0);
        jceOutputStream.write(this.modelrank, 1);
        jceOutputStream.write(this.total, 2);
        jceOutputStream.write(this.modeltotal, 3);
    }
}
