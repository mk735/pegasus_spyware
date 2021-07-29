.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;
.super Ljava/lang/Thread;
.source "DownSignCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->downSign(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 221
    sget-object v4, Lcom/lenovo/safecenter/support/SecurityService;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->getSignCallList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->uplocal_sign(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->initDown(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "result":I
    const-string v3, "xmlresult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==lastin_list="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=====expired_list=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->a:Ljava/lang/String;

    const-string v5, "update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    if-ne v2, v7, :cond_0

    .line 239
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->insert_NetSign(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 245
    .local v1, "mes":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 246
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "result"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v3, v3, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .end local v1    # "mes":Landroid/os/Message;
    .end local v2    # "result":I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 249
    .restart local v2    # "result":I
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->a:Ljava/lang/String;

    const-string v5, "query"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 252
    .restart local v1    # "mes":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 253
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "result"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;

    iget-object v3, v3, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownSignCallService;->a:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
