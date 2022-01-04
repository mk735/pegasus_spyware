.class public final Lcom/tencent/tmsecure/module/optimize/OptimizeManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ek;

.field private b:Ltms/eh;

.field private c:Ltms/ej;

.field private d:Ltms/ei;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeProcess(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0, p1}, Ltms/ek;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/lang/String;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0, p1, p2, p3}, Ltms/ek;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0, p1}, Ltms/ek;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/util/List;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public final getAllRunningProcess(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0, p1}, Ltms/ek;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/eh;

    if-nez v0, :cond_0

    new-instance v0, Ltms/eh;

    invoke-direct {v0}, Ltms/eh;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/eh;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Ltms/eh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0}, Ltms/ek;->a()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCpuHelper()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0}, Ltms/ek;->c()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ei;

    if-nez v1, :cond_0

    new-instance v1, Ltms/ei;

    invoke-direct {v1, v0}, Ltms/ei;-><init>(Lcom/tencent/tmsecure/module/optimize/ICpuHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ei;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Ltms/ei;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0}, Ltms/ek;->c()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0}, Ltms/ek;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ej;

    if-nez v1, :cond_0

    new-instance v1, Ltms/ej;

    invoke-direct {v1, v0}, Ltms/ej;-><init>(Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ej;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Ltms/ej;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0}, Ltms/ek;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ek;

    invoke-direct {v0}, Ltms/ek;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {v0, p1}, Ltms/ek;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Ltms/ek;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
