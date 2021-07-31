package com.tencent.tmsecure.module.qscanner;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class QScanRecord extends JceStruct implements Cloneable {
    static QScanResult a;
    static final /* synthetic */ boolean b = (!QScanRecord.class.desiredAssertionStatus());
    public long id;
    public QScanResult result;
    public int state;

    public QScanRecord() {
        this.id = 0;
        this.result = null;
        this.state = 0;
        this.id = this.id;
        this.result = this.result;
        this.state = this.state;
    }

    public QScanRecord(long j, QScanResult qScanResult, int i) {
        this.id = 0;
        this.result = null;
        this.state = 0;
        this.id = j;
        this.result = qScanResult;
        this.state = i;
    }

    public final String className() {
        return "QQPIM.QScanRecord";
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
        jceDisplayer.display((JceStruct) this.result, QueryPermissions.RECOMMENDEDACTION);
        jceDisplayer.display(this.state, "state");
    }

    public final boolean equals(Object obj) {
        QScanRecord qScanRecord;
        return obj != null && (obj instanceof QScanRecord) && (qScanRecord = (QScanRecord) obj) != null && JceUtil.equals(this.id, qScanRecord.id) && JceUtil.equals(this.result, qScanRecord.result) && JceUtil.equals(this.state, qScanRecord.state);
    }

    public final String fullClassName() {
        return "QQPIM.QScanRecord";
    }

    public final long getId() {
        return this.id;
    }

    public final QScanResult getResult() {
        return this.result;
    }

    public final int getState() {
        return this.state;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.id = jceInputStream.read(this.id, 0, true);
        if (a == null) {
            a = new QScanResult();
        }
        this.result = (QScanResult) jceInputStream.read((JceStruct) a, 1, true);
        this.state = jceInputStream.read(this.state, 2, false);
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setResult(QScanResult qScanResult) {
        this.result = qScanResult;
    }

    public final void setState(int i) {
        this.state = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write((JceStruct) this.result, 1);
        jceOutputStream.write(this.state, 2);
    }
}
