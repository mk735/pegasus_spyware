package com.tendcloud.tenddata;

public class w implements h, l {
    public long a = 0;
    public int b = 1;
    public String c = "";
    public byte[] d = new byte[0];
    public String e = "";

    @Override // com.tendcloud.tenddata.l
    public int a() {
        return p.c(5) + p.c(this.a) + p.c(this.b) + p.c(this.c) + p.b(this.d) + p.c(this.e);
    }

    @Override // com.tendcloud.tenddata.h
    public void a(p pVar) {
        pVar.b(5);
        pVar.a(this.a);
        pVar.a(this.b);
        pVar.a(this.c);
        pVar.a(this.d);
        pVar.a(this.e);
    }
}
