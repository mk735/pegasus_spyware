package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ExecShell extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ExecShell.class.desiredAssertionStatus());
    public String shellcmd;

    public ExecShell() {
        this.shellcmd = "";
        this.shellcmd = this.shellcmd;
    }

    public ExecShell(String str) {
        this.shellcmd = "";
        this.shellcmd = str;
    }

    public final String className() {
        return "QQPIM.ExecShell";
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
        new JceDisplayer(sb, i).display(this.shellcmd, "shellcmd");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.shellcmd, ((ExecShell) obj).shellcmd);
    }

    public final String fullClassName() {
        return "QQPIM.ExecShell";
    }

    public final String getShellcmd() {
        return this.shellcmd;
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
        this.shellcmd = jceInputStream.readString(0, true);
    }

    public final void setShellcmd(String str) {
        this.shellcmd = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.shellcmd, 0);
    }
}
