.class public final Ltms/gm;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/gm$a;,
        Ltms/gm$b;,
        Ltms/gm$c;
    }
.end annotation


# instance fields
.field private a:Ltms/gm$a;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method static synthetic a(Ltms/gm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ltms/gm;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/gm;->a:Ltms/gm$a;

    invoke-virtual {v0, p1}, Ltms/gm$a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Ltms/gm;->a:Ltms/gm$a;

    invoke-virtual {v0}, Ltms/gm$a;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-class v1, Ltms/gm$b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/gm;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/gm;->b:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)V
    .locals 3

    iget-object v0, p0, Ltms/gm;->a:Ltms/gm$a;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gm$a;->a(Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)Z

    const-class v1, Ltms/gm$b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ltms/gm;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Ltms/gm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Ltms/gm$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ltms/gm$b;-><init>(Ltms/gm;Landroid/os/Looper;)V

    iput-object v2, p0, Ltms/gm;->b:Landroid/os/Handler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gm$a;

    invoke-direct {v0, p0}, Ltms/gm$a;-><init>(Ltms/gm;)V

    iput-object v0, p0, Ltms/gm;->a:Ltms/gm$a;

    return-void
.end method
