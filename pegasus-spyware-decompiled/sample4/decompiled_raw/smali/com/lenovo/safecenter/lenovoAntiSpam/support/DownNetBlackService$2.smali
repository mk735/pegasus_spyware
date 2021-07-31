.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;
.super Ljava/lang/Thread;
.source "DownNetBlackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->downNetBlack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v3, 0x2

    .line 148
    sget-object v10, Lcom/lenovo/safecenter/support/SecurityService;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->a:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->downNetBlack(Landroid/content/Context;)I

    move-result v9

    .line 154
    .local v9, "result":I
    const-string v0, "xmlresult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-ne v9, v3, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    sget-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    sget-object v6, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 163
    .local v8, "mes":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 164
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "downtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v8    # "mes":Landroid/os/Message;
    .end local v9    # "result":I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    return-void

    .line 167
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->a:Ljava/lang/String;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;)Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->queryNetBlack(Landroid/content/Context;)I

    move-result v9

    .line 170
    .restart local v9    # "result":I
    const-string v0, "xmlresult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 172
    .restart local v8    # "mes":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v8, Landroid/os/Message;->what:I

    .line 173
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService$2;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/DownNetBlackService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    .end local v8    # "mes":Landroid/os/Message;
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 179
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
