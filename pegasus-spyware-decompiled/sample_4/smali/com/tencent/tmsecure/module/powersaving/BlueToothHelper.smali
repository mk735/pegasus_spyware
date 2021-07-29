.class public Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;
    }
.end annotation


# static fields
.field private static final g:I = 0x493e0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static n:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/Runnable;

.field private m:Z

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlueToothHelper"

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a:Z

    new-instance v0, Ltms/fz;

    invoke-direct {v0, p0}, Ltms/fz;-><init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->o:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
    .locals 2

    const-class v1, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->n:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->n:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->n:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->f:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    iput-object p1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->f:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-object v2, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->m:Z

    return-void
.end method

.method public a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    new-instance v0, Ltms/ga;

    invoke-direct {v0, p0, p1}, Ltms/ga;-><init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->m:Z

    goto :goto_0
.end method
