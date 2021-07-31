.class final Ltms/bu;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field final synthetic b:Ltms/bs$c;


# direct methods
.method constructor <init>(Ltms/bs$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V
    .locals 0

    iput-object p1, p0, Ltms/bu;->b:Ltms/bs$c;

    iput-object p2, p0, Ltms/bu;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ltms/bu;->b:Ltms/bs$c;

    iget-object v1, p0, Ltms/bu;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-static {v0, v1}, Ltms/bs$c;->a(Ltms/bs$c;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ltms/bu;->b:Ltms/bs$c;

    iget-object v1, p0, Ltms/bu;->a:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    new-instance v2, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    invoke-virtual {v2}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sms"

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "event_sender"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
