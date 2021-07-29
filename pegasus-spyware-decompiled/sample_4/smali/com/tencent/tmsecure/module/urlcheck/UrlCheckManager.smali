.class public final Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/ha;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkApkUrl(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    invoke-virtual {v0, p1}, Ltms/ha;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final checkUrl(Ljava/lang/String;)LQQPIM/UrlCheckResponse;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    invoke-virtual {v0, p1}, Ltms/ha;->a(Ljava/lang/String;)LQQPIM/UrlCheckResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final checkUrlEx(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LQQPIM/UrlCheckResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    invoke-virtual {v0, p1}, Ltms/ha;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/ha;

    invoke-direct {v0}, Ltms/ha;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    invoke-virtual {v0, p1}, Ltms/ha;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->a:Ltms/ha;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
