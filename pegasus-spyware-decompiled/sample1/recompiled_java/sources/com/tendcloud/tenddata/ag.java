package com.tendcloud.tenddata;

import java.io.IOException;

public class ag implements h {
    public int a = -1;
    public b b;
    public m c;
    public w d;

    @Override // com.tendcloud.tenddata.h
    public void a(p pVar) {
        pVar.b(2);
        pVar.a(this.a);
        switch (this.a) {
            case 1:
                pVar.a(this.c);
                return;
            case 2:
                pVar.a(this.b);
                return;
            case 3:
                pVar.a(this.d);
                return;
            default:
                throw new IOException("unknown TMessageType");
        }
    }
}
