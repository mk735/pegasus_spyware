.class final Lcom/lenovo/safecenter/net/support/InitializeService$5;
.super Ljava/lang/Thread;
.source "InitializeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/support/InitializeService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 186
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 191
    :try_start_0
    const-string v0, "3.6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrafficStatsService canRun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/net/support/InitializeService;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/lenovo/safecenter/net/support/InitializeService;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Z)Z

    .line 195
    const-string v0, "3.6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrafficStatsService forceUpdate start....trafficDevMod ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Lcom/lenovo/safecenter/net/support/InitializeService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Lcom/lenovo/safecenter/net/support/InitializeService;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 209
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    :goto_1
    return-void

    .line 203
    :cond_2
    :try_start_1
    const-string v0, "3.6"

    const-string v1, "TrafficStatsService refreshTotal start...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refreshTotal()V

    .line 206
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobileInLimit(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$5;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0
.end method
