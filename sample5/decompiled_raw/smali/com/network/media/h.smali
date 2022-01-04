.class final Lcom/network/media/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/network/media/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/media/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dump innerDump Ack&Send commandAck : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/network/media/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/b/b;->p:Z

    iget-object v0, p0, Lcom/network/media/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/media/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x7d4

    const-string v2, ""

    iget-object v3, p0, Lcom/network/media/h;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/network/media/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/network/media/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/j;->a(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x7d4

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dump innerDump sendDb Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
