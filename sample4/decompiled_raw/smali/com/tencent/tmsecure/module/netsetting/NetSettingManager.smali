.class public Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final APN_TYPE_NET:I = 0x0

.field public static final APN_TYPE_NULL:I = -0x1

.field public static final APN_TYPE_WAP:I = 0x1


# instance fields
.field private a:Ltms/dl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public disableBluetooth()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public enableBluetooth()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public getAPNType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApnState()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->m()Z

    move-result v0

    return v0
.end method

.method public getBluetoothState()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->h()I

    move-result v0

    return v0
.end method

.method public getCurUsedApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurUsedApnType()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->l()I

    move-result v0

    return v0
.end method

.method public getMobileDataConnectivity()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->i()Z

    move-result v0

    return v0
.end method

.method public getWifiRssi()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->d()I

    move-result v0

    return v0
.end method

.method public getWifiState()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->c()I

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->e()Z

    move-result v0

    return v0
.end method

.method public isMobileDataConnectivityActive()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->j()Z

    move-result v0

    return v0
.end method

.method public isWifiActive()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->a()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0}, Ltms/dl;->b()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/dl;

    invoke-direct {v0}, Ltms/dl;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setApnState(Z)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->c(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMobileDataConnectivity(Z)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->b(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public switchTo(I)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Ltms/dl;

    invoke-virtual {v0, p1}, Ltms/dl;->a(I)Z

    move-result v0

    goto :goto_0
.end method
