.class final Ltms/bq;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/bs$b;


# direct methods
.method constructor <init>(Ltms/bs$b;)V
    .locals 0

    iput-object p1, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 3

    invoke-virtual {p0}, Ltms/bq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v1}, Ltms/bs$b;->i(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v1

    invoke-virtual {p0}, Ltms/bq;->b()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ltms/bq;->a(Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p0}, Ltms/bq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0}, Ltms/bq;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    invoke-virtual {p0}, Ltms/bq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p0}, Ltms/bq;->d()I

    move-result v2

    iput v2, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p0}, Ltms/bq;->b()I

    move-result v2

    iput v2, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->shouldBeBlockedOrNot(Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v6, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v6}, Ltms/bs$b;->j(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v6}, Ltms/bs$b;->j(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    move-result-object v6

    invoke-interface {v6, v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;->handleCheckResult(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;Z)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v0}, Ltms/bs$b;->b(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-virtual {p0}, Ltms/bq;->c()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v7, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-virtual {p0}, Ltms/bq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v8, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v8}, Ltms/bs$b;->k(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v8

    invoke-static {v7, v0, v8, v5}, Ltms/bs$b;->a(Ltms/bs$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    invoke-virtual {p0, v5}, Ltms/bq;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void

    :cond_1
    iget v2, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v6, p0, Ltms/bq;->a:Ltms/bs$b;

    invoke-static {v6}, Ltms/bs$b;->b(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v6

    invoke-virtual {p0}, Ltms/bq;->c()[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method
