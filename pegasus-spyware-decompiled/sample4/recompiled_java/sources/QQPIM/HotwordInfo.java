package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class HotwordInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!HotwordInfo.class.desiredAssertionStatus());
    public String hotword;

    public HotwordInfo() {
        this.hotword = "";
        this.hotword = this.hotword;
    }

    public HotwordInfo(String str) {
        this.hotword = "";
        this.hotword = str;
    }

    public final String className() {
        return "QQPIM.HotwordInfo";
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
        new JceDisplayer(sb, i).display(this.hotword, "hotword");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.hotword, ((HotwordInfo) obj).hotword);
    }

    public final String fullClassName() {
        return "QQPIM.HotwordInfo";
    }

    public final String getHotword() {
        return this.hotword;
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
        this.hotword = jceInputStream.readString(0, true);
    }

    public final void setHotword(String str) {
        this.hotword = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.hotword, 0);
    }
}
