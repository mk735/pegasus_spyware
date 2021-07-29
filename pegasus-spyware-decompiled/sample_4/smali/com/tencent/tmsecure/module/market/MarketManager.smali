.class public Lcom/tencent/tmsecure/module/market/MarketManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final JCE_EXPAND_KEY:Ljava/lang/String; = "expand"

.field public static final REQUEST_TYPE_CLASSIFIED_SOFTWARE:I = 0x4

.field public static final REQUEST_TYPE_COOPERATE_CATEGORY:I = 0x9

.field public static final REQUEST_TYPE_DAILY_SOFTWARE:I = 0x6

.field public static final REQUEST_TYPE_GAME_SOFTWARE:I = 0x10

.field public static final REQUEST_TYPE_MY_SOFTWARE:I = 0x0

.field public static final REQUEST_TYPE_NECCESSARY_SOFTWARE:I = 0x2

.field public static final REQUEST_TYPE_NEW_PRODUCT:I = 0xa

.field public static final REQUEST_TYPE_PROFESSIONAL_KILLER:I = 0xd

.field public static final REQUEST_TYPE_RELEASE_SOFTWARE:I = 0x7

.field public static final REQUEST_TYPE_ROOT_TOOLS:I = 0xe

.field public static final REQUEST_TYPE_SEARCH_SOFTWARE:I = 0x8

.field public static final REQUEST_TYPE_SOFTWARE_CATEGORY:I = 0x3

.field public static final REQUEST_TYPE_SOFTWARE_DETAILS:I = 0x5

.field public static final REQUEST_TYPE_SOFTWARE_MANAGER:I = 0x1

.field public static final REQUEST_TYPE_SPECIAL_CATEGORY:I = 0xb

.field public static final REQUEST_TYPE_SPECIAL_SOFTWARE:I = 0xc

.field public static final REQUEST_TYPE_WEEKLY_SOFTWARE:I = 0xf

.field public static final RESPONESE_TYPE_FAILED:I = 0x1

.field public static final RESPONESE_TYPE_NETWORK_ERROR:I = 0x2

.field public static final RESPONESE_TYPE_SUCCESS:I

.field public static final SORT_TYPE_NORMAL:I


# instance fields
.field private a:Ltms/dh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateSoftware(LQQPIM/SoftKey;ILcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/SoftKey;",
            "I",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/dh;->a(LQQPIM/SoftKey;ILcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchAdList(Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/ADInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1}, Ltms/dh;->a(Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchAnalyseInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/dh;->a(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchCategoryList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Lcom/tencent/tmsecure/module/market/CategoryEx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2}, Ltms/dh;->a(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchHotWords(LQQPIM/HotWordReqInfo;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2}, Ltms/dh;->a(LQQPIM/HotWordReqInfo;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V

    goto :goto_0
.end method

.method public fetchMySoftwareListInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftKey;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2, p3}, Ltms/dh;->b(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/market/RequestInfo;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2}, Ltms/dh;->b(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method

.method public fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2}, Ltms/dh;->a(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/dh;

    invoke-direct {v0}, Ltms/dh;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1}, Ltms/dh;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/market/MarketManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public refreshStatus()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0}, Ltms/dh;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public reportSoftware(Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
            "<",
            "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/market/MarketManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/MarketManager;->a:Ltms/dh;

    invoke-virtual {v0, p1, p2}, Ltms/dh;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    goto :goto_0
.end method
