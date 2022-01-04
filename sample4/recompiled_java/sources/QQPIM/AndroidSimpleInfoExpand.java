package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class AndroidSimpleInfoExpand extends JceStruct implements Cloneable {
    static ArrayList<String> a;
    static final /* synthetic */ boolean b = (!AndroidSimpleInfoExpand.class.desiredAssertionStatus());
    public ArrayList<String> picurls;
    public String recommend;
    public int sign;
    public String signature;

    public AndroidSimpleInfoExpand() {
        this.recommend = "";
        this.sign = ESoftSignType.SIGN_NONE.value();
        this.signature = "";
        this.picurls = null;
        this.recommend = this.recommend;
        this.sign = this.sign;
        this.signature = this.signature;
        this.picurls = this.picurls;
    }

    public AndroidSimpleInfoExpand(String str, int i, String str2, ArrayList<String> arrayList) {
        this.recommend = "";
        this.sign = ESoftSignType.SIGN_NONE.value();
        this.signature = "";
        this.picurls = null;
        this.recommend = str;
        this.sign = i;
        this.signature = str2;
        this.picurls = arrayList;
    }

    public final String className() {
        return "QQPIM.AndroidSimpleInfoExpand";
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
        jceDisplayer.display(this.recommend, "recommend");
        jceDisplayer.display(this.sign, "sign");
        jceDisplayer.display(this.signature, "signature");
        jceDisplayer.display((Collection) this.picurls, "picurls");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        AndroidSimpleInfoExpand androidSimpleInfoExpand = (AndroidSimpleInfoExpand) obj;
        return JceUtil.equals(this.recommend, androidSimpleInfoExpand.recommend) && JceUtil.equals(this.sign, androidSimpleInfoExpand.sign) && JceUtil.equals(this.signature, androidSimpleInfoExpand.signature) && JceUtil.equals(this.picurls, androidSimpleInfoExpand.picurls);
    }

    public final String fullClassName() {
        return "QQPIM.AndroidSimpleInfoExpand";
    }

    public final ArrayList<String> getPicurls() {
        return this.picurls;
    }

    public final String getRecommend() {
        return this.recommend;
    }

    public final int getSign() {
        return this.sign;
    }

    public final String getSignature() {
        return this.signature;
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
        this.recommend = jceInputStream.readString(0, false);
        this.sign = jceInputStream.read(this.sign, 1, false);
        this.signature = jceInputStream.readString(2, false);
        if (a == null) {
            a = new ArrayList<>();
            a.add("");
        }
        setPicurls((ArrayList) jceInputStream.read((Object) a, 3, false));
    }

    public final void setPicurls(ArrayList<String> arrayList) {
        this.picurls = arrayList;
    }

    public final void setRecommend(String str) {
        this.recommend = str;
    }

    public final void setSign(int i) {
        this.sign = i;
    }

    public final void setSignature(String str) {
        this.signature = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.recommend != null) {
            jceOutputStream.write(this.recommend, 0);
        }
        jceOutputStream.write(this.sign, 1);
        if (this.signature != null) {
            jceOutputStream.write(this.signature, 2);
        }
        if (this.picurls != null) {
            jceOutputStream.write((Collection) this.picurls, 3);
        }
    }
}
