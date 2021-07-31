package com.lenovo.lps.sus.b;

public class c {
    public int a = 0;
    public d b = d.UPDATEACTION_NORMAL;

    public static d c(int i) {
        if (i == d.UPDATEACTION_NORMAL.ordinal()) {
            return d.UPDATEACTION_NORMAL;
        }
        if (i == d.UPDATEACTION_NEWVERPROMPT.ordinal()) {
            return d.UPDATEACTION_NEWVERPROMPT;
        }
        return null;
    }

    public int a() {
        return this.b.ordinal();
    }

    public void a(int i) {
        if (i == d.UPDATEACTION_NORMAL.ordinal()) {
            this.b = d.UPDATEACTION_NORMAL;
        } else if (i == d.UPDATEACTION_NEWVERPROMPT.ordinal()) {
            this.b = d.UPDATEACTION_NEWVERPROMPT;
        }
    }

    public void a(d dVar) {
        this.b = dVar;
    }

    public d b() {
        return this.b;
    }

    public void b(int i) {
        this.a = i;
    }

    public int c() {
        return this.a;
    }
}
