package com.lenovo.lps.sus.c;

public class d implements Comparable {
    public String a;
    public long b;
    public long c;
    public int d;

    /* renamed from: a */
    public int compareTo(d dVar) {
        return (dVar != null && this.c - dVar.c <= 0) ? -1 : 1;
    }
}
