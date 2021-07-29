.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;
.super Landroid/os/Handler;
.source "DownSignCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 52
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "result":I
    if-ne v1, v6, :cond_0

    .line 58
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    const-string v4, "sign_lastin"

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setUpdateIntent(Ljava/lang/String;II)V

    .line 60
    :try_start_0
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;)V

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->stopSelf()V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-ne v1, v7, :cond_1

    .line 95
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    const-string v4, "sign_lastin"

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setUpdateIntent(Ljava/lang/String;II)V

    .line 97
    :try_start_1
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;)V

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1$2;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    const-string v4, "sign_lastin"

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setUpdateIntent(Ljava/lang/String;II)V

    goto :goto_1

    .line 137
    .end local v1    # "result":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, "result1":I
    if-ne v2, v6, :cond_2

    .line 141
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v3, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setQueryIntent(I)V

    .line 152
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->stopSelf()V

    goto :goto_0

    .line 143
    :cond_2
    if-ne v2, v7, :cond_3

    .line 146
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v3, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setQueryIntent(I)V

    goto :goto_2

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v3, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->setQueryIntent(I)V

    goto :goto_2

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
