.class final Lcom/lenovo/safecenter/support/SecurityService$e;
.super Landroid/os/Handler;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService$e;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 203
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    .line 206
    const-string v3, "TrafficCorrectPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->b(Lcom/lenovo/safecenter/support/SecurityService;)V

    goto :goto_0

    .line 210
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 211
    .local v1, "id":I
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 212
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 213
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x18

    iput v3, v2, Landroid/os/Message;->what:I

    .line 214
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x124f8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 217
    .end local v1    # "id":I
    .end local v2    # "message":Landroid/os/Message;
    :sswitch_2
    const-string v3, "error"

    sput-object v3, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->d(Lcom/lenovo/safecenter/support/SecurityService;)V

    goto :goto_0

    .line 221
    :sswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->e(Lcom/lenovo/safecenter/support/SecurityService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v5, 0x7f0d0828

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const v6, 0x7f0d0829

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/safecenter/net/support/Utils;->showCorrectFailNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 228
    :sswitch_4
    sput-boolean v4, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->canCorrect:Z

    goto/16 :goto_0

    .line 232
    :sswitch_5
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :sswitch_6
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_7
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/support/SecurityService$e;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_6
        0x6 -> :sswitch_4
        0x7 -> :sswitch_7
        0x18 -> :sswitch_3
    .end sparse-switch
.end method
