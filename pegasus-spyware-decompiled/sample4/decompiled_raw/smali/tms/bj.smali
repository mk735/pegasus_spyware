.class final Ltms/bj;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:Ltms/bs$b;


# direct methods
.method constructor <init>(Ltms/bs$b;)V
    .locals 0

    iput-object p1, p0, Ltms/bj;->a:Ltms/bs$b;

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ltms/bj;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-virtual {p0}, Ltms/bj;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Ltms/bj;->a:Ltms/bs$b;

    invoke-static {v2}, Ltms/bs$b;->d(Ltms/bs$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ltms/bj;->a:Ltms/bs$b;

    invoke-static {v0, p0}, Ltms/bs$b;->a(Ltms/bs$b;Ltms/ax$a;)V

    return-void
.end method
