package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class UploadFileInfo extends JceStruct implements Cloneable {
    static ArrayList<UploadFile> a;
    static final /* synthetic */ boolean b = (!UploadFileInfo.class.desiredAssertionStatus());
    public String id;
    public ArrayList<UploadFile> vecUploadFile;

    public UploadFileInfo() {
        this.id = "";
        this.vecUploadFile = null;
        this.id = this.id;
        this.vecUploadFile = this.vecUploadFile;
    }

    public UploadFileInfo(String str, ArrayList<UploadFile> arrayList) {
        this.id = "";
        this.vecUploadFile = null;
        this.id = str;
        this.vecUploadFile = arrayList;
    }

    public final String className() {
        return "QQPIM.UploadFileInfo";
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
        jceDisplayer.display((Collection) this.vecUploadFile, "vecUploadFile");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        UploadFileInfo uploadFileInfo = (UploadFileInfo) obj;
        return JceUtil.equals(this.id, uploadFileInfo.id) && JceUtil.equals(this.vecUploadFile, uploadFileInfo.vecUploadFile);
    }

    public final String fullClassName() {
        return "QQPIM.UploadFileInfo";
    }

    public final String getId() {
        return this.id;
    }

    public final ArrayList<UploadFile> getVecUploadFile() {
        return this.vecUploadFile;
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
        this.id = jceInputStream.readString(0, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new UploadFile());
        }
        setVecUploadFile((ArrayList) jceInputStream.read((Object) a, 1, true));
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setVecUploadFile(ArrayList<UploadFile> arrayList) {
        this.vecUploadFile = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write((Collection) this.vecUploadFile, 1);
    }
}
