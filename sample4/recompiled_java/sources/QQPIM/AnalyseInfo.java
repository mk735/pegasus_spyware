package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AnalyseInfo extends JceStruct implements Cloneable {
    static FeatureKey a;
    static SoftInfo b;
    static CloudCheck c;
    static UploadFileInfo d;
    static final /* synthetic */ boolean e = (!AnalyseInfo.class.desiredAssertionStatus());
    public int actionLevel;
    public CloudCheck cloudCheck;
    public FeatureKey featureKey;
    public int report_feature;
    public SoftInfo softInfo;
    public int softState;
    public UploadFileInfo uploadFileInfo;

    public AnalyseInfo() {
        this.featureKey = null;
        this.softInfo = null;
        this.cloudCheck = null;
        this.report_feature = 0;
        this.uploadFileInfo = null;
        this.softState = 0;
        this.actionLevel = 0;
        this.featureKey = this.featureKey;
        this.softInfo = this.softInfo;
        this.cloudCheck = this.cloudCheck;
        this.report_feature = this.report_feature;
        this.uploadFileInfo = this.uploadFileInfo;
        this.softState = this.softState;
        this.actionLevel = this.actionLevel;
    }

    public AnalyseInfo(FeatureKey featureKey2, SoftInfo softInfo2, CloudCheck cloudCheck2, int i, UploadFileInfo uploadFileInfo2, int i2, int i3) {
        this.featureKey = null;
        this.softInfo = null;
        this.cloudCheck = null;
        this.report_feature = 0;
        this.uploadFileInfo = null;
        this.softState = 0;
        this.actionLevel = 0;
        this.featureKey = featureKey2;
        this.softInfo = softInfo2;
        this.cloudCheck = cloudCheck2;
        this.report_feature = i;
        this.uploadFileInfo = uploadFileInfo2;
        this.softState = i2;
        this.actionLevel = i3;
    }

    public final String className() {
        return "QQPIM.AnalyseInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (e) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.featureKey, "featureKey");
        jceDisplayer.display((JceStruct) this.softInfo, "softInfo");
        jceDisplayer.display((JceStruct) this.cloudCheck, "cloudCheck");
        jceDisplayer.display(this.report_feature, "report_feature");
        jceDisplayer.display((JceStruct) this.uploadFileInfo, "uploadFileInfo");
        jceDisplayer.display(this.softState, "softState");
        jceDisplayer.display(this.actionLevel, "actionLevel");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AnalyseInfo analyseInfo = (AnalyseInfo) obj;
        return JceUtil.equals(this.featureKey, analyseInfo.featureKey) && JceUtil.equals(this.softInfo, analyseInfo.softInfo) && JceUtil.equals(this.cloudCheck, analyseInfo.cloudCheck) && JceUtil.equals(this.report_feature, analyseInfo.report_feature) && JceUtil.equals(this.uploadFileInfo, analyseInfo.uploadFileInfo) && JceUtil.equals(this.softState, analyseInfo.softState) && JceUtil.equals(this.actionLevel, analyseInfo.actionLevel);
    }

    public final String fullClassName() {
        return "QQPIM.AnalyseInfo";
    }

    public final int getActionLevel() {
        return this.actionLevel;
    }

    public final CloudCheck getCloudCheck() {
        return this.cloudCheck;
    }

    public final FeatureKey getFeatureKey() {
        return this.featureKey;
    }

    public final int getReport_feature() {
        return this.report_feature;
    }

    public final SoftInfo getSoftInfo() {
        return this.softInfo;
    }

    public final int getSoftState() {
        return this.softState;
    }

    public final UploadFileInfo getUploadFileInfo() {
        return this.uploadFileInfo;
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        if (a == null) {
            a = new FeatureKey();
        }
        this.featureKey = (FeatureKey) jceInputStream.read((JceStruct) a, 0, true);
        if (b == null) {
            b = new SoftInfo();
        }
        this.softInfo = (SoftInfo) jceInputStream.read((JceStruct) b, 1, true);
        if (c == null) {
            c = new CloudCheck();
        }
        this.cloudCheck = (CloudCheck) jceInputStream.read((JceStruct) c, 2, true);
        this.report_feature = jceInputStream.read(this.report_feature, 3, true);
        if (d == null) {
            d = new UploadFileInfo();
        }
        this.uploadFileInfo = (UploadFileInfo) jceInputStream.read((JceStruct) d, 4, false);
        this.softState = jceInputStream.read(this.softState, 5, false);
        this.actionLevel = jceInputStream.read(this.actionLevel, 6, false);
    }

    public final void setActionLevel(int i) {
        this.actionLevel = i;
    }

    public final void setCloudCheck(CloudCheck cloudCheck2) {
        this.cloudCheck = cloudCheck2;
    }

    public final void setFeatureKey(FeatureKey featureKey2) {
        this.featureKey = featureKey2;
    }

    public final void setReport_feature(int i) {
        this.report_feature = i;
    }

    public final void setSoftInfo(SoftInfo softInfo2) {
        this.softInfo = softInfo2;
    }

    public final void setSoftState(int i) {
        this.softState = i;
    }

    public final void setUploadFileInfo(UploadFileInfo uploadFileInfo2) {
        this.uploadFileInfo = uploadFileInfo2;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.featureKey, 0);
        jceOutputStream.write((JceStruct) this.softInfo, 1);
        jceOutputStream.write((JceStruct) this.cloudCheck, 2);
        jceOutputStream.write(this.report_feature, 3);
        if (this.uploadFileInfo != null) {
            jceOutputStream.write((JceStruct) this.uploadFileInfo, 4);
        }
        jceOutputStream.write(this.softState, 5);
        jceOutputStream.write(this.actionLevel, 6);
    }
}
