package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Screen extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!Screen.class.desiredAssertionStatus());
    public int hpixel;
    public int wpixel;

    public Screen() {
        this.hpixel = 0;
        this.wpixel = 0;
        this.hpixel = this.hpixel;
        this.wpixel = this.wpixel;
    }

    public Screen(int i, int i2) {
        this.hpixel = 0;
        this.wpixel = 0;
        this.hpixel = i;
        this.wpixel = i2;
    }

    public final String className() {
        return "QQPIM.Screen";
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
        jceDisplayer.display(this.hpixel, "hpixel");
        jceDisplayer.display(this.wpixel, "wpixel");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Screen screen = (Screen) obj;
        return JceUtil.equals(this.hpixel, screen.hpixel) && JceUtil.equals(this.wpixel, screen.wpixel);
    }

    public final String fullClassName() {
        return "QQPIM.Screen";
    }

    public final int getHpixel() {
        return this.hpixel;
    }

    public final int getWpixel() {
        return this.wpixel;
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
        this.hpixel = jceInputStream.read(this.hpixel, 0, true);
        this.wpixel = jceInputStream.read(this.wpixel, 1, true);
    }

    public final void setHpixel(int i) {
        this.hpixel = i;
    }

    public final void setWpixel(int i) {
        this.wpixel = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.hpixel, 0);
        jceOutputStream.write(this.wpixel, 1);
    }
}
