package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Mobile extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!Mobile.class.desiredAssertionStatus());
    public String brand;
    public String model;
    public String url;

    public Mobile() {
        this.model = "";
        this.brand = "";
        this.url = "";
        this.model = this.model;
        this.brand = this.brand;
        this.url = this.url;
    }

    public Mobile(String str, String str2, String str3) {
        this.model = "";
        this.brand = "";
        this.url = "";
        this.model = str;
        this.brand = str2;
        this.url = str3;
    }

    public final String className() {
        return "QQPIM.Mobile";
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
        jceDisplayer.display(this.model, "model");
        jceDisplayer.display(this.brand, "brand");
        jceDisplayer.display(this.url, "url");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Mobile mobile = (Mobile) obj;
        return JceUtil.equals(this.model, mobile.model) && JceUtil.equals(this.brand, mobile.brand) && JceUtil.equals(this.url, mobile.url);
    }

    public final String fullClassName() {
        return "QQPIM.Mobile";
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getUrl() {
        return this.url;
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
        this.model = jceInputStream.readString(0, true);
        this.brand = jceInputStream.readString(1, true);
        this.url = jceInputStream.readString(2, false);
    }

    public final void setBrand(String str) {
        this.brand = str;
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.model, 0);
        jceOutputStream.write(this.brand, 1);
        if (this.url != null) {
            jceOutputStream.write(this.url, 2);
        }
    }
}
