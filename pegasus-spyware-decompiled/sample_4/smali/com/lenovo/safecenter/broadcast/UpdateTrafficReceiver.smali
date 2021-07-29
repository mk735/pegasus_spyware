.class public Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateTrafficReceiver.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/lenovo/safecenter/utils/LeSafeObservable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    .line 26
    iput-wide v0, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v9, 0x400

    const-wide/16 v7, -0x1

    const-wide/16 v5, 0x0

    .line 33
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->d:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lenovo.safecenter.init.trafficbar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "wu0wu"

    const-string v2, "UpdateTrafficReceiver initTraffic"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "todayData"

    invoke-virtual {p2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    const-string v1, "monthfree"

    invoke-virtual {p2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    const-string v1, "progress"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "month_limit"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTraffic progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic(J)V

    iget-wide v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic(J)V

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->d:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshTrafficInfo()V

    .line 39
    :cond_0
    const-string v1, "com.lenovo.safecenter.updatetrafficbar.broadcast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    const-string v1, "wu0wu"

    const-string v2, "UpdateTrafficReceiver updateTraffic"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    :cond_1
    iget-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    mul-long/2addr v1, v9

    mul-long/2addr v1, v9

    const-string v3, "changed"

    invoke-virtual {p2, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    iget-wide v5, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    sub-long v3, v5, v3

    iput-wide v3, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    iget-wide v3, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long v1, v3, v1

    long-to-int v1, v1

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTraffic progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->a:J

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Const;->setTodayUsedTraffic(J)V

    iget-wide v2, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->b:J

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Const;->setMonthFreeTraffic(J)V

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setProgressTrafficMonthUsed(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/UpdateTrafficReceiver;->d:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshTrafficInfo()V

    .line 42
    :cond_4
    return-void
.end method
