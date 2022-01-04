.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthKillVirus.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;
.implements Ljava/util/Observer;


# instance fields
.field public final SCORE_VALUE_HAS_VIRUS:I

.field private a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private b:I

.field private c:I

.field private final d:I

.field private e:I

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/lenovo/safecenter/utils/LeSafeObservable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 60
    const/16 v0, 0x28

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->SCORE_VALUE_HAS_VIRUS:I

    .line 62
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    .line 63
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->c:I

    .line 64
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->d:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->e:I

    .line 66
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->f:Z

    .line 72
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->g:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    .line 92
    const/16 v0, 0x15

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mKey:I

    .line 93
    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    .line 94
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->isRootItem:Z

    .line 95
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 96
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 97
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 98
    return-void
.end method

.method private a()I
    .locals 4

    .prologue
    .line 380
    const-string v2, "viruspkgname"

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "virusPkgNames":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 387
    .local v0, "count":I
    :goto_0
    return v0

    .line 385
    .end local v0    # "count":I
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->e:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->e:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method public static isClounKillVirus(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobile2GNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mKey:I

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    .line 339
    :cond_0
    return-void
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 322
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->deleteObservers()V

    .line 325
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->close()V

    .line 327
    :cond_1
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public isShowkillVirusActivity()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->f:Z

    return v0
.end method

.method protected manual()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a()I

    move-result v1

    .line 273
    .local v1, "newVirusNum":I
    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->c:I

    sub-int v0, v2, v1

    .line 274
    .local v0, "killNum":I
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->c:I

    .line 276
    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-lez v1, :cond_2

    .line 278
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    .line 279
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d047e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 284
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 285
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 286
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d022a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 304
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 305
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v3

    mul-int/lit8 v4, v0, 0x28

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 308
    if-lez v0, :cond_1

    .line 309
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->isHealthCheckNoOptimiza(Ljava/lang/Boolean;)V

    .line 311
    :cond_1
    return-void

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0480

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 295
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v3, 0x7

    iput v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 296
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 297
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2, v8, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 301
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mPreViewType:I

    invoke-virtual {v2, v3, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 302
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    goto :goto_0
.end method

.method public onWarnDialogCancel(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 406
    return-void
.end method

.method public onWarnDialogOk()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 343
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a()I

    move-result v2

    .line 344
    .local v2, "newVirusNum":I
    if-nez v2, :cond_2

    .line 346
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    sub-int v1, v3, v2

    .line 348
    .local v1, "killNum":I
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0480

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 352
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v9, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 353
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v4, 0x7

    iput v4, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 354
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v7, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 355
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v5, 0x7f0d048f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 356
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v3, v9, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 358
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mPreViewType:I

    invoke-virtual {v3, v4, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    .line 362
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 363
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v4

    mul-int/lit8 v5, v1, 0x28

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 366
    if-lez v1, :cond_1

    .line 367
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->isHealthCheckNoOptimiza(Ljava/lang/Boolean;)V

    .line 375
    .end local v1    # "killNum":I
    :cond_1
    :goto_0
    iput v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->c:I

    .line 376
    return-void

    .line 370
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const-class v4, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "from_healthcheck"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 373
    iput-boolean v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->f:Z

    goto :goto_0
.end method

.method public onWarnDialogOk(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 394
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->onWarnDialogOk()V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected optimiza()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    return-void
.end method

.method protected scan()V
    .locals 14

    .prologue
    const v13, 0x7f0d047f

    const/16 v12, 0x9

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 103
    const/4 v4, 0x0

    .line 105
    .local v4, "isCloudKill":Z
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v6, 0x7f0d054e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 108
    new-instance v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v5}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 109
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mKey:I

    iput v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 110
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d054e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->isClounKillVirus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getMAX_PROGRESS()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScanProgress(I)V

    .line 115
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setProgressBarIndeterminate(Z)V

    .line 116
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d05ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v5, v6, v7}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 119
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d05ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 123
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 125
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V

    .line 143
    .local v0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 146
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/32 v5, 0xea60

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 163
    const/4 v4, 0x1

    .line 208
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a()I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    .line 209
    const-string v5, "d"

    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVirusNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    if-nez v5, :cond_2

    .line 212
    if-eqz v4, :cond_1

    .line 213
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0406

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 215
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v11, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 216
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v12, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 217
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v10, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 218
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d048f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 219
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5, v11, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 248
    :goto_1
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 250
    const-string v5, "scantime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 252
    const-string v5, "d"

    const-string v6, "wu0wu"

    const-string v7, "scankillvirus end..."

    invoke-static {v5, v6, v7}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_2
    return-void

    .line 147
    .restart local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .restart local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_2

    .line 151
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 153
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_2

    .line 155
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 156
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 157
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 158
    const-string v5, "wu0wu"

    const-string v6, "ClounKillVirus TimeoutException..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 166
    .end local v0    # "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v2    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v6, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V

    invoke-virtual {v5, v6, v10}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 222
    :cond_1
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v8, 0x7f0d05fc

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 225
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v11, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 226
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v12, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 227
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v10, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 228
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d048f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5, v11, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    goto/16 :goto_1

    .line 233
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d047e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 235
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v9, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 236
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v9, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 237
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v10, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 238
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mContext:Landroid/content/Context;

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v6

    iget v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->b:I

    mul-int/lit8 v7, v7, 0x28

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 242
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5, v9, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 244
    iput v9, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->mPreViewType:I

    goto/16 :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 410
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 411
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 413
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->manual()V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
