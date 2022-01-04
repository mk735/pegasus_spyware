package com.tendcloud.tenddata;

import java.util.ArrayList;
import java.util.List;

public class b implements h, l {
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public String a = "";
    public long b = 0;
    public int c = 0;
    public int g = 0;
    public List h = new ArrayList();
    public List i = new ArrayList();
    public int j = 0;
    public int k = 0;

    @Override // com.tendcloud.tenddata.l
    public int a() {
        int c2 = p.c(7) + p.c(this.a) + p.c(this.b) + p.c(this.c) + p.c(this.g) + p.c(this.k) + p.c(this.h.size());
        for (z zVar : this.h) {
            c2 = zVar.a() + c2;
        }
        int c3 = p.c(this.i.size()) + c2;
        for (af afVar : this.i) {
            c3 = afVar.a() + c3;
        }
        return c3;
    }

    @Override // com.tendcloud.tenddata.h
    public void a(p pVar) {
        pVar.b(7);
        pVar.a(this.a);
        pVar.a(this.b);
        pVar.a(this.c);
        pVar.a(this.g);
        pVar.b(this.h.size());
        for (z zVar : this.h) {
            pVar.a(zVar);
        }
        pVar.b(this.i.size());
        for (af afVar : this.i) {
            pVar.a(afVar);
        }
        pVar.a(this.k);
    }
}
