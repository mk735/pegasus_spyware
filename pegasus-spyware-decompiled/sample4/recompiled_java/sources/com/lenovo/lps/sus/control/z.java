package com.lenovo.lps.sus.control;

import android.os.Handler;
import android.os.Message;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

public class z extends Thread {
    private Handler a = null;
    private String b = null;

    public z(Handler handler, String str) {
        this.a = handler;
        this.b = str;
    }

    public void run() {
        if (this.b == null) {
            i.b(c.b, "myReqAppNewVersionURL == null!!");
            return;
        }
        String a2 = c.a(this.b, (Boolean) true, 5000);
        if (a2 == null || a2.length() <= 0 || !a2.startsWith(c.R)) {
            if (a2 != null && ((a2 == null || a2.length() > 0) && !a2.contains("<html>"))) {
                a2.contains("<head>");
            }
            if (this.a != null) {
                Message message = new Message();
                message.what = b.a(b.SUS_QUERY_EXCEPTION_EVENT);
                message.obj = null;
                this.a.sendMessage(message);
            }
        } else if (this.a != null) {
            Message message2 = new Message();
            message2.what = b.a(b.SUS_REQNEWAPPVERSION_RESPONE_EVENT);
            message2.obj = a2;
            this.a.sendMessage(message2);
        }
    }
}
