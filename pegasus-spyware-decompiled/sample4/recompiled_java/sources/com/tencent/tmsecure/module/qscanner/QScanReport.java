package com.tencent.tmsecure.module.qscanner;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class QScanReport extends JceStruct implements Cloneable {
    static ArrayList<QScanRecord> a;
    static final /* synthetic */ boolean b = (!QScanReport.class.desiredAssertionStatus());
    public long id;
    public ArrayList<QScanRecord> records;
    public int riskFound;
    public String tips;
    public int type;
    public int virusCured;
    public int virusFound;
    public int waitDealing;

    public QScanReport() {
        this.id = 0;
        this.records = null;
        this.type = 0;
        this.virusFound = 0;
        this.virusCured = 0;
        this.waitDealing = 0;
        this.riskFound = 0;
        this.tips = "";
        this.id = this.id;
        this.records = this.records;
        this.type = this.type;
        this.virusFound = this.virusFound;
        this.virusCured = this.virusCured;
        this.waitDealing = this.waitDealing;
        this.riskFound = this.riskFound;
        this.tips = this.tips;
    }

    public QScanReport(long j, ArrayList<QScanRecord> arrayList, int i, int i2, int i3, int i4, int i5, String str) {
        this.id = 0;
        this.records = null;
        this.type = 0;
        this.virusFound = 0;
        this.virusCured = 0;
        this.waitDealing = 0;
        this.riskFound = 0;
        this.tips = "";
        this.id = j;
        this.records = arrayList;
        this.type = i;
        this.virusFound = i2;
        this.virusCured = i3;
        this.waitDealing = i4;
        this.riskFound = i5;
        this.tips = str;
    }

    public final String className() {
        return "QQPIM.QScanReport";
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
        jceDisplayer.display(this.id, QueryPermissions.ID);
        jceDisplayer.display((Collection) this.records, "records");
        jceDisplayer.display(this.type, "type");
        jceDisplayer.display(this.virusFound, "virusFound");
        jceDisplayer.display(this.virusCured, "virusCured");
        jceDisplayer.display(this.waitDealing, "waitDealing");
        jceDisplayer.display(this.riskFound, "riskFound");
        jceDisplayer.display(this.tips, "tips");
    }

    public final boolean equals(Object obj) {
        QScanReport qScanReport;
        return obj != null && (obj instanceof QScanReport) && (qScanReport = (QScanReport) obj) != null && JceUtil.equals(this.id, qScanReport.id) && JceUtil.equals(this.records, qScanReport.records) && JceUtil.equals(this.type, qScanReport.type) && JceUtil.equals(this.virusFound, qScanReport.virusFound) && JceUtil.equals(this.virusCured, qScanReport.virusCured) && JceUtil.equals(this.waitDealing, qScanReport.waitDealing) && JceUtil.equals(this.riskFound, qScanReport.riskFound) && JceUtil.equals(this.tips, qScanReport.tips);
    }

    public final String fullClassName() {
        return "QQPIM.QScanReport";
    }

    public final long getId() {
        return this.id;
    }

    public final ArrayList<QScanRecord> getRecords() {
        return this.records;
    }

    public final int getRiskFound() {
        return this.riskFound;
    }

    public final String getTips() {
        return this.tips;
    }

    public final int getType() {
        return this.type;
    }

    public final int getVirusCured() {
        return this.virusCured;
    }

    public final int getVirusFound() {
        return this.virusFound;
    }

    public final int getWaitDealing() {
        return this.waitDealing;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.id = jceInputStream.read(this.id, 0, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new QScanRecord());
        }
        setRecords((ArrayList) jceInputStream.read((Object) a, 1, true));
        setType(jceInputStream.read(this.type, 2, true));
        setVirusFound(jceInputStream.read(this.virusFound, 3, false));
        setVirusCured(jceInputStream.read(this.virusCured, 4, false));
        setWaitDealing(jceInputStream.read(this.waitDealing, 5, false));
        setRiskFound(jceInputStream.read(this.riskFound, 6, false));
        setTips(jceInputStream.readString(7, false));
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setRecords(ArrayList<QScanRecord> arrayList) {
        this.records = arrayList;
    }

    public final void setRiskFound(int i) {
        this.riskFound = i;
    }

    public final void setTips(String str) {
        this.tips = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVirusCured(int i) {
        this.virusCured = i;
    }

    public final void setVirusFound(int i) {
        this.virusFound = i;
    }

    public final void setWaitDealing(int i) {
        this.waitDealing = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write((Collection) this.records, 1);
        jceOutputStream.write(this.type, 2);
        jceOutputStream.write(this.virusFound, 3);
        jceOutputStream.write(this.virusCured, 4);
        jceOutputStream.write(this.waitDealing, 5);
        jceOutputStream.write(this.riskFound, 6);
        if (this.tips != null) {
            jceOutputStream.write(this.tips, 7);
        }
    }
}
