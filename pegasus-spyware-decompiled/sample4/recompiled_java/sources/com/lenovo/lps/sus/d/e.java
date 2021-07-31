package com.lenovo.lps.sus.d;

import android.os.Message;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class e implements a {
    final /* synthetic */ c a;

    e(c cVar) {
        this.a = cVar;
    }

    @Override // com.lenovo.lps.sus.d.a
    public final void a(long j, long j2) {
        if (0 != j2) {
            this.a.i = System.currentTimeMillis();
            this.a.d = 100 * j;
            if (this.a.d > ((long) this.a.e) * j2 && this.a.i >= this.a.h + 400) {
                this.a.f = (int) (this.a.d / j2);
                this.a.g = this.a.f;
                if (this.a.f > 100) {
                    this.a.g = 100;
                    i.b(c.b, "progressNum error!!! downloadSize =" + j + "   fileSize=" + j2 + "   progressNum=" + this.a.f + "   tempProgressNums=" + this.a.g);
                }
                Message message = new Message();
                if (this.a.j != null) {
                    message.what = 1;
                    message.getData().putInt("progressId", 1);
                    message.getData().putInt("progress", this.a.g);
                    i.a(c.b, "downloadSize =" + j + "   fileSize=" + j2 + "   progressNum=" + this.a.f);
                    this.a.j.sendMessage(message);
                }
                this.a.e = this.a.f;
                this.a.h = this.a.i;
            }
        }
    }

    @Override // com.lenovo.lps.sus.d.a
    public final void a(String str) {
        this.a.e = 0;
        Message message = new Message();
        if (this.a.j != null) {
            message.what = 2;
            message.obj = str;
            this.a.j.sendMessage(message);
        }
    }

    @Override // com.lenovo.lps.sus.d.a
    public final void a(boolean z) {
        this.a.e = 0;
        Message message = new Message();
        if (this.a.j != null) {
            message.what = 3;
            message.obj = Boolean.valueOf(z);
            this.a.j.sendMessage(message);
        }
    }
}
