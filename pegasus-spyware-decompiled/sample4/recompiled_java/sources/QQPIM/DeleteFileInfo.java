package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DeleteFileInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!DeleteFileInfo.class.desiredAssertionStatus());
    public String file;

    public DeleteFileInfo() {
        this.file = "";
        this.file = this.file;
    }

    public DeleteFileInfo(String str) {
        this.file = "";
        this.file = str;
    }

    public final String className() {
        return "QQPIM.DeleteFileInfo";
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
        new JceDisplayer(sb, i).display(this.file, "file");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.file, ((DeleteFileInfo) obj).file);
    }

    public final String fullClassName() {
        return "QQPIM.DeleteFileInfo";
    }

    public final String getFile() {
        return this.file;
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
        this.file = jceInputStream.readString(0, true);
    }

    public final void setFile(String str) {
        this.file = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.file, 0);
    }
}
