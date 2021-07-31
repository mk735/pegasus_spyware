package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PoiInfo extends JceStruct {
    static final /* synthetic */ boolean a = (!PoiInfo.class.desiredAssertionStatus());
    public int iDistance;
    public int iDistrictCode;
    public int iHotValue;
    public int iLat;
    public int iLon;
    public int iType;
    public long lId;
    public String strAddress;
    public String strName;
    public String strTypeName;

    public PoiInfo() {
        this.strName = "";
        this.iType = 0;
        this.strTypeName = "";
        this.strAddress = "";
        this.lId = 0;
        this.iDistrictCode = 0;
        this.iLat = 900000000;
        this.iLon = 900000000;
        this.iDistance = 0;
        this.iHotValue = 0;
        this.strName = this.strName;
        this.iType = this.iType;
        this.strTypeName = this.strTypeName;
        this.strAddress = this.strAddress;
        this.lId = this.lId;
        this.iDistrictCode = this.iDistrictCode;
        this.iLat = this.iLat;
        this.iLon = this.iLon;
        this.iDistance = this.iDistance;
        this.iHotValue = this.iHotValue;
    }

    public PoiInfo(String str, int i, String str2, String str3, long j, int i2, int i3, int i4, int i5, int i6) {
        this.strName = "";
        this.iType = 0;
        this.strTypeName = "";
        this.strAddress = "";
        this.lId = 0;
        this.iDistrictCode = 0;
        this.iLat = 900000000;
        this.iLon = 900000000;
        this.iDistance = 0;
        this.iHotValue = 0;
        this.strName = str;
        this.iType = i;
        this.strTypeName = str2;
        this.strAddress = str3;
        this.lId = j;
        this.iDistrictCode = i2;
        this.iLat = i3;
        this.iLon = i4;
        this.iDistance = i5;
        this.iHotValue = i6;
    }

    public final String className() {
        return "LBSAPIProtocol.PoiInfo";
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
        jceDisplayer.display(this.strName, "strName");
        jceDisplayer.display(this.iType, "iType");
        jceDisplayer.display(this.strTypeName, "strTypeName");
        jceDisplayer.display(this.strAddress, "strAddress");
        jceDisplayer.display(this.lId, "lId");
        jceDisplayer.display(this.iDistrictCode, "iDistrictCode");
        jceDisplayer.display(this.iLat, "iLat");
        jceDisplayer.display(this.iLon, "iLon");
        jceDisplayer.display(this.iDistance, "iDistance");
        jceDisplayer.display(this.iHotValue, "iHotValue");
    }

    public final boolean equals(Object obj) {
        PoiInfo poiInfo = (PoiInfo) obj;
        return JceUtil.equals(this.strName, poiInfo.strName) && JceUtil.equals(this.iType, poiInfo.iType) && JceUtil.equals(this.strTypeName, poiInfo.strTypeName) && JceUtil.equals(this.strAddress, poiInfo.strAddress) && JceUtil.equals(this.lId, poiInfo.lId) && JceUtil.equals(this.iDistrictCode, poiInfo.iDistrictCode) && JceUtil.equals(this.iLat, poiInfo.iLat) && JceUtil.equals(this.iLon, poiInfo.iLon) && JceUtil.equals(this.iDistance, poiInfo.iDistance) && JceUtil.equals(this.iHotValue, poiInfo.iHotValue);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.PoiInfo";
    }

    public final int getIDistance() {
        return this.iDistance;
    }

    public final int getIDistrictCode() {
        return this.iDistrictCode;
    }

    public final int getIHotValue() {
        return this.iHotValue;
    }

    public final int getILat() {
        return this.iLat;
    }

    public final int getILon() {
        return this.iLon;
    }

    public final int getIType() {
        return this.iType;
    }

    public final long getLId() {
        return this.lId;
    }

    public final String getStrAddress() {
        return this.strAddress;
    }

    public final String getStrName() {
        return this.strName;
    }

    public final String getStrTypeName() {
        return this.strTypeName;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.strName = jceInputStream.readString(0, true);
        this.iType = jceInputStream.read(this.iType, 1, true);
        this.strTypeName = jceInputStream.readString(2, true);
        this.strAddress = jceInputStream.readString(3, true);
        this.lId = jceInputStream.read(this.lId, 4, false);
        this.iDistrictCode = jceInputStream.read(this.iDistrictCode, 5, false);
        this.iLat = jceInputStream.read(this.iLat, 6, false);
        this.iLon = jceInputStream.read(this.iLon, 7, false);
        this.iDistance = jceInputStream.read(this.iDistance, 8, false);
        this.iHotValue = jceInputStream.read(this.iHotValue, 9, false);
    }

    public final void setIDistance(int i) {
        this.iDistance = i;
    }

    public final void setIDistrictCode(int i) {
        this.iDistrictCode = i;
    }

    public final void setIHotValue(int i) {
        this.iHotValue = i;
    }

    public final void setILat(int i) {
        this.iLat = i;
    }

    public final void setILon(int i) {
        this.iLon = i;
    }

    public final void setIType(int i) {
        this.iType = i;
    }

    public final void setLId(long j) {
        this.lId = j;
    }

    public final void setStrAddress(String str) {
        this.strAddress = str;
    }

    public final void setStrName(String str) {
        this.strName = str;
    }

    public final void setStrTypeName(String str) {
        this.strTypeName = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.strName, 0);
        jceOutputStream.write(this.iType, 1);
        jceOutputStream.write(this.strTypeName, 2);
        jceOutputStream.write(this.strAddress, 3);
        jceOutputStream.write(this.lId, 4);
        jceOutputStream.write(this.iDistrictCode, 5);
        jceOutputStream.write(this.iLat, 6);
        jceOutputStream.write(this.iLon, 7);
        jceOutputStream.write(this.iDistance, 8);
        jceOutputStream.write(this.iHotValue, 9);
    }
}
