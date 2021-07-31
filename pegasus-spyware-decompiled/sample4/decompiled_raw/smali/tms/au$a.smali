.class final Ltms/au$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/common/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/au;


# direct methods
.method constructor <init>(Ltms/au;)V
    .locals 0

    iput-object p1, p0, Ltms/au$a;->a:Ltms/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatch(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProcessing(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->what()I

    move-result v3

    new-instance v4, Lcom/tencent/tmsecure/common/DataEntity;

    invoke-direct {v4, v3}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v4

    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "sms"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v5

    iget-object v3, p0, Ltms/au$a;->a:Ltms/au;

    const-string v6, "incoming_sms"

    invoke-virtual {v3, v6}, Ltms/au;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v3

    :goto_1
    if-eqz v6, :cond_3

    instance-of v7, v3, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;

    if-eqz v7, :cond_3

    invoke-interface {v6}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a()V

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v0, v7, v2

    invoke-virtual {v3, v5, v7}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v5

    invoke-virtual {v3, v6}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a(Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V

    if-eqz v5, :cond_3

    iget-object v3, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    array-length v3, v3

    if-lez v3, :cond_5

    iget-object v0, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_6

    iget-object v0, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    if-eqz v5, :cond_1

    iget v6, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-eq v6, v2, :cond_2

    iget v6, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-ne v6, v9, :cond_1

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget v0, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    if-ne v0, v9, :cond_7

    iget v0, v5, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    if-ne v0, v2, :cond_7

    :cond_2
    move v0, v2

    :goto_4
    move v1, v0

    :cond_3
    invoke-virtual {v4}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "blocked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1

    :cond_5
    move-object v3, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :pswitch_1
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "sms"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a([B)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v3

    iget-object v5, p0, Ltms/au$a;->a:Ltms/au;

    const-string v6, "incoming_sms"

    invoke-virtual {v5, v6}, Ltms/au;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v5

    const-string v6, "event_sender"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    move-result-object v0

    instance-of v5, v0, Ltms/bs$a;

    if-eqz v5, :cond_8

    check-cast v0, Ltms/bs$a;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ltms/bs$a;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Ltms/w;->a()Ltms/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltms/w;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Ltms/w;->a()Ltms/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltms/w;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
