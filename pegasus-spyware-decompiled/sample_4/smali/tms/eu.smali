.class final Ltms/eu;
.super Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;


# instance fields
.field final synthetic a:Ltms/ga;


# direct methods
.method constructor <init>(Ltms/ga;)V
    .locals 0

    iput-object p1, p0, Ltms/eu;->a:Ltms/ga;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final ScanFinish(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v5, 0x493e0

    const/4 v1, 0x1

    iget-object v0, p0, Ltms/eu;->a:Ltms/ga;

    iget-object v0, v0, Ltms/ga;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iget v0, v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v1, Ltms/en;->d:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/eu;->a:Ltms/ga;

    iget-object v0, v0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltms/eu;->a:Ltms/ga;

    iget-object v1, v1, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v1, Ltms/en;->d:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ltms/eu;->a:Ltms/ga;

    iget-object v0, v0, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltms/eu;->a:Ltms/ga;

    iget-object v1, v1, Ltms/ga;->b:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
