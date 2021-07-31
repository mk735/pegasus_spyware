.class public final Ltms/gn;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/gn$b;,
        Ltms/gn$d;,
        Ltms/gn$c;,
        Ltms/gn$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltms/gn$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tmsecure/common/BaseService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltms/gn;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Ltms/gn;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltms/gn;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Ltms/gn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/gn;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Ltms/gn;->a:Ljava/util/List;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ltms/gn$b;

    invoke-direct {v1, p1}, Ltms/gn$b;-><init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Ltms/gn;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Ltms/gn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 3

    new-instance v0, Ltms/gn$b;

    invoke-direct {v0, p1}, Ltms/gn$b;-><init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V

    iget-object v1, p0, Ltms/gn;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ltms/gn;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltms/gn;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v1

    goto :goto_0

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
    .locals 2

    iput-object p1, p0, Ltms/gn;->b:Landroid/content/Context;

    new-instance v0, Ltms/gn$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltms/gn$c;-><init>(Ltms/gn;B)V

    iput-object v0, p0, Ltms/gn;->c:Lcom/tencent/tmsecure/common/BaseService;

    iget-object v0, p0, Ltms/gn;->c:Lcom/tencent/tmsecure/common/BaseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    return-void
.end method
