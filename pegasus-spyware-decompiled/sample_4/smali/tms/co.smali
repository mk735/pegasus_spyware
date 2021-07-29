.class final Ltms/co;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/cs$b;


# direct methods
.method constructor <init>(Ltms/cs$b;)V
    .locals 0

    iput-object p1, p0, Ltms/co;->a:Ltms/cs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 2

    invoke-virtual {p0}, Ltms/co;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ltms/co;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Ltms/co;->a:Ltms/cs$b;

    iget-object v0, p0, Ltms/co;->a:Ltms/cs$b;

    invoke-static {v0}, Ltms/cs$b;->d(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v3

    invoke-virtual {p0}, Ltms/co;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, p0, v3, v0, v1}, Ltms/cs$b;->a(Ltms/cs$b;Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
