.class final Lcom/lenovo/safecenter/net/TrafficStatistics$2;
.super Ljava/lang/Thread;
.source "TrafficStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/TrafficStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/TrafficStatistics;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->e(Lcom/lenovo/safecenter/net/TrafficStatistics;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->d(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertDayTrafficDate(Landroid/content/Context;)V

    .line 144
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->d(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    .line 145
    .local v2, "mode":I
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "traffc_view_height_changed"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    const-string v3, "viewheight1"

    const-string v4, "touch sleep"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->e(Lcom/lenovo/safecenter/net/TrafficStatistics;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    const-string v5, "dev"

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->a(Lcom/lenovo/safecenter/net/TrafficStatistics;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 161
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/TrafficStatistics;->d(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 158
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget-object v3, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$2;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->e(Lcom/lenovo/safecenter/net/TrafficStatistics;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/TrafficStatistics;->a(Lcom/lenovo/safecenter/net/TrafficStatistics;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_1
.end method
