.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthSafehomepage.java"


# instance fields
.field public final SCORE_VALUE_SAFE_HOMEPAGE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->SCORE_VALUE_SAFE_HOMEPAGE:I

    .line 38
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mKey:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->isRootItem:Z

    .line 41
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 150
    return-void
.end method

.method protected click()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->register()Z

    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0627

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 134
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 135
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 143
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportUserActionHealthManualOpenSafeHomePage()V

    .line 144
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected scan()V
    .locals 13

    .prologue
    const v12, 0x7f0d0625

    const v11, 0x7f0d054e

    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 46
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v6, v7, v8}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 49
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v4

    .line 50
    .local v4, "isLenovoPhone":Z
    if-eqz v4, :cond_0

    .line 52
    invoke-static {v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 54
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;)V

    .line 59
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 61
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/16 v6, 0x1f40

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .local v5, "isOn":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 80
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    new-instance v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v6}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 86
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mKey:I

    iput v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 87
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 89
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 92
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0626

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 94
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v9, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 95
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v7, 0x5

    iput v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 96
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 97
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mContext:Landroid/content/Context;

    const v8, 0x7f0d003a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 102
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v6, v9, v10}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 104
    iput v9, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mPreViewType:I

    .line 105
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 106
    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 107
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportHealthNoOpenSafeHomePage()V

    .line 110
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v5    # "isOn":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .restart local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 66
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 70
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 73
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 74
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 75
    const-string v6, "wu0wu"

    const-string v7, "HealthSafehomepage scan TimeoutException..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
