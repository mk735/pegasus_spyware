.class public final Ltms/dh;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v0

    invoke-virtual {v0, v2}, LQQPIM/SoftKey;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LQQPIM/SoftInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getFeatureKey()LQQPIM/FeatureKey;

    move-result-object v0

    invoke-virtual {v0, v2}, LQQPIM/FeatureKey;->setSoftName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(LQQPIM/HotWordReqInfo;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v0, LQQPIM/HotWordResInfo;

    invoke-direct {v0}, LQQPIM/HotWordResInfo;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v3, p1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getHotWord(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "network error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2, v1, v0}, Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;->onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;LQQPIM/HotWordResInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/HotWordResInfo;

    goto :goto_0
.end method

.method public final a(LQQPIM/SoftKey;ILcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 3
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

    new-instance v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v1, LQQPIM/CommentInfo;

    invoke-direct {v1}, LQQPIM/CommentInfo;-><init>()V

    invoke-virtual {v1, p1}, LQQPIM/CommentInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {v1, p2}, LQQPIM/CommentInfo;->setScore(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportUserComment(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v2, "network error"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v2, "runtime error"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
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

    new-instance v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getADs(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "network error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1, v0, v1}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V
    .locals 8

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v3}, Ltms/dh;->a(Ljava/util/List;)V

    new-instance v4, Lcom/tencent/tmsecure/module/market/SpecialCategory;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/market/SpecialCategory;-><init>()V

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v2, "network error"

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v1, v4}, Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;->onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v2, "runtime error"

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iput v5, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v5, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v5}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftServerInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LQQPIM/SoftServerInfo;->getExpand()[B

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/tencent/tmsecure/module/market/CategoryEx;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/market/CategoryEx;-><init>()V

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftServerInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/Category;

    invoke-direct {v6}, LQQPIM/Category;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/Category;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setCategory(LQQPIM/Category;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/AndroidCategoryExpand;

    invoke-direct {v6}, LQQPIM/AndroidCategoryExpand;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidCategoryExpand;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setExpand(LQQPIM/AndroidCategoryExpand;)V

    :cond_4
    invoke-virtual {v4, v2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->setCategoryEx(Lcom/tencent/tmsecure/module/market/CategoryEx;)V

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    new-instance v6, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;-><init>()V

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v7, LQQPIM/AndroidSimpleInfoExpand;

    invoke-direct {v7}, LQQPIM/AndroidSimpleInfoExpand;-><init>()V

    invoke-virtual {v5, v0, v7}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidSimpleInfoExpand;

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setExpand(LQQPIM/AndroidSimpleInfoExpand;)V

    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->setSoftSimpleInfoExList(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 7
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

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v5, v0, v3, v4}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getCategoryList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v3, "network error"

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2, v1, v2}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x1

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/Category;

    new-instance v5, Lcom/tencent/tmsecure/module/market/CategoryEx;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/market/CategoryEx;-><init>()V

    invoke-virtual {v5, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setCategory(LQQPIM/Category;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/Category;->getExpand()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v6, LQQPIM/AndroidCategoryExpand;

    invoke-direct {v6}, LQQPIM/AndroidCategoryExpand;-><init>()V

    invoke-virtual {v3, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidCategoryExpand;

    invoke-virtual {v5, v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->setExpand(LQQPIM/AndroidCategoryExpand;)V

    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
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

    new-instance v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v2, p2, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "network error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_0

    invoke-static {v1}, Ltms/dh;->b(Ljava/util/List;)V

    invoke-interface {p3, v0, v1}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v2, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 3
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

    new-instance v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    iget-object v1, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, p1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSoftFeature(Ljava/util/List;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v2, "network error"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v2, "runtime error"

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 8
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

    new-instance v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/market/RequestInfo;->getRequestCommand()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v5, v0, v3, v4}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v3, "network error"

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {v4}, Ltms/dh;->a(Ljava/util/List;)V

    invoke-interface {p2, v1, v2}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x1

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v0, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iput v3, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v0, v1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    new-instance v6, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;-><init>()V

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v0}, LQQPIM/SoftSimpleInfo;->getExpand()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "expand"

    new-instance v7, LQQPIM/AndroidSimpleInfoExpand;

    invoke-direct {v7}, LQQPIM/AndroidSimpleInfoExpand;-><init>()V

    invoke-virtual {v3, v0, v7}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AndroidSimpleInfoExpand;

    invoke-virtual {v6, v0}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->setExpand(LQQPIM/AndroidSimpleInfoExpand;)V

    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    .locals 4
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

    new-instance v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/market/ResponseInfo;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v3, p2, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getMySoftList(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v3, "network error"

    invoke-static {v1, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v2}, Lcom/tencent/tmsecure/module/market/IMarketManagerListener;->onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    const-string v1, "MarketManager"

    const-string v3, "runtime error"

    invoke-static {v1, v3}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    iput v1, v0, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    goto :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iput-object v0, p0, Ltms/dh;->a:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    return-void
.end method
