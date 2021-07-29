.class public final Lcom/tencent/tmsecure/module/network/NetworkManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final INTERVAL_FOR_BACKGROUND:I = 0x0

.field public static final INTERVAL_FOR_REALTIME:I = 0x2

.field public static final INTERVAL_FOR_UI:I = 0x1


# instance fields
.field private a:Ltms/dt;

.field private b:Ltms/dv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2}, Ltms/dt;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2}, Ltms/dt;->b(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final addMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2, p3}, Ltms/dt;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final clearTrafficInfo([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dv;

    if-nez v0, :cond_0

    new-instance v0, Ltms/dv;

    invoke-direct {v0}, Ltms/dv;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dv;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Ltms/dv;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInterval()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getIntervalType()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->c()I

    move-result v0

    return v0
.end method

.method public final getMobileRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getMobileTxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSelfMobileDownloadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSelfMobileUploadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getTrafficEntity(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->c(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getWIFIRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->f(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getWIFITxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->g(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final isEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public final isSupportTrafficState()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final notifyConfigChange()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0}, Ltms/dt;->e()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/dt;

    invoke-direct {v0}, Ltms/dt;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2}, Ltms/dt;->a([Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final removeMonitor(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->a(Z)V

    goto :goto_0
.end method

.method public final setInterval(I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1}, Ltms/dt;->a(I)V

    goto :goto_0
.end method

.method public final updateSelfMobileDownloadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2}, Ltms/dt;->a(J)V

    goto :goto_0
.end method

.method public final updateSelfMobileUploadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Ltms/dt;

    invoke-virtual {v0, p1, p2}, Ltms/dt;->b(J)V

    goto :goto_0
.end method
