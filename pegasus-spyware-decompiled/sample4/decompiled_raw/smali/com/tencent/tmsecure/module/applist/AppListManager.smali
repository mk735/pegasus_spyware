.class public Lcom/tencent/tmsecure/module/applist/AppListManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;LQQPIM/SoftListType;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/applist/AppListManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Ltms/as;

    invoke-virtual {v0, p1, p2}, Ltms/as;->a(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/as;

    invoke-direct {v0}, Ltms/as;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Ltms/as;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Ltms/as;

    invoke-virtual {v0, p1}, Ltms/as;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Ltms/as;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/applist/AppListManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
