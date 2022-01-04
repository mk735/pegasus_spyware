.class public Lcom/lenovo/safecenter/net/support/InitializeService;
.super Landroid/app/Service;
.source "InitializeService.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.lenovo.safecenter.updatetrafficbar.broadcast"

.field private static b:I

.field private static c:Z


# instance fields
.field private a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

.field private d:Landroid/net/INetworkStatsService;

.field private e:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field private f:I

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x5

    sput v0, Lcom/lenovo/safecenter/net/support/InitializeService;->b:I

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/net/support/InitializeService;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/lenovo/safecenter/net/support/InitializeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/support/InitializeService$1;-><init>(Lcom/lenovo/safecenter/net/support/InitializeService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/lenovo/safecenter/net/support/InitializeService;->b:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/support/InitializeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/InitializeService;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->f:I

    return v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "cardPostion"    # I

    .prologue
    .line 224
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    if-nez v1, :cond_1

    .line 228
    invoke-static {p1, p0}, Lcom/lenovo/safecenter/net/support/Utils;->setConfig(ILandroid/content/Context;)V

    .line 230
    :cond_1
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/net/support/Utils;->setCorrectPostion(Landroid/content/Context;I)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "correct"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/support/InitializeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/lenovo/safecenter/net/support/InitializeService;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/InitializeService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->d:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/lenovo/safecenter/net/support/InitializeService;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/support/InitializeService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/InitializeService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/support/InitializeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/support/InitializeService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 239
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/InitializeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->a:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/InitializeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->e:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 243
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/InitializeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->f:I

    .line 245
    iget v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->f:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 246
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->d:Landroid/net/INetworkStatsService;

    .line 251
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 255
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    .line 80
    const-string v2, "8.31"

    const-string v3, "touch on start InitializeService"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p1, :cond_0

    .line 83
    const/4 v2, 0x3

    .line 220
    :goto_0
    return v2

    .line 86
    :cond_0
    const-string v2, "com.lenovo.safecenter.traffic.service.RTC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "boot"

    const-string v3, "touch SERVICE_ACTION_RTCcom.lenovo.safecenter.traffic.service.RTC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/net/support/InitializeService$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/net/support/InitializeService$2;-><init>(Lcom/lenovo/safecenter/net/support/InitializeService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    goto :goto_0

    .line 118
    :cond_1
    const-string v2, "com.lenovo.safecenter.deletetraffic.service.RTC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    const-string v2, "forzajuve"

    const-string v3, "touch DELETE_ACTION_RTC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x1

    .line 121
    .local v0, "execFlag":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-static {v6, v4, v6}, Lcom/lenovo/safecenter/utils/WflUtils;->getTriggerTime(III)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 122
    const/4 v0, 0x0

    .line 124
    :cond_2
    if-eqz v0, :cond_3

    .line 125
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Const;->setIsTodayNoticed(Z)V

    .line 126
    invoke-static {p0, v6}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setIsTodayNoticed2(Landroid/content/Context;Z)V

    .line 129
    :cond_3
    move v1, v0

    .line 130
    .local v1, "flag":Z
    const-string v2, "forzajuve"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/net/support/InitializeService$3;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/safecenter/net/support/InitializeService$3;-><init>(Lcom/lenovo/safecenter/net/support/InitializeService;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 155
    .end local v0    # "execFlag":Z
    .end local v1    # "flag":Z
    :cond_4
    const-string v2, "com.lenovo.safecenter.correct.traffic.SIM.service.RTC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    const-string v2, "8.31"

    const-string v3, "touch CORRECT_ACTION_RTC_SIM card 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->e:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 159
    invoke-direct {p0, v6}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(I)V

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/InitializeService;->stopSelf()V

    goto :goto_1

    .line 162
    :cond_6
    const-string v2, "com.lenovo.safecenter.correct.traffic.SIM2.service.RTC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    const-string v2, "4.2"

    const-string v3, "touch CORRECT_ACTION_RTC_SIM card 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/lenovo/safecenter/net/support/InitializeService;->e:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 166
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/net/support/InitializeService;->a(I)V

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/InitializeService;->stopSelf()V

    goto/16 :goto_1

    .line 170
    :cond_8
    const-string v2, "com.lenovo.safecenter.notice.traffic.ui.service.RTC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const-string v2, "week"

    const-string v3, "touch NOTICE_TRAFFIC_ACTION_RTC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/net/support/InitializeService$4;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/net/support/InitializeService$4;-><init>(Lcom/lenovo/safecenter/net/support/InitializeService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 183
    :cond_9
    const-string v2, "8.7"

    const-string v3, "touch on start InitializeService else"

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/support/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/lenovo/safecenter/net/support/InitializeService$5;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/net/support/InitializeService$5;-><init>(Lcom/lenovo/safecenter/net/support/InitializeService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
