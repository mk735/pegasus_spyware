.class public Ltms/gd;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

.field private e:Ltms/en;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/gd;->b:Z

    new-instance v0, Ltms/ev;

    invoke-direct {v0, p0}, Ltms/ev;-><init>(Ltms/gd;)V

    iput-object v0, p0, Ltms/gd;->e:Ltms/en;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/gd;->f:Ljava/util/List;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ltms/gd;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Ltms/gd;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/gd;->b:Z

    return v0
.end method

.method static synthetic b(Ltms/gd;)Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
    .locals 1

    iget-object v0, p0, Ltms/gd;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    return-object v0
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Ltms/gd;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltms/gd;->f:Ljava/util/List;

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    iget-object v0, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    sget v0, Ltms/en;->a:I

    return v0
.end method

.method public a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ltms/gd;->a:Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    iput-boolean p2, p0, Ltms/gd;->b:Z

    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBrightness:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ltms/n;->d(Landroid/content/ContentResolver;)V

    :goto_1
    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mScreenOffTime:I

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_off_timeout"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v0, v2, :cond_b

    invoke-direct {p0, v2}, Ltms/gd;->b(Z)V

    :cond_1
    :goto_2
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v0, v2, :cond_c

    invoke-direct {p0, v2}, Ltms/gd;->a(Z)V

    :cond_2
    :goto_3
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v0, v2, :cond_d

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_3
    :goto_4
    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_e

    move v1, v2

    :goto_5
    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-eq v4, v2, :cond_12

    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    if-ne v4, v5, :cond_4

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Ltms/gd;->c(Z)V

    :cond_4
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Ltms/en;->b:Z

    :cond_5
    :goto_6
    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v2, :cond_10

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v4

    if-nez v4, :cond_10

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Ltms/en;->c:Z

    :cond_6
    :goto_7
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v1, v2, :cond_11

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->enableBluetooth()Z

    sput-boolean v2, Ltms/en;->d:Z

    :cond_7
    :goto_8
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->ANIMATION_STATE_SETTINGS:[I

    iget v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAnimationState:I

    aget v0, v0, v1

    new-instance v1, Ltms/ew;

    invoke-direct {v1}, Ltms/ew;-><init>()V

    invoke-static {}, Ltms/ew;->a()[F

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v4, v1

    if-lt v4, v2, :cond_8

    rem-int/lit8 v4, v0, 0xa

    int-to-float v4, v4

    aput v4, v1, v3

    :cond_8
    if-eqz v1, :cond_9

    array-length v3, v1

    if-lt v3, v5, :cond_9

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    aput v0, v1, v2

    :cond_9
    invoke-static {v1}, Ltms/ew;->a([F)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ltms/n;->c(Landroid/content/ContentResolver;)V

    iget v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBrightness:I

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Ltms/n;->a(ILandroid/content/ContentResolver;)V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    if-ne v0, v5, :cond_1

    invoke-direct {p0, v3}, Ltms/gd;->b(Z)V

    goto/16 :goto_2

    :cond_c
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    if-ne v0, v5, :cond_2

    invoke-direct {p0, v3}, Ltms/gd;->a(Z)V

    goto/16 :goto_3

    :cond_d
    iget-byte v0, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    if-ne v0, v5, :cond_3

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_4

    :cond_e
    move v1, v3

    goto/16 :goto_5

    :cond_f
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    if-ne v1, v5, :cond_5

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Ltms/en;->b:Z

    goto/16 :goto_6

    :cond_10
    iget-byte v4, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    if-ne v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Ltms/en;->c:Z

    goto/16 :goto_7

    :cond_11
    iget-byte v1, p1, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    if-ne v1, v5, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v2, Ltms/en;->d:Z

    goto/16 :goto_8

    :cond_12
    if-nez v1, :cond_13

    invoke-direct {p0, v2}, Ltms/gd;->c(Z)V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    sput-boolean v2, Ltms/en;->b:Z

    :cond_14
    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-eqz v1, :cond_15

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    sput-boolean v2, Ltms/en;->c:Z

    :cond_15
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->disableBluetooth()Z

    sput-boolean v2, Ltms/en;->d:Z

    goto/16 :goto_8
.end method

.method public a(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 2

    iget-object v0, p0, Ltms/gd;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized b()Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltms/gd;->d:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

    if-nez v0, :cond_0

    new-instance v0, Ltms/et;

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltms/et;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltms/gd;->d:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;

    :cond_0
    iget-object v0, p0, Ltms/gd;->d:Lcom/tencent/tmsecure/module/powersaving/IBatteryInfoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ltms/gd;->f:Ljava/util/List;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Ltms/gd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Ltms/gd;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object v1, p0, Ltms/gd;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Ltms/gd;->c:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Ltms/gd;->c:Landroid/content/Context;

    iget-object v2, p0, Ltms/gd;->e:Ltms/en;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
