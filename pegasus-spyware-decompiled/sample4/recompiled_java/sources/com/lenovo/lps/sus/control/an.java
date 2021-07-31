package com.lenovo.lps.sus.control;

import android.os.Handler;
import android.os.Message;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.c.c;

public class an extends Thread {
    private Handler a = null;

    public an(Handler handler) {
        this.a = handler;
    }

    public void run() {
        String a2 = c.a(c.W, (Boolean) true, 3000);
        String str = (a2 == null || a2.length() <= 0 || !"OK".equals(a2)) ? "FAIL" : c.S;
        Message message = new Message();
        if (this.a != null) {
            message.what = b.a(b.SUS_TESTSUSSERVER_EVENT);
            message.obj = str;
            this.a.sendMessage(message);
        }
    }
}
