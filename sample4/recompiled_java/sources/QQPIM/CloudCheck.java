package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCheck extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!CloudCheck.class.desiredAssertionStatus());
    public String advice;
    public String descritpion;
    public int handleAdvice;
    public String handleUrl;
    public int safeType;
    public String short_desc;
    public int virusDescTimestamp;
    public int virusID;
    public String virusName;

    public CloudCheck() {
        this.safeType = 0;
        this.virusName = "";
        this.descritpion = "";
        this.virusDescTimestamp = 0;
        this.short_desc = "";
        this.advice = "";
        this.handleAdvice = 0;
        this.virusID = 0;
        this.handleUrl = "";
        this.safeType = this.safeType;
        this.virusName = this.virusName;
        this.descritpion = this.descritpion;
        this.virusDescTimestamp = this.virusDescTimestamp;
        this.short_desc = this.short_desc;
        this.advice = this.advice;
        this.handleAdvice = this.handleAdvice;
        this.virusID = this.virusID;
        this.handleUrl = this.handleUrl;
    }

    public CloudCheck(int i, String str, String str2, int i2, String str3, String str4, int i3, int i4, String str5) {
        this.safeType = 0;
        this.virusName = "";
        this.descritpion = "";
        this.virusDescTimestamp = 0;
        this.short_desc = "";
        this.advice = "";
        this.handleAdvice = 0;
        this.virusID = 0;
        this.handleUrl = "";
        this.safeType = i;
        this.virusName = str;
        this.descritpion = str2;
        this.virusDescTimestamp = i2;
        this.short_desc = str3;
        this.advice = str4;
        this.handleAdvice = i3;
        this.virusID = i4;
        this.handleUrl = str5;
    }

    public final String className() {
        return "QQPIM.CloudCheck";
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
        jceDisplayer.display(this.safeType, "safeType");
        jceDisplayer.display(this.virusName, "virusName");
        jceDisplayer.display(this.descritpion, "descritpion");
        jceDisplayer.display(this.virusDescTimestamp, "virusDescTimestamp");
        jceDisplayer.display(this.short_desc, "short_desc");
        jceDisplayer.display(this.advice, "advice");
        jceDisplayer.display(this.handleAdvice, "handleAdvice");
        jceDisplayer.display(this.virusID, "virusID");
        jceDisplayer.display(this.handleUrl, "handleUrl");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudCheck cloudCheck = (CloudCheck) obj;
        return JceUtil.equals(this.safeType, cloudCheck.safeType) && JceUtil.equals(this.virusName, cloudCheck.virusName) && JceUtil.equals(this.descritpion, cloudCheck.descritpion) && JceUtil.equals(this.virusDescTimestamp, cloudCheck.virusDescTimestamp) && JceUtil.equals(this.short_desc, cloudCheck.short_desc) && JceUtil.equals(this.advice, cloudCheck.advice) && JceUtil.equals(this.handleAdvice, cloudCheck.handleAdvice) && JceUtil.equals(this.virusID, cloudCheck.virusID) && JceUtil.equals(this.handleUrl, cloudCheck.handleUrl);
    }

    public final String fullClassName() {
        return "QQPIM.CloudCheck";
    }

    public final String getAdvice() {
        return this.advice;
    }

    public final String getDescritpion() {
        return this.descritpion;
    }

    public final int getHandleAdvice() {
        return this.handleAdvice;
    }

    public final String getHandleUrl() {
        return this.handleUrl;
    }

    public final int getSafeType() {
        return this.safeType;
    }

    public final String getShort_desc() {
        return this.short_desc;
    }

    public final int getVirusDescTimestamp() {
        return this.virusDescTimestamp;
    }

    public final int getVirusID() {
        return this.virusID;
    }

    public final String getVirusName() {
        return this.virusName;
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
        this.safeType = jceInputStream.read(this.safeType, 0, true);
        this.virusName = jceInputStream.readString(1, false);
        this.descritpion = jceInputStream.readString(2, false);
        this.virusDescTimestamp = jceInputStream.read(this.virusDescTimestamp, 3, false);
        this.short_desc = jceInputStream.readString(4, false);
        this.advice = jceInputStream.readString(5, false);
        this.handleAdvice = jceInputStream.read(this.handleAdvice, 6, false);
        this.virusID = jceInputStream.read(this.virusID, 7, false);
        this.handleUrl = jceInputStream.readString(8, false);
    }

    public final void setAdvice(String str) {
        this.advice = str;
    }

    public final void setDescritpion(String str) {
        this.descritpion = str;
    }

    public final void setHandleAdvice(int i) {
        this.handleAdvice = i;
    }

    public final void setHandleUrl(String str) {
        this.handleUrl = str;
    }

    public final void setSafeType(int i) {
        this.safeType = i;
    }

    public final void setShort_desc(String str) {
        this.short_desc = str;
    }

    public final void setVirusDescTimestamp(int i) {
        this.virusDescTimestamp = i;
    }

    public final void setVirusID(int i) {
        this.virusID = i;
    }

    public final void setVirusName(String str) {
        this.virusName = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.safeType, 0);
        if (this.virusName != null) {
            jceOutputStream.write(this.virusName, 1);
        }
        if (this.descritpion != null) {
            jceOutputStream.write(this.descritpion, 2);
        }
        jceOutputStream.write(this.virusDescTimestamp, 3);
        if (this.short_desc != null) {
            jceOutputStream.write(this.short_desc, 4);
        }
        if (this.advice != null) {
            jceOutputStream.write(this.advice, 5);
        }
        jceOutputStream.write(this.handleAdvice, 6);
        jceOutputStream.write(this.virusID, 7);
        if (this.handleUrl != null) {
            jceOutputStream.write(this.handleUrl, 8);
        }
    }
}
