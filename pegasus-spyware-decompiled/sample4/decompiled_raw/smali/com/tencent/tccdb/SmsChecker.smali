.class public Lcom/tencent/tccdb/SmsChecker;
.super Ljava/lang/Object;


# static fields
.field public static final EM_MOD_CHARGE:I = 0x8

.field public static final EM_MOD_KEYWORD:I = 0x2

.field public static final EM_MOD_PATTERN:I = 0x4

.field public static final EM_MOD_SENDER:I = 0x1

.field private static volatile a:Lcom/tencent/tccdb/SmsChecker;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:I

.field private final f:I

.field private g:Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    const-string v0, "aresengine_libname"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ltms/ad;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    iput v2, p0, Lcom/tencent/tccdb/SmsChecker;->e:I

    iput v3, p0, Lcom/tencent/tccdb/SmsChecker;->f:I

    new-instance v0, Lcom/tencent/tccdb/a;

    invoke-direct {v0, p0}, Lcom/tencent/tccdb/a;-><init>(Lcom/tencent/tccdb/SmsChecker;)V

    iput-object v0, p0, Lcom/tencent/tccdb/SmsChecker;->g:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    invoke-static {p1}, Lcom/tencent/tccdb/SmsChecker;->newObject(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    const-string v0, "rule_store.sys"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltms/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    iget-object v1, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/tencent/tccdb/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    iget-object v1, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/tencent/tccdb/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/tccdb/SmsChecker;->g:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method

.method public static DestoryInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    return-void
.end method

.method static synthetic a(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/tencent/tccdb/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/tccdb/SmsChecker;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    return v0
.end method

.method private static a(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/tencent/tccdb/SmsCheckerException;

    invoke-direct {v0, p0}, Lcom/tencent/tccdb/SmsCheckerException;-><init>(I)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/tccdb/SmsChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    return p1
.end method

.method static synthetic b(ILjava/lang/String;)I
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lcom/tencent/tccdb/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native checkChargeSms(ILcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/tccdb/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/MMatchSysResult;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native checkSmsSys(ILcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/tccdb/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/MMatchSysResult;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native deleteObject(I)V
.end method

.method private static native finishChargeChecker(I)V
.end method

.method private static native finishSmsChecker(I)V
.end method

.method public static getFinalAction(Landroid/content/Context;Lcom/tencent/tccdb/MMatchSysResult;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/tccdb/SmsChecker;->nativeGetFinalAction(Landroid/content/Context;Lcom/tencent/tccdb/MMatchSysResult;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/tccdb/SmsChecker;
    .locals 2

    sget-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tccdb/SmsChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tccdb/SmsChecker;

    invoke-direct {v0, p0}, Lcom/tencent/tccdb/SmsChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tccdb/SmsChecker;->a:Lcom/tencent/tccdb/SmsChecker;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRuleFileHeader(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/RuleFileHeader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/tencent/tccdb/SmsChecker;->nativeGetRuleFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    return-void
.end method

.method private static native initChargeChecker(IILjava/lang/String;)I
.end method

.method private static native initSmsChecker(IILjava/lang/String;)I
.end method

.method private static native nativeGetFinalAction(Landroid/content/Context;Lcom/tencent/tccdb/MMatchSysResult;)I
.end method

.method private static native nativeGetRuleFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/RuleFileHeader;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native newObject(Landroid/content/Context;)I
.end method

.method private static native reloadChargeRule(IILjava/lang/String;)I
.end method

.method private static native reloadModRule(IILjava/lang/String;)I
.end method


# virtual methods
.method public checkChargeSms(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tccdb/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tccdb/SmsChecker;->reloadModRule()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    :cond_0
    iget v2, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v2, p1, p2}, Lcom/tencent/tccdb/SmsChecker;->checkChargeSms(ILcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_3

    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v0, Lcom/tencent/tccdb/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tccdb/MMatchSysResult;-><init>(IIIII[Lcom/tencent/tccdb/MRuleTypeID;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-gtz v2, :cond_1

    invoke-static {v2}, Lcom/tencent/tccdb/SmsChecker;->a(I)V

    goto :goto_0
.end method

.method public checkSmsSys(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tccdb/MCheckInput;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/MMatchSysResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tccdb/SmsChecker;->reloadModRule()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    :cond_0
    iget v2, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v2, p1, p2}, Lcom/tencent/tccdb/SmsChecker;->checkSmsSys(ILcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_3

    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v0, Lcom/tencent/tccdb/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tccdb/MMatchSysResult;-><init>(IIIII[Lcom/tencent/tccdb/MRuleTypeID;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-eq v2, v0, :cond_1

    invoke-static {v2}, Lcom/tencent/tccdb/SmsChecker;->a(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->finishSmsChecker(I)V

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->finishChargeChecker(I)V

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->deleteObject(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    :cond_0
    return-void
.end method

.method public finishChargeChecker()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->finishChargeChecker(I)V

    :cond_0
    return-void
.end method

.method public finishSmsChecker()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->finishSmsChecker(I)V

    :cond_0
    return-void
.end method

.method public initChargeChecker(ILjava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/SmsChecker;->initChargeChecker(IILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initSmsChecker(ILjava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/SmsChecker;->initSmsChecker(IILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reloadChargeRule(ILjava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/SmsChecker;->reloadChargeRule(IILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadModRule()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tccdb/SmsChecker;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/tccdb/SmsChecker;->reloadModRule(IILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/tencent/tccdb/SmsChecker;->b:I

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/tccdb/SmsChecker;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/tccdb/SmsChecker;->reloadChargeRule(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
