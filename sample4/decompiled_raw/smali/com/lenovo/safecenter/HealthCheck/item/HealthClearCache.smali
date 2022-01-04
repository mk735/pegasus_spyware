.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthClearCache.java"


# static fields
.field private static a:J


# instance fields
.field public final SCORE_VALUE_CACHE_PROCESS:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->SCORE_VALUE_CACHE_PROCESS:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->b:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mKey:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->isRootItem:Z

    .line 43
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;)I
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;

    .prologue
    .line 32
    new-instance v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->getDataInfo()Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo$DataInfo;->cachesize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 159
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected optimiza()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearAllCache(Landroid/content/pm/PackageManager;)V

    .line 123
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0602

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0484

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mPreViewType:I

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->a:J

    .line 144
    return-void
.end method

.method protected scan()V
    .locals 12

    .prologue
    .line 48
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v8, 0x7f0d054e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0601

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->a:J

    sub-long v4, v7, v9

    .line 52
    .local v4, "scantimeInterval":J
    const-wide/32 v7, 0x1d4c0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 54
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 56
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;)V

    .line 61
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 63
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 65
    .local v6, "size":I
    const-wide/16 v7, 0x1f40

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 66
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 88
    if-lez v6, :cond_0

    .line 89
    new-instance v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v7}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 90
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mKey:I

    iput v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 91
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v9, 0x7f0d054e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 93
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0601

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 96
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0485

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->b:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 99
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v8, 0x2

    iput v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 100
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v8, 0x3

    iput v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 101
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 102
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mContext:Landroid/content/Context;

    const v9, 0x7f0d05d4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 107
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 109
    const/4 v7, 0x2

    iput v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mPreViewType:I

    .line 111
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v7, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 113
    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 117
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .end local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    .end local v6    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .restart local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    .restart local v6    # "size":I
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 69
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 73
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 77
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 78
    const-string v7, "wu0wu"

    const-string v8, "HealthClearCache scan TimeoutException..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
