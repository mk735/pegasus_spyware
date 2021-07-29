.class public final Lcom/tencent/tmsecure/module/update/UpdateManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0}, Ltms/gy;->a()V

    return-void
.end method

.method public final check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    return-void
.end method

.method public final getFileSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0}, Ltms/gy;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gy;

    invoke-direct {v0}, Ltms/gy;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/update/UpdateManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final removeObserver(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0, p1}, Ltms/gy;->a(I)V

    return-void
.end method

.method public final update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;",
            "Lcom/tencent/tmsecure/module/update/IUpdateListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Ltms/gy;

    invoke-virtual {v0, p1, p2}, Ltms/gy;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    return-void
.end method
