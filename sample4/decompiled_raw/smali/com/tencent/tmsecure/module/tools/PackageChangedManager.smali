.class public final Lcom/tencent/tmsecure/module/tools/PackageChangedManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->a:Ltms/gn;

    invoke-virtual {v0, p1}, Ltms/gn;->a(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gn;

    invoke-direct {v0}, Ltms/gn;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->a:Ltms/gn;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->a:Ltms/gn;

    invoke-virtual {v0, p1}, Ltms/gn;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->a:Ltms/gn;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->a:Ltms/gn;

    invoke-virtual {v0, p1}, Ltms/gn;->b(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    move-result-object v0

    goto :goto_0
.end method
