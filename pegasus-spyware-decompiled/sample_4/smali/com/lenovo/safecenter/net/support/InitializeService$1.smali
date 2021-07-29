.class final Lcom/lenovo/safecenter/net/support/InitializeService$1;
.super Landroid/os/Handler;
.source "InitializeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/support/InitializeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/support/InitializeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/support/InitializeService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x0

    .line 34
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 36
    :sswitch_0
    const-string v4, "week"

    const-string v5, "touch here !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v4, "week"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touch here @@@ week = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getWeekOfDate()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v4, "week"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notice value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficDaliogNoticeValue(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "timeFlag":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "currentTimeMillis":J
    const/16 v4, 0x1d

    invoke-static {v8, v4, v7}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    const/16 v4, 0x1f

    invoke-static {v8, v4, v7}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 49
    const/4 v3, 0x1

    .line 51
    :cond_0
    const-string v4, "week"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficDaliogNoticeValue(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getWeekOfDate()I

    move-result v4

    invoke-static {}, Lcom/lenovo/safecenter/net/support/InitializeService;->a()I

    move-result v5

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    .line 56
    const-string v4, "week"

    const-string v5, "touch create dailog friday"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    const-class v5, Lcom/lenovo/safecenter/net/TrafficShowDataDailog;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v2, "i":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/net/support/InitializeService;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/net/support/InitializeService;->stopSelf()V

    goto/16 :goto_0

    .line 65
    .end local v0    # "currentTimeMillis":J
    .end local v3    # "timeFlag":Z
    :sswitch_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/support/InitializeService$1;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/net/support/InitializeService;->stopSelf()V

    goto/16 :goto_0

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
