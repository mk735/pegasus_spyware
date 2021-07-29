.class final Ltms/cd;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ltms/cs$a;


# direct methods
.method constructor <init>(Ltms/cs$a;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ltms/cd;->b:Ltms/cs$a;

    iput-object p3, p0, Ltms/cd;->a:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onChange(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltms/cd;->a:Landroid/os/Handler;

    new-instance v2, Ltms/ce;

    invoke-direct {v2, p0, v0}, Ltms/ce;-><init>(Ltms/cd;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
