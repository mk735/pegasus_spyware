package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GPS extends JceStruct {
    static final /* synthetic */ boolean a = (!GPS.class.desiredAssertionStatus());
    public int eType;
    public int iAlt;
    public int iLat;
    public int iLon;

    public GPS() {
        this.iLat = 900000000;
        this.iLon = 900000000;
        this.iAlt = -1;
        this.eType = 0;
        this.iLat = this.iLat;
        this.iLon = this.iLon;
        this.iAlt = this.iAlt;
        this.eType = this.eType;
    }

    public GPS(int i, int i2, int i3, int i4) {
        this.iLat = 900000000;
        this.iLon = 900000000;
        this.iAlt = -1;
        this.eType = 0;
        this.iLat = i;
        this.iLon = i2;
        this.iAlt = i3;
        this.eType = i4;
    }

    public final String className() {
        return "LBSAPIProtocol.GPS";
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
        jceDisplayer.display(this.iLat, "iLat");
        jceDisplayer.display(this.iLon, "iLon");
        jceDisplayer.display(this.iAlt, "iAlt");
        jceDisplayer.display(this.eType, "eType");
    }

    public final boolean equals(Object obj) {
        GPS gps = (GPS) obj;
        return JceUtil.equals(this.iLat, gps.iLat) && JceUtil.equals(this.iLon, gps.iLon) && JceUtil.equals(this.iAlt, gps.iAlt) && JceUtil.equals(this.eType, gps.eType);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.GPS";
    }

    public final int getEType() {
        return this.eType;
    }

    public final int getIAlt() {
        return this.iAlt;
    }

    public final int getILat() {
        return this.iLat;
    }

    public final int getILon() {
        return this.iLon;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.iLat = jceInputStream.read(this.iLat, 0, true);
        this.iLon = jceInputStream.read(this.iLon, 1, true);
        this.iAlt = jceInputStream.read(this.iAlt, 2, true);
        this.eType = jceInputStream.read(this.eType, 3, true);
    }

    public final void setEType(int i) {
        this.eType = i;
    }

    public final void setIAlt(int i) {
        this.iAlt = i;
    }

    public final void setILat(int i) {
        this.iLat = i;
    }

    public final void setILon(int i) {
        this.iLon = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.iLat, 0);
        jceOutputStream.write(this.iLon, 1);
        jceOutputStream.write(this.iAlt, 2);
        jceOutputStream.write(this.eType, 3);
    }
}
