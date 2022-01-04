package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.common.TMSApplication;

public final class ProductVersion extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ProductVersion.class.desiredAssertionStatus());
    public int cversion;
    public int hotfix;
    public int pversion;

    public ProductVersion() {
        this.pversion = 0;
        this.cversion = 0;
        this.hotfix = 0;
        this.pversion = this.pversion;
        this.cversion = this.cversion;
        this.hotfix = this.hotfix;
    }

    public ProductVersion(int i, int i2, int i3) {
        this.pversion = 0;
        this.cversion = 0;
        this.hotfix = 0;
        this.pversion = i;
        this.cversion = i2;
        this.hotfix = i3;
    }

    public final String className() {
        return "QQPIM.ProductVersion";
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
        jceDisplayer.display(this.pversion, TMSApplication.CON_PVERSION);
        jceDisplayer.display(this.cversion, TMSApplication.CON_CVERSION);
        jceDisplayer.display(this.hotfix, TMSApplication.CON_HOTFIX);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ProductVersion productVersion = (ProductVersion) obj;
        return JceUtil.equals(this.pversion, productVersion.pversion) && JceUtil.equals(this.cversion, productVersion.cversion) && JceUtil.equals(this.hotfix, productVersion.hotfix);
    }

    public final String fullClassName() {
        return "QQPIM.ProductVersion";
    }

    public final int getCversion() {
        return this.cversion;
    }

    public final int getHotfix() {
        return this.hotfix;
    }

    public final int getPversion() {
        return this.pversion;
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
        this.pversion = jceInputStream.read(this.pversion, 1, true);
        this.cversion = jceInputStream.read(this.cversion, 2, true);
        this.hotfix = jceInputStream.read(this.hotfix, 3, true);
    }

    public final void setCversion(int i) {
        this.cversion = i;
    }

    public final void setHotfix(int i) {
        this.hotfix = i;
    }

    public final void setPversion(int i) {
        this.pversion = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pversion, 1);
        jceOutputStream.write(this.cversion, 2);
        jceOutputStream.write(this.hotfix, 3);
    }
}
