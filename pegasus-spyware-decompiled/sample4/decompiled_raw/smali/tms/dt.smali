.class public final Ltms/dt;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/dt$a;,
        Ltms/dt$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/tmsecure/common/BaseService;

.field private d:Z

.field private e:J

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Ltms/db;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltms/cz;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

.field private k:Ltms/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltms/dt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/dt;->b:Ljava/lang/String;

    new-instance v0, Ltms/dt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltms/dt$a;-><init>(Ltms/dt;B)V

    iput-object v0, p0, Ltms/dt;->c:Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    new-instance v0, Ltms/dc;

    invoke-direct {v0, p0}, Ltms/dc;-><init>(Ltms/dt;)V

    iput-object v0, p0, Ltms/dt;->j:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    new-instance v0, Ltms/cw;

    invoke-direct {v0}, Ltms/cw;-><init>()V

    iput-object v0, p0, Ltms/dt;->k:Ltms/cw;

    return-void
.end method

.method static synthetic a(Ltms/dt;)I
    .locals 1

    invoke-direct {p0}, Ltms/dt;->i()I

    move-result v0

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/net/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "error"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/proc/net/dev"

    goto :goto_0

    :cond_1
    const-string v0, "/proc/self/net/dev"

    goto :goto_0
.end method

.method static synthetic b(Ltms/dt;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Ltms/dt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/dt;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Ltms/dt;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/dt;->d:Z

    return v0
.end method

.method static synthetic e(Ltms/dt;)J
    .locals 2

    iget-wide v0, p0, Ltms/dt;->e:J

    return-wide v0
.end method

.method private i()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Ltms/dt;->g:Landroid/content/Context;

    sget-object v1, Ltms/dt;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltms/dt;->h:Ltms/db;

    invoke-virtual {v0}, Ltms/db;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Ltms/dt;->f:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Ltms/dt;->e:J

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Ltms/dt;->e:J

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Ltms/dt;->e:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    iget-boolean v0, p0, Ltms/dt;->d:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Ltms/dt;->d:Z

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/cz;

    iget-boolean v3, p0, Ltms/dt;->d:Z

    invoke-virtual {v0, v3}, Ltms/cz;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Ltms/dt;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltms/dt;->c:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Ltms/dt;->c:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3

    const-wide/16 v1, 0x0

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->a([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileUploadBytes(J)V

    return-void
.end method

.method public final a([Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1, p2}, Ltms/cw;->a([Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 3

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ltms/cy;

    iget-object v2, p0, Ltms/dt;->h:Ltms/db;

    invoke-direct {v0, p2, v2}, Ltms/cy;-><init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Ltms/db;)V

    iget-boolean v2, p0, Ltms/dt;->d:Z

    invoke-virtual {v0, v2}, Ltms/cz;->a(Z)V

    iget-object v2, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    new-instance v2, Ltms/cz;

    invoke-direct {v2, p2, p3}, Ltms/cz;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    iget-boolean v3, p0, Ltms/dt;->d:Z

    invoke-virtual {v2, v3}, Ltms/cz;->a(Z)V

    iget-object v3, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ltms/dt;->e:J

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 2

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileUploadBytes(J)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 3

    iget-object v1, p0, Ltms/dt;->i:Ljava/util/Map;

    monitor-enter v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ltms/da;

    iget-object v2, p0, Ltms/dt;->h:Ltms/db;

    invoke-direct {v0, p2, v2}, Ltms/da;-><init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Ltms/db;)V

    iget-boolean v2, p0, Ltms/dt;->d:Z

    invoke-virtual {v0, v2}, Ltms/cz;->a(Z)V

    iget-object v2, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Ltms/dt;->f:I

    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 1

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ltms/dt;->d:Z

    return v0
.end method

.method public final e(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltms/dt;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/dt;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltms/cz;

    invoke-virtual {v0}, Ltms/cz;->notifyConfigChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ltms/dt;->c:Lcom/tencent/tmsecure/common/BaseService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltms/dt;->c:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0}, Ltms/cw;->a()Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/update/UpdateManager;->removeObserver(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Ltms/dt;->k:Ltms/cw;

    invoke-virtual {v0, p1}, Ltms/cw;->e(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileUploadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Ltms/dt;->g:Landroid/content/Context;

    iget-object v0, p0, Ltms/dt;->g:Landroid/content/Context;

    const-string v1, "net_interface_type_traffic_stat.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ltms/dt;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/dt;->b:Ljava/lang/String;

    new-instance v0, Ltms/db;

    iget-object v1, p0, Ltms/dt;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ltms/db;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltms/dt;->h:Ltms/db;

    iget-object v0, p0, Ltms/dt;->h:Ltms/db;

    invoke-virtual {v0}, Ltms/db;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltms/dt;->a(I)V

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0x20

    iget-object v2, p0, Ltms/dt;->j:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method
