.class final Lcom/lenovo/safecenter/net/support/InitializeService$3;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/lenovo/safecenter/net/support/InitializeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/support/InitializeService;Z)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    const-string v1, "forzajuve"

    const-string v2, "do4newMonth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->do4newMonth()V

    .line 139
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->a:Z

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Lcom/lenovo/safecenter/net/support/InitializeService;)I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 141
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    :goto_1
    return-void

    .line 143
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refreshTotal()V

    .line 144
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobileInLimit(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/InitializeService$3;->b:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
