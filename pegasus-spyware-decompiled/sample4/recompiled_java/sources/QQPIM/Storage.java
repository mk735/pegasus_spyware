package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Storage extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!Storage.class.desiredAssertionStatus());
    public int memory;
    public int ram;
    public int sdcard;

    public Storage() {
        this.ram = 0;
        this.memory = 0;
        this.sdcard = 0;
        this.ram = this.ram;
        this.memory = this.memory;
        this.sdcard = this.sdcard;
    }

    public Storage(int i, int i2, int i3) {
        this.ram = 0;
        this.memory = 0;
        this.sdcard = 0;
        this.ram = i;
        this.memory = i2;
        this.sdcard = i3;
    }

    public final String className() {
        return "QQPIM.Storage";
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
        jceDisplayer.display(this.ram, "ram");
        jceDisplayer.display(this.memory, "memory");
        jceDisplayer.display(this.sdcard, "sdcard");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Storage storage = (Storage) obj;
        return JceUtil.equals(this.ram, storage.ram) && JceUtil.equals(this.memory, storage.memory) && JceUtil.equals(this.sdcard, storage.sdcard);
    }

    public final String fullClassName() {
        return "QQPIM.Storage";
    }

    public final int getMemory() {
        return this.memory;
    }

    public final int getRam() {
        return this.ram;
    }

    public final int getSdcard() {
        return this.sdcard;
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
        this.ram = jceInputStream.read(this.ram, 0, true);
        this.memory = jceInputStream.read(this.memory, 1, true);
        this.sdcard = jceInputStream.read(this.sdcard, 2, true);
    }

    public final void setMemory(int i) {
        this.memory = i;
    }

    public final void setRam(int i) {
        this.ram = i;
    }

    public final void setSdcard(int i) {
        this.sdcard = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.ram, 0);
        jceOutputStream.write(this.memory, 1);
        jceOutputStream.write(this.sdcard, 2);
    }
}
