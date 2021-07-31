package com.tendcloud.tenddata;

import java.util.ArrayList;
import java.util.List;

public class ah implements h, t {
    public String a = "";
    public String b = "";
    public j c = new j();
    public y d = new y();
    public List e = new ArrayList();
    public long f = 0;
    public long g = 0;
    public long h = 0;
    public Long[][] i;

    @Override // com.tendcloud.tenddata.t
    public int a() {
        return p.c(5) + p.c(this.a) + p.c(this.b) + this.c.a() + this.d.a();
    }

    @Override // com.tendcloud.tenddata.h
    public void a(p pVar) {
        pVar.b(6);
        pVar.a(this.a);
        pVar.a(this.b);
        pVar.a(this.c);
        pVar.a(this.d);
        pVar.b(this.e.size());
        for (ag agVar : this.e) {
            pVar.a(agVar);
        }
        if (this.i == null) {
            pVar.b();
            return;
        }
        pVar.b(this.i.length);
        for (Long[] lArr : this.i) {
            pVar.a(lArr);
        }
    }
}
