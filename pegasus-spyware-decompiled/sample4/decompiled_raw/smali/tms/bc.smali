.class final Ltms/bc;
.super Ltms/ax$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ltms/bn$a;


# direct methods
.method constructor <init>(Ltms/bn$a;I)V
    .locals 0

    iput-object p1, p0, Ltms/bc;->b:Ltms/bn$a;

    iput p2, p0, Ltms/bc;->a:I

    invoke-direct {p0}, Ltms/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ltms/bc;->b()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    move v1, v2

    :goto_0
    iget v4, p0, Ltms/bc;->a:I

    sparse-switch v4, :sswitch_data_0

    :goto_1
    :sswitch_0
    if-nez v0, :cond_1

    iget v4, p0, Ltms/bc;->a:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->a(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->b(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->c(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->d(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Ltms/bc;->b:Ltms/bn$a;

    invoke-static {v0}, Ltms/bn$a;->e(Ltms/bn$a;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {p0}, Ltms/bc;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_2
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {p0}, Ltms/bc;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_3
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {p0}, Ltms/bc;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->contains(Ljava/lang/String;)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_4
    and-int/lit8 v2, v1, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method final g()V
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    invoke-virtual {p0}, Ltms/bc;->a()Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {p0}, Ltms/bc;->c()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    invoke-virtual {p0}, Ltms/bc;->b()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-virtual {p0}, Ltms/bc;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    invoke-virtual {p0}, Ltms/bc;->b()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ltms/bc;->a(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ltms/bc;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Ltms/bd;

    invoke-direct {v2, p0}, Ltms/bd;-><init>(Ltms/bc;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
