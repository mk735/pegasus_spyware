.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthRunningAppProcess.java"


# instance fields
.field public final SCORE_VALUE_RUNNING_APP_PROCESS:I

.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->SCORE_VALUE_RUNNING_APP_PROCESS:I

    .line 39
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a:I

    .line 41
    iput-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->b:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->c:Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    .line 46
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mKey:I

    .line 48
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->isRootItem:Z

    .line 49
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;)Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;
    .param p1, "x1"    # Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->c:Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->c:Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 184
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method protected optimiza()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 141
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->c:Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;

    invoke-virtual {v1, v3}, Lcom/lenovo/performancecenter/performance/ClearAllAppGarbage;->clearAllApp(Landroid/os/Message;)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0600

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v3, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0482

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 151
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x7

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 152
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 153
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v6, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 158
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mPreViewType:I

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 159
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 161
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 163
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "defaultPreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "OpRunningTaskTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v6}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    .line 169
    return-void
.end method

.method protected scan()V
    .locals 18

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v14, 0x7f0d054e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d05ff

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 59
    .local v3, "defaultPreference":Landroid/content/SharedPreferences;
    const-string v13, "OpRunningTaskTime"

    const-wide/16 v14, 0x0

    invoke-interface {v3, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 61
    .local v9, "opRunningTaskTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v11, v13, v9

    .line 62
    .local v11, "optimeInterval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v15

    sub-long v7, v13, v15

    .line 65
    .local v7, "interval":J
    const-wide/32 v13, 0x1d4c0

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    const-wide/16 v13, 0x3a98

    cmp-long v13, v7, v13

    if-lez v13, :cond_0

    .line 70
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 72
    .local v5, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;)V

    .line 78
    .local v2, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    invoke-interface {v5, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 82
    .local v6, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const-wide/16 v13, 0x1f40

    :try_start_0
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v13, v14, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    .local v1, "appGarbage":[I
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 102
    const/4 v13, 0x0

    aget v13, v1, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a:I

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    aget v14, v1, v14

    int-to-long v14, v14

    invoke-static {v13, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->b:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a:I

    if-eqz v13, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v14, 0x7f0d054e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d05ff

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 110
    new-instance v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v13}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mKey:I

    iput v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d054e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d05ff

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d0483

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->a:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v14, 0x2

    iput v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v14, 0x3

    iput v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mContext:Landroid/content/Context;

    const v15, 0x7f0d049a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v14}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v14

    add-int/lit8 v14, v14, -0x7

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 130
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mPreViewType:I

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 137
    .end local v1    # "appGarbage":[I
    .end local v2    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    .end local v5    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v2    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    .restart local v5    # "exec":Ljava/util/concurrent/ExecutorService;
    .restart local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 88
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 89
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 90
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 92
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v4

    .line 93
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 94
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 95
    const-string v13, "wu0wu"

    const-string v14, "HealthRunningAppProcess scan TimeoutException..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
