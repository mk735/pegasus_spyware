.class final Lcom/network/android/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/network/android/a/l;->a:J

    iput-object p1, p0, Lcom/network/android/a/l;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/network/android/a/l;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/network/android/a/l;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ping HTTP httpPingDelay exec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/network/android/a/l;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/a/l;->b:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/network/android/a/l;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/network/android/a/l;->c:Z

    iget-boolean v3, p0, Lcom/network/android/a/l;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;[BZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/network/android/a/l;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/network/android/a/l;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/a/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "httpPing"

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
