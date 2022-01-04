package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupConfig;

public final class BrowserClient extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!BrowserClient.class.desiredAssertionStatus());
    public String guid;
    public String imei;
    public int product;
    public String ua;
    public String version;

    public BrowserClient() {
        this.product = 0;
        this.version = "";
        this.imei = "";
        this.guid = "";
        this.ua = "";
        this.product = this.product;
        this.version = this.version;
        this.imei = this.imei;
        this.guid = this.guid;
        this.ua = this.ua;
    }

    public BrowserClient(int i, String str, String str2, String str3, String str4) {
        this.product = 0;
        this.version = "";
        this.imei = "";
        this.guid = "";
        this.ua = "";
        this.product = i;
        this.version = str;
        this.imei = str2;
        this.guid = str3;
        this.ua = str4;
    }

    public final String className() {
        return "QQPIM.BrowserClient";
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
        jceDisplayer.display(this.product, TMSApplication.CON_PRODUCT);
        jceDisplayer.display(this.version, "version");
        jceDisplayer.display(this.imei, "imei");
        jceDisplayer.display(this.guid, WupConfig.KEY_GUID);
        jceDisplayer.display(this.ua, "ua");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        BrowserClient browserClient = (BrowserClient) obj;
        return JceUtil.equals(this.product, browserClient.product) && JceUtil.equals(this.version, browserClient.version) && JceUtil.equals(this.imei, browserClient.imei) && JceUtil.equals(this.guid, browserClient.guid) && JceUtil.equals(this.ua, browserClient.ua);
    }

    public final String fullClassName() {
        return "QQPIM.BrowserClient";
    }

    public final String getGuid() {
        return this.guid;
    }

    public final String getImei() {
        return this.imei;
    }

    public final int getProduct() {
        return this.product;
    }

    public final String getUa() {
        return this.ua;
    }

    public final String getVersion() {
        return this.version;
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
        this.product = jceInputStream.read(this.product, 0, true);
        this.version = jceInputStream.readString(1, true);
        this.imei = jceInputStream.readString(2, true);
        this.guid = jceInputStream.readString(3, true);
        this.ua = jceInputStream.readString(4, true);
    }

    public final void setGuid(String str) {
        this.guid = str;
    }

    public final void setImei(String str) {
        this.imei = str;
    }

    public final void setProduct(int i) {
        this.product = i;
    }

    public final void setUa(String str) {
        this.ua = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.product, 0);
        jceOutputStream.write(this.version, 1);
        jceOutputStream.write(this.imei, 2);
        jceOutputStream.write(this.guid, 3);
        jceOutputStream.write(this.ua, 4);
    }
}
