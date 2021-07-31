package com.lenovo.lps.sus.d;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import com.lenovo.lps.sus.control.ae;
import com.lenovo.safecenter.database.AppDatabase;

/* access modifiers changed from: package-private */
public final class d extends Handler {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public final void handleMessage(Message message) {
        if (message != null) {
            switch (message.what) {
                case 1:
                    int i = message.getData().getInt("progress");
                    if (this.a.a != null && !c.x() && !ae.g()) {
                        i.a(c.b, "notifyUpdate");
                        this.a.a.a(i);
                        return;
                    }
                    return;
                case 2:
                    Intent intent = new Intent("com.lenovo.lps.sus.ACTION_UPDATE");
                    Bundle bundle = new Bundle();
                    bundle.putString("filename", (String) message.obj);
                    String str = null;
                    if (this.a.b != null) {
                        str = c.g(this.a.b);
                    }
                    bundle.putString(AppDatabase.APP_PKG_NAME, str);
                    intent.putExtras(bundle);
                    if (this.a.b != null) {
                        this.a.b.sendBroadcast(intent);
                    }
                    if (this.a.a != null && !c.x() && !ae.g()) {
                        this.a.a.b();
                        return;
                    }
                    return;
                case 3:
                    boolean booleanValue = ((Boolean) message.obj).booleanValue();
                    if (this.a.a != null) {
                        this.a.a.a(booleanValue);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
