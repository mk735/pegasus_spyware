.class public final Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gd;

.field private b:Ltms/gc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getBatteryInfoHelper()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/gc;

    if-nez v0, :cond_0

    new-instance v0, Ltms/gc;

    invoke-direct {v0}, Ltms/gc;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/gc;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->b:Ltms/gc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0}, Ltms/gd;->b()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getBatteryLevel()I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0}, Ltms/gd;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gd;

    invoke-direct {v0}, Ltms/gd;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0, p1}, Ltms/gd;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final registerPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0, p1}, Ltms/gd;->a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method

.method public final setPowerSavingConfig(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0, p1, p2}, Ltms/gd;->a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V

    goto :goto_0
.end method

.method public final unRegisterPowerSavingEventListener(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingManager;->a:Ltms/gd;

    invoke-virtual {v0, p1}, Ltms/gd;->b(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method
