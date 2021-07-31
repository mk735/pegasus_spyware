.class public Lcom/lenovo/safecenter/antivirus/support/alarmreceiver;
.super Landroid/content/BroadcastReceiver;
.source "alarmreceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 25
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 27
    .local v0, "a":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 28
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    const-string v3, "netcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTIVITY_ACTION=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobile2GNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 30
    const-wide/16 v3, 0x0

    const-string v5, "scantime"

    invoke-static {v5, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "scantime"

    invoke-static {v5, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    :cond_0
    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    sget-boolean v3, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isOpen:Z

    if-nez v3, :cond_1

    .line 33
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    .end local v0    # "a":Landroid/net/NetworkInfo;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    return-void
.end method
