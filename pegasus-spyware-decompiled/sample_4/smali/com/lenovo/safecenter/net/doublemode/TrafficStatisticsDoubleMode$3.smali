.class final Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;
.super Ljava/lang/Thread;
.source "TrafficStatisticsDoubleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;II)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iput p2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->a:I

    iput p3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Lcom/lenovo/safecenter/net/support/TrafficStatsService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 529
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->g(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 530
    :cond_0
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 531
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "THREAD_SLEEPED"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    const-string v3, "viewheight1"

    const-string v4, "touch sleep"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->insertDayTrafficDate(Landroid/content/Context;)V

    .line 535
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 537
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->a:I

    packed-switch v3, :pswitch_data_0

    .line 569
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :goto_0
    :pswitch_0
    return-void

    .line 539
    .restart local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 541
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    const-string v3, "sqlexception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch net sqlexception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->b:I

    if-nez v3, :cond_2

    .line 560
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 561
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 562
    iget v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "msg":Landroid/os/Message;
    .restart local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 546
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 549
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v4

    iget-object v5, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayTrafficInMonth(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 551
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 565
    .end local v1    # "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;->c:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->finish()V

    goto/16 :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
