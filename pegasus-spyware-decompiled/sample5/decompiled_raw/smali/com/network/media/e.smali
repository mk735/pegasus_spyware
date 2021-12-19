.class final Lcom/network/media/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/network/media/CoreReceiver;


# direct methods
.method constructor <init>(Lcom/network/media/CoreReceiver;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/media/e;->d:Lcom/network/media/CoreReceiver;

    iput-object p2, p0, Lcom/network/media/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/network/media/e;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/network/media/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/network/media/e;->d:Lcom/network/media/CoreReceiver;

    iget-object v0, p0, Lcom/network/media/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/network/media/e;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/network/media/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/network/media/CoreReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive resendingHandler Exception- "

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
