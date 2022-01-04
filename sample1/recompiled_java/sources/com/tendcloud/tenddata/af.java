package com.tendcloud.tenddata;

import java.util.Map;

public class af implements h, l {
    public String a = "";
    public String b = "";
    public int c = 0;
    public long d;
    public Map e;

    @Override // com.tendcloud.tenddata.l
    public int a() {
        return p.c(3) + p.c(this.a) + p.c(this.b) + p.c(this.c);
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
