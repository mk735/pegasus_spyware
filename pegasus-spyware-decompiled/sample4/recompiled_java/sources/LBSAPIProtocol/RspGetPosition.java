package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RspGetPosition extends JceStruct {
    static GPS a;
    static final /* synthetic */ boolean b = (!RspGetPosition.class.desiredAssertionStatus());
    public int iDistrictCode;
    public int iRange;
    public GPS stUsrLoc;
    public String strCity;
    public String strDistrict;
    public String strPremises;
    public String strProvince;
    public String strRoad;
    public String strTown;

    public RspGetPosition() {
        this.stUsrLoc = null;
        this.iRange = -1;
        this.strProvince = "";
        this.strCity = "";
        this.strDistrict = "";
        this.strTown = "";
        this.strRoad = "";
        this.strPremises = "";
        this.iDistrictCode = 0;
        this.stUsrLoc = this.stUsrLoc;
        this.iRange = this.iRange;
        this.strProvince = this.strProvince;
        this.strCity = this.strCity;
        this.strDistrict = this.strDistrict;
        this.strTown = this.strTown;
        this.strRoad = this.strRoad;
        this.strPremises = this.strPremises;
        this.iDistrictCode = this.iDistrictCode;
    }

    public RspGetPosition(GPS gps, int i, String str, String str2, String str3, String str4, String str5, String str6, int i2) {
        this.stUsrLoc = null;
        this.iRange = -1;
        this.strProvince = "";
        this.strCity = "";
        this.strDistrict = "";
        this.strTown = "";
        this.strRoad = "";
        this.strPremises = "";
        this.iDistrictCode = 0;
        this.stUsrLoc = gps;
        this.iRange = i;
        this.strProvince = str;
        this.strCity = str2;
        this.strDistrict = str3;
        this.strTown = str4;
        this.strRoad = str5;
        this.strPremises = str6;
        this.iDistrictCode = i2;
    }

    public final String className() {
        return "LBSAPIProtocol.RspGetPosition";
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
        jceDisplayer.display((JceStruct) this.stUsrLoc, "stUsrLoc");
        jceDisplayer.display(this.iRange, "iRange");
        jceDisplayer.display(this.strProvince, "strProvince");
        jceDisplayer.display(this.strCity, "strCity");
        jceDisplayer.display(this.strDistrict, "strDistrict");
        jceDisplayer.display(this.strTown, "strTown");
        jceDisplayer.display(this.strRoad, "strRoad");
        jceDisplayer.display(this.strPremises, "strPremises");
        jceDisplayer.display(this.iDistrictCode, "iDistrictCode");
    }

    public final boolean equals(Object obj) {
        RspGetPosition rspGetPosition = (RspGetPosition) obj;
        return JceUtil.equals(this.stUsrLoc, rspGetPosition.stUsrLoc) && JceUtil.equals(this.iRange, rspGetPosition.iRange) && JceUtil.equals(this.strProvince, rspGetPosition.strProvince) && JceUtil.equals(this.strCity, rspGetPosition.strCity) && JceUtil.equals(this.strDistrict, rspGetPosition.strDistrict) && JceUtil.equals(this.strTown, rspGetPosition.strTown) && JceUtil.equals(this.strRoad, rspGetPosition.strRoad) && JceUtil.equals(this.strPremises, rspGetPosition.strPremises) && JceUtil.equals(this.iDistrictCode, rspGetPosition.iDistrictCode);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.RspGetPosition";
    }

    public final int getIDistrictCode() {
        return this.iDistrictCode;
    }

    public final int getIRange() {
        return this.iRange;
    }

    public final GPS getStUsrLoc() {
        return this.stUsrLoc;
    }

    public final String getStrCity() {
        return this.strCity;
    }

    public final String getStrDistrict() {
        return this.strDistrict;
    }

    public final String getStrPremises() {
        return this.strPremises;
    }

    public final String getStrProvince() {
        return this.strProvince;
    }

    public final String getStrRoad() {
        return this.strRoad;
    }

    public final String getStrTown() {
        return this.strTown;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new GPS();
        }
        this.stUsrLoc = (GPS) jceInputStream.read((JceStruct) a, 0, true);
        this.iRange = jceInputStream.read(this.iRange, 1, true);
        this.strProvince = jceInputStream.readString(2, true);
        this.strCity = jceInputStream.readString(3, true);
        this.strDistrict = jceInputStream.readString(4, true);
        this.strTown = jceInputStream.readString(5, true);
        this.strRoad = jceInputStream.readString(6, true);
        this.strPremises = jceInputStream.readString(7, true);
        this.iDistrictCode = jceInputStream.read(this.iDistrictCode, 8, true);
    }

    public final void setIDistrictCode(int i) {
        this.iDistrictCode = i;
    }

    public final void setIRange(int i) {
        this.iRange = i;
    }

    public final void setStUsrLoc(GPS gps) {
        this.stUsrLoc = gps;
    }

    public final void setStrCity(String str) {
        this.strCity = str;
    }

    public final void setStrDistrict(String str) {
        this.strDistrict = str;
    }

    public final void setStrPremises(String str) {
        this.strPremises = str;
    }

    public final void setStrProvince(String str) {
        this.strProvince = str;
    }

    public final void setStrRoad(String str) {
        this.strRoad = str;
    }

    public final void setStrTown(String str) {
        this.strTown = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stUsrLoc, 0);
        jceOutputStream.write(this.iRange, 1);
        jceOutputStream.write(this.strProvince, 2);
        jceOutputStream.write(this.strCity, 3);
        jceOutputStream.write(this.strDistrict, 4);
        jceOutputStream.write(this.strTown, 5);
        jceOutputStream.write(this.strRoad, 6);
        jceOutputStream.write(this.strPremises, 7);
        jceOutputStream.write(this.iDistrictCode, 8);
    }
}
