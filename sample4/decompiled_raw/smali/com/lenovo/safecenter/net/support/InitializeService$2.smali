.class final Lcom/lenovo/safecenter/net/support/InitializeService$2;
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
    .line 88
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Lcom/lenovo/safecenter/net/support/InitializeService;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(Lcom/lenovo/safecenter/net/support/InitializeService;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 97
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertDayTrafficDate(Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refreshTotal()V

    .line 108
    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$2;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    goto :goto_0
.end method
