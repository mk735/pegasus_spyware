.class final Ltms/cq;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/cs$b;

.field private final b:I


# direct methods
.method constructor <init>(Ltms/cs$b;)V
    .locals 1

    iput-object p1, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Ltms/cq;->b:I

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 9

    const-wide/16 v7, 0x1f40

    const/4 v1, 0x0

    invoke-virtual {p0}, Ltms/cq;->c()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ltms/cq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long v4, v2, v4

    iget-object v6, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-static {v6}, Ltms/cs$b;->i(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-static {v1}, Ltms/cs$b;->i(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5}, Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;->isShortCall(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-static {v4}, Ltms/cs$b;->h(Ltms/cs$b;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ltms/cq;->b()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_1

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v7

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final g()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Ltms/cq;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0}, Ltms/cq;->c()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    iget-object v0, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-static {v0}, Ltms/cs$b;->j(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->cancelMissCall()V

    iget-object v0, p0, Ltms/cq;->a:Ltms/cs$b;

    iget-object v1, p0, Ltms/cq;->a:Ltms/cs$b;

    invoke-static {v1}, Ltms/cs$b;->d(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v5}, Ltms/cs$b;->a(Ltms/cs$b;Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
