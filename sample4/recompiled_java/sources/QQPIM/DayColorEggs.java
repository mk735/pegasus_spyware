package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DayColorEggs extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!DayColorEggs.class.desiredAssertionStatus());
    public boolean bshare;
    public String eggurl;
    public int nvalue;
    public int orbit;
    public String text;
    public String toast;
    public String wording;

    public DayColorEggs() {
        this.nvalue = 0;
        this.eggurl = "";
        this.orbit = 0;
        this.toast = "";
        this.bshare = true;
        this.wording = "";
        this.text = "";
        this.nvalue = this.nvalue;
        this.eggurl = this.eggurl;
        this.orbit = this.orbit;
        this.toast = this.toast;
        this.bshare = this.bshare;
        this.wording = this.wording;
        this.text = this.text;
    }

    public DayColorEggs(int i, String str, int i2, String str2, boolean z, String str3, String str4) {
        this.nvalue = 0;
        this.eggurl = "";
        this.orbit = 0;
        this.toast = "";
        this.bshare = true;
        this.wording = "";
        this.text = "";
        this.nvalue = i;
        this.eggurl = str;
        this.orbit = i2;
        this.toast = str2;
        this.bshare = z;
        this.wording = str3;
        this.text = str4;
    }

    public final String className() {
        return "QQPIM.DayColorEggs";
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
        jceDisplayer.display(this.nvalue, "nvalue");
        jceDisplayer.display(this.eggurl, "eggurl");
        jceDisplayer.display(this.orbit, "orbit");
        jceDisplayer.display(this.toast, "toast");
        jceDisplayer.display(this.bshare, "bshare");
        jceDisplayer.display(this.wording, "wording");
        jceDisplayer.display(this.text, "text");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DayColorEggs dayColorEggs = (DayColorEggs) obj;
        return JceUtil.equals(this.nvalue, dayColorEggs.nvalue) && JceUtil.equals(this.eggurl, dayColorEggs.eggurl) && JceUtil.equals(this.orbit, dayColorEggs.orbit) && JceUtil.equals(this.toast, dayColorEggs.toast) && JceUtil.equals(this.bshare, dayColorEggs.bshare) && JceUtil.equals(this.wording, dayColorEggs.wording) && JceUtil.equals(this.text, dayColorEggs.text);
    }

    public final String fullClassName() {
        return "QQPIM.DayColorEggs";
    }

    public final boolean getBshare() {
        return this.bshare;
    }

    public final String getEggurl() {
        return this.eggurl;
    }

    public final int getNvalue() {
        return this.nvalue;
    }

    public final int getOrbit() {
        return this.orbit;
    }

    public final String getText() {
        return this.text;
    }

    public final String getToast() {
        return this.toast;
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
        this.nvalue = jceInputStream.read(this.nvalue, 0, true);
        this.eggurl = jceInputStream.readString(1, true);
        this.orbit = jceInputStream.read(this.orbit, 2, true);
        this.toast = jceInputStream.readString(3, true);
        this.bshare = jceInputStream.read(this.bshare, 4, false);
        this.wording = jceInputStream.readString(5, false);
        this.text = jceInputStream.readString(6, false);
    }

    public final void setBshare(boolean z) {
        this.bshare = z;
    }

    public final void setEggurl(String str) {
        this.eggurl = str;
    }

    public final void setNvalue(int i) {
        this.nvalue = i;
    }

    public final void setOrbit(int i) {
        this.orbit = i;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final void setToast(String str) {
        this.toast = str;
    }

    public final void setWording(String str) {
        this.wording = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nvalue, 0);
        jceOutputStream.write(this.eggurl, 1);
        jceOutputStream.write(this.orbit, 2);
        jceOutputStream.write(this.toast, 3);
        jceOutputStream.write(this.bshare, 4);
        if (this.wording != null) {
            jceOutputStream.write(this.wording, 5);
        }
        if (this.text != null) {
            jceOutputStream.write(this.text, 6);
        }
    }
}
