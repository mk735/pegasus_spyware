.class public final Lcom/tencent/tmsecure/module/netsetting/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getApnState()Z

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setApnState(Z)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getAPNType(Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getCurUsedApn()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setApnState(Z)Z

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->switchTo(I)Z

    return-void
.end method
