package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class DeviceData extends JceStruct {
    static Measure a;
    static ArrayList b;
    static final /* synthetic */ boolean c = (!DeviceData.class.desiredAssertionStatus());
    public int eDeviceType;
    public Measure stCurMeasure;
    public String strAppUA;
    public String strImei;
    public ArrayList vMeasures;

    public DeviceData() {
        this.stCurMeasure = null;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.eDeviceType = 0;
        this.stCurMeasure = this.stCurMeasure;
        this.vMeasures = this.vMeasures;
        this.strAppUA = this.strAppUA;
        this.strImei = this.strImei;
        this.eDeviceType = this.eDeviceType;
    }

    public DeviceData(Measure measure, ArrayList arrayList, String str, String str2, int i) {
        this.stCurMeasure = null;
        this.vMeasures = null;
        this.strAppUA = "";
        this.strImei = "";
        this.eDeviceType = 0;
        this.stCurMeasure = measure;
        this.vMeasures = arrayList;
        this.strAppUA = str;
        this.strImei = str2;
        this.eDeviceType = i;
    }

    public final String className() {
        return "LBSAPIProtocol.DeviceData";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.stCurMeasure, "stCurMeasure");
        jceDisplayer.display((Collection) this.vMeasures, "vMeasures");
        jceDisplayer.display(this.strAppUA, "strAppUA");
        jceDisplayer.display(this.strImei, "strImei");
        jceDisplayer.display(this.eDeviceType, "eDeviceType");
    }

    public final boolean equals(Object obj) {
        DeviceData deviceData = (DeviceData) obj;
        return JceUtil.equals(this.stCurMeasure, deviceData.stCurMeasure) && JceUtil.equals(this.vMeasures, deviceData.vMeasures) && JceUtil.equals(this.strAppUA, deviceData.strAppUA) && JceUtil.equals(this.strImei, deviceData.strImei) && JceUtil.equals(this.eDeviceType, deviceData.eDeviceType);
    }

    public final String fullClassName() {
        return "LBSAPIProtocol.DeviceData";
    }

    public final int getEDeviceType() {
        return this.eDeviceType;
    }

    public final Measure getStCurMeasure() {
        return this.stCurMeasure;
    }

    public final String getStrAppUA() {
        return this.strAppUA;
    }

    public final String getStrImei() {
        return this.strImei;
    }

    public final ArrayList getVMeasures() {
        return this.vMeasures;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new Measure();
        }
        this.stCurMeasure = (Measure) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new ArrayList();
            b.add(new Measure());
        }
        setVMeasures((ArrayList) jceInputStream.read((Object) b, 1, true));
        setStrAppUA(jceInputStream.readString(2, true));
        setStrImei(jceInputStream.readString(3, true));
        setEDeviceType(jceInputStream.read(this.eDeviceType, 4, true));
    }

    public final void setEDeviceType(int i) {
        this.eDeviceType = i;
    }

    public final void setStCurMeasure(Measure measure) {
        this.stCurMeasure = measure;
    }

    public final void setStrAppUA(String str) {
        this.strAppUA = str;
    }

    public final void setStrImei(String str) {
        this.strImei = str;
    }

    public final void setVMeasures(ArrayList arrayList) {
        this.vMeasures = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.stCurMeasure, 0);
        jceOutputStream.write((Collection) this.vMeasures, 1);
        jceOutputStream.write(this.strAppUA, 2);
        jceOutputStream.write(this.strImei, 3);
        jceOutputStream.write(this.eDeviceType, 4);
    }
}
