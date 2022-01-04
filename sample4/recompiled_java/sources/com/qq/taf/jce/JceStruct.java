package com.qq.taf.jce;

import java.io.Serializable;

public abstract class JceStruct implements Serializable {
    public boolean containField(String str) {
        return false;
    }

    public abstract void display(StringBuilder sb, int i);

    public Object getFieldByName(String str) {
        return null;
    }

    public JceStruct newInit() {
        return null;
    }

    public abstract void readFrom(JceInputStream jceInputStream);

    public void recyle() {
    }

    public void setFieldByName(String str, Object obj) {
    }

    public byte[] toByteArray() {
        JceOutputStream jceOutputStream = new JceOutputStream();
        writeTo(jceOutputStream);
        return jceOutputStream.toByteArray();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        display(sb, 0);
        return sb.toString();
    }

    public abstract void writeTo(JceOutputStream jceOutputStream);
}
