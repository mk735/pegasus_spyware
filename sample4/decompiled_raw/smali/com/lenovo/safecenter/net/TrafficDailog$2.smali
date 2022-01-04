.class final Lcom/lenovo/safecenter/net/TrafficDailog$2;
.super Ljava/lang/Thread;
.source "TrafficDailog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/TrafficDailog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/TrafficDailog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/TrafficDailog;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->a(Lcom/lenovo/safecenter/net/TrafficDailog;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 76
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->c(Lcom/lenovo/safecenter/net/TrafficDailog;)I

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->d(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/TrafficDailog;->d(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x7f090417

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getBackValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 94
    :cond_1
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getBackValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 88
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setBackValue(I)V

    .line 89
    invoke-static {}, Lcom/lenovo/safecenter/net/TrafficDailog;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->e(Lcom/lenovo/safecenter/net/TrafficDailog;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficDailog$2;->a:Lcom/lenovo/safecenter/net/TrafficDailog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/TrafficDailog;->finish()V

    goto :goto_1
.end method
