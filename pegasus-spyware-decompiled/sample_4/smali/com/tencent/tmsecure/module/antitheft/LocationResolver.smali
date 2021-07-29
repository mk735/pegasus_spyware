.class public final Lcom/tencent/tmsecure/module/antitheft/LocationResolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;
    }
.end annotation


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Z

.field private c:Z

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

.field private g:Z

.field private h:[B

.field private final i:Landroid/location/LocationListener;

.field private final j:Landroid/location/LocationListener;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b:Z

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c:Z

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->g:Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->h:[B

    new-instance v0, Ltms/aq;

    invoke-direct {v0, p0}, Ltms/aq;-><init>(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->i:Landroid/location/LocationListener;

    new-instance v0, Ltms/ar;

    invoke-direct {v0, p0}, Ltms/ar;-><init>(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->j:Landroid/location/LocationListener;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->j:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;->gotLocation(Landroid/location/Location;)V

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->h:[B

    return-object v0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->h:[B

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->g:Z

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static synthetic b(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a()V

    return-void
.end method

.method public static synthetic d(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->j:Landroid/location/LocationListener;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->i:Landroid/location/LocationListener;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;I)Z
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->f:Lcom/tencent/tmsecure/module/antitheft/LocationResolver$LocCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->g:Z

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    monitor-exit p0

    return v0

    :cond_1
    :try_start_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "location"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Ltms/ap;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltms/ap;-><init>(Lcom/tencent/tmsecure/module/antitheft/LocationResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tmsecure/module/antitheft/LocationResolver;->j:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
