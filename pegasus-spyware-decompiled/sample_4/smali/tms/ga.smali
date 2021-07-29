.class public Ltms/ga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

.field final synthetic b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V
    .locals 0

    iput-object p1, p0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iput-object p2, p0, Ltms/ga;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ltms/ga;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltms/ga;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    new-instance v1, Ltms/eu;

    invoke-direct {v1, p0}, Ltms/eu;-><init>(Ltms/ga;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ltms/ga;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a:Z

    if-nez v0, :cond_3

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    const/4 v0, 0x1

    sput-boolean v0, Ltms/en;->d:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
