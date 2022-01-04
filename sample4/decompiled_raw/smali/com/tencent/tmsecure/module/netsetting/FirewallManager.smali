.class public Lcom/tencent/tmsecure/module/netsetting/FirewallManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final FEATURE_CAN_NOT_USE:I = 0x0

.field public static final FEATURE_CAN_USE:I = 0x1

.field public static final FEATURE_CAN_VIP:I = 0x2


# instance fields
.field private a:Ltms/dj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0}, Ltms/dj;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public getFeature()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0}, Ltms/dj;->a()I

    move-result v0

    return v0
.end method

.method public getRules(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->a(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0}, Ltms/dj;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/dj;

    invoke-direct {v0}, Ltms/dj;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->a(Z)V

    goto :goto_0
.end method

.method public setRule(Lcom/tencent/tmsecure/module/netsetting/Rule;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->a(Lcom/tencent/tmsecure/module/netsetting/Rule;)V

    goto :goto_0
.end method

.method public setRules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/netsetting/Rule;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->a:Ltms/dj;

    invoke-virtual {v0, p1}, Ltms/dj;->b(Ljava/util/List;)V

    goto :goto_0
.end method
