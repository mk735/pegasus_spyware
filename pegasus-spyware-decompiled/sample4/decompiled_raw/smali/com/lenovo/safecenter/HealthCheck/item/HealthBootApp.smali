.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthBootApp.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    .line 43
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mKey:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->isRootItem:Z

    .line 46
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 232
    return-void
.end method

.method protected click()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->b:Z

    .line 227
    return-void
.end method

.method public isShowBootSpeedActivity()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->b:Z

    return v0
.end method

.method public manual()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 158
    iput-boolean v9, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->b:Z

    .line 160
    invoke-static {v8}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 162
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)V

    .line 168
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 171
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const-wide/16 v4, 0x1f40

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 187
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 189
    const-string v4, "d"

    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanBootApp() bootCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    if-eqz v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d054a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v10, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 197
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v5, 0x5

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 198
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v8, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 199
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d049a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v10, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 205
    iput v10, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mPreViewType:I

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mPreViewType:I

    invoke-virtual {v4, v5, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 217
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 219
    :goto_1
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 174
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 176
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 178
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 181
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 182
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 183
    const-string v4, "wu0wu"

    const-string v5, "HealthBootApp op TimeoutException..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d054c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 209
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v11, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 210
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v5, 0x7

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 211
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v8, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 212
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d048f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v11, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    goto :goto_0
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected scan()V
    .locals 13

    .prologue
    const v12, 0x7f0d0603

    const v8, 0x7f0d054d

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 51
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 56
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 58
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;)V

    .line 64
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 67
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const-wide/16 v4, 0x1f40

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 85
    const-string v4, "d"

    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanBootApp() bootCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 87
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mKey:I

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 88
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 91
    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d054a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v10, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 103
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v11, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 104
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 105
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d049a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v10, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 109
    iput v10, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mPreViewType:I

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 122
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 123
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 70
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 74
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 78
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 79
    const-string v4, "wu0wu"

    const-string v5, "HealthBootApp scan TimeoutException..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d054c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v11, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 114
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v5, 0x9

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 115
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 116
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d048f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v11, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    goto :goto_0
.end method
