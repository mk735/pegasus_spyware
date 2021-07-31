.class public Ltms/fz;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)V
    .locals 0

    iput-object p1, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start to scan"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "found device"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan finish"

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

    move-result-object v0

    iget-object v1, p0, Ltms/fz;->a:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;->ScanFinish(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
