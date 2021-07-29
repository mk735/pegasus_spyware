.class final Ltms/cf;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/cs$b;


# direct methods
.method constructor <init>(Ltms/cs$b;)V
    .locals 0

    iput-object p1, p0, Ltms/cf;->a:Ltms/cs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "MMM"

    const-string v2, "\u79c1\u5bc6\u6765\u7535\u5224\u65ad"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ltms/cf;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {p0}, Ltms/cf;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ltms/cf;->a:Ltms/cs$b;

    invoke-static {v2}, Ltms/cs$b;->a(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final g()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Ltms/cf;->a:Ltms/cs$b;

    iget-object v1, p0, Ltms/cf;->a:Ltms/cs$b;

    invoke-static {v1}, Ltms/cs$b;->b(Ltms/cs$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    invoke-static {v0, p0, v1, v2, v2}, Ltms/cs$b;->a(Ltms/cs$b;Ltms/ax$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
