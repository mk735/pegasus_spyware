.class final Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;
.super Ljava/lang/Thread;
.source "TrafficStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobileInLimit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "isCast":Z
    sget-boolean v3, Lcom/lenovo/safecenter/net/cache/NetCache;->is_net_flush_cast:Z

    if-eqz v3, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 181
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 182
    sput-boolean v4, Lcom/lenovo/safecenter/net/cache/NetCache;->is_net_flush_cast:Z

    .line 184
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 185
    invoke-static {v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Z)Z

    .line 186
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 187
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 188
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 189
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b()Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v2

    .line 192
    .local v2, "service":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->a(Lcom/lenovo/safecenter/net/support/TrafficStatsService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/lenovo/safecenter/net/support/TrafficStatsService$2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertDayTrafficDate(Landroid/content/Context;)V

    .line 194
    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->b(Lcom/lenovo/safecenter/net/support/TrafficStatsService;)V

    .line 195
    const-string v3, "letraffic1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertDayTrafficDate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_2
    return-void
.end method
