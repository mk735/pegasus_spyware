.class public Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LeemCenterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/ActivityManager;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->c:J

    return-wide v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 6
    .param p0, "x1"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootForbidedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getRecordPkgList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "LeemCenterReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boot KillProcess ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0, p0, v1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killAllProcess(Landroid/os/Handler;Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v9, "LeemCenterReceiver"

    const-string v10, "onReceive()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->e:Landroid/content/Context;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->c:J

    .line 42
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->d:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;

    if-nez v9, :cond_0

    .line 43
    new-instance v9, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;

    invoke-direct {v9, p0}, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;-><init>(Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;)V

    iput-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->d:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;

    .line 47
    :cond_0
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->a:Landroid/app/ActivityManager;

    if-nez v9, :cond_1

    .line 48
    const-string v9, "activity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    iput-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->a:Landroid/app/ActivityManager;

    .line 50
    :cond_1
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->b:Ljava/util/Timer;

    if-nez v9, :cond_2

    .line 51
    new-instance v9, Ljava/util/Timer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/Timer;-><init>(Z)V

    iput-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->b:Ljava/util/Timer;

    .line 53
    :cond_2
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordBootTime(J)V

    .line 63
    invoke-static {p1}, Lcom/lenovo/performancecenter/LeemCenterTools;->writeBootStartTime(Landroid/content/Context;)V

    .line 66
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "---> Intent.ACTION_BOOT_COMPLETED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getIsRoot()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isRoot, exec kill process"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->b:Ljava/util/Timer;

    iget-object v10, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->d:Lcom/lenovo/performancecenter/framework/LeemCenterReceiver$a;

    const-wide/16 v11, 0x4e20

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 78
    :cond_3
    const-string v9, "com.lenovo.safecenter.activityswitch"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 81
    .local v5, "openTime":J
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->e:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v9

    sub-long v1, v5, v9

    .line 82
    .local v1, "interval":J
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newPkg interval == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-wide/16 v9, 0x3a98

    cmp-long v9, v1, v9

    if-gtz v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_4

    .line 84
    const-string v9, "newPkg"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "newPkg":Ljava/lang/String;
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newPkg interval == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->e:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->getListForResetKillTime(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 88
    .local v4, "noResetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 89
    iget-object v9, p0, Lcom/lenovo/performancecenter/framework/LeemCenterReceiver;->e:Landroid/content/Context;

    const-wide/16 v10, 0x1

    const/4 v12, 0x5

    invoke-static {v9, v10, v11, v12}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    .line 90
    const-string v9, "LeemCenterReceiver"

    const-string v10, "newPkg resetKillTime"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v3    # "newPkg":Ljava/lang/String;
    .end local v4    # "noResetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getBootTime()J

    move-result-wide v9

    sub-long v7, v5, v9

    .line 95
    .local v7, "time":J
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cur == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bootTime == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getBootTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v9, 0x4e20

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    .line 97
    const-string v9, "newPkg"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "newPkg":Ljava/lang/String;
    const-string v9, "LeemCenterReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newPkg == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v3}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordOpenPkgList(Ljava/lang/String;)V

    .line 102
    .end local v1    # "interval":J
    .end local v3    # "newPkg":Ljava/lang/String;
    .end local v5    # "openTime":J
    .end local v7    # "time":J
    :cond_5
    return-void
.end method
