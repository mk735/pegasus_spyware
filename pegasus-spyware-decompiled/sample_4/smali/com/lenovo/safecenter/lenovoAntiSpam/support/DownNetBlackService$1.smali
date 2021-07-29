.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;
.super Landroid/os/Handler;
.source "DownNetBlackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 22
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "result":I
    if-ne v0, v6, :cond_0

    .line 28
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    const-string v3, "lastintag"

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setUpdateIntent(Ljava/lang/String;II)V

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->stopSelf()V

    goto :goto_0

    .line 30
    :cond_0
    if-ne v0, v5, :cond_3

    .line 32
    sget-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v2

    const-string v3, "lastintag"

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 36
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v2

    const-string v3, "mms_lastintag"

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 38
    :cond_1
    sget-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v2

    const-string v3, "expiredtag"

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 44
    :cond_2
    const-string v2, ""

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    const-string v3, "com.lenovo.antispam.netperson.change"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    const-string v3, "lastintag"

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setUpdateIntent(Ljava/lang/String;II)V

    goto :goto_1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    const-string v3, "lastintag"

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setUpdateIntent(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 58
    .end local v0    # "result":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "result1":I
    if-ne v1, v6, :cond_4

    .line 62
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setQueryIntent(I)V

    .line 86
    :goto_2
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->stopSelf()V

    goto/16 :goto_0

    .line 64
    :cond_4
    if-ne v1, v5, :cond_7

    .line 66
    sget-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 68
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v2

    const-string v3, "lastintag"

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    :cond_5
    sget-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 72
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v2

    const-string v3, "expiredtag"

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 76
    :cond_6
    const-string v2, ""

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setQueryIntent(I)V

    goto :goto_2

    .line 84
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->setQueryIntent(I)V

    goto :goto_2

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
