.class final Lcom/lenovo/safecenter/net/support/InitializeService$4;
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
    .line 173
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$4;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$4;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->trafficForceUpdate(Landroid/content/Context;)V

    .line 177
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService$4;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/support/InitializeService$4;->a:Lcom/lenovo/safecenter/net/support/InitializeService;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/InitializeService;->d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    return-void
.end method
