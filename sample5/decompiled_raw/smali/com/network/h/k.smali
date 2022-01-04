.class final Lcom/network/h/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lcom/network/h/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/network/h/j;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "downloadUpgradePackage not allowed to download data. canSend is false"

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadUpgradePackage downloading package. downloadCounter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/h/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/h/j;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uglmt.dat"

    const-string v2, "/data/data/com.network.android/upgrade/"

    invoke-static {v0, v1, v2}, Lcom/network/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadUpgradePackage download package result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/network/h/j;->g()Z

    invoke-static {}, Lcom/network/h/j;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/network/media/CoreReceiver;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/network/h/j;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/16 v1, 0x57

    const-string v2, "LOG_UPGRADE_BUNDLE_DOWNLOAD_SUCCEEDED"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    invoke-static {}, Lcom/network/h/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/network/h/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/network/h/j;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/network/h/j;->a(ZLandroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadUpgradePackage exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/network/h/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5, v0, v4, v4}, Lcom/network/h/j;->a(ZLandroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/16 v1, 0x56

    :try_start_1
    const-string v2, "LOG_UPGRADE_BUNDLE_DOWNLOAD_FAILED"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
