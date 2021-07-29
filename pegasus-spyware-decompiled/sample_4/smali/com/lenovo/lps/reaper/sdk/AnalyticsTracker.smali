.class public final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$5;
    }
.end annotation


# static fields
.field protected static tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# instance fields
.field private final a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

.field private b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

.field private c:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

.field private d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z

    .line 59
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->f:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->g:I

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->l:[B

    .line 80
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$1;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$1;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->m:Landroid/content/BroadcastReceiver;

    .line 90
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Lcom/lenovo/lps/reaper/sdk/config/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    return-object v0
.end method

.method static synthetic a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 7
    .param p0, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/16 v0, 0x14

    const/4 v2, 0x0

    .line 38
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x190

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, v3

    if-ge v0, v1, :cond_1

    :goto_1
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    array-length v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .line 190
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getConfiguration()Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 191
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getEventStorage()Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)V
    .locals 6
    .param p1, "dispatchMode"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    .prologue
    .line 852
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$5;->a:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 854
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->countEvent()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->getThreshold()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 855
    const-string v2, "AnalyticsTracker"

    const-string v3, "current number of events is not enough."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 858
    :cond_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->fetchEvents()[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    .line 866
    .local v0, "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    :goto_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v1

    .line 867
    .local v1, "postedEvents":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v2, v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->deleteEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 868
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    .line 869
    :cond_2
    const-string v2, "AnalyticsTracker"

    const-string v3, "no reported event."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    .end local v0    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v1    # "postedEvents":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->fetchEvents(I)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    .line 862
    .restart local v0    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    goto :goto_1

    .line 852
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 12
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "flag"    # I

    .prologue
    const/16 v11, 0xe10

    .line 490
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    const/4 v9, 0x1

    if-eq p2, v9, :cond_2

    .line 492
    :cond_0
    const-string v9, "AnalyticsTracker"

    const-string v10, "action of throwable event should not be null or empty. OR flag is not appropriate"

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    move-object v5, p1

    .line 497
    .local v5, "thr":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 498
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1

    .line 500
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, "thrName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "thrMsg":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v9, 0x1000

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    .local v4, "stack":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 508
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 511
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v9, v11, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 512
    .local v8, "thrStack":Ljava/lang/String;
    :goto_3
    const-string v9, "__THROWABLE__"

    invoke-virtual {p0, v9, v7, v8, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 511
    .end local v8    # "thrStack":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method static synthetic b(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 568
    const-string v0, "__INITIAL__"

    const-string v1, "initial"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 569
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->clearCustomParameter()V

    .line 575
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->l:[B

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string v0, "AnalyticsTracker"

    const-string v2, "not ready for reporting."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "AnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some error occured when dispatch. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 821
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 822
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$4;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 830
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .locals 2

    .prologue
    .line 100
    const-class v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .line 103
    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final countEvent()I
    .locals 2

    .prologue
    .line 811
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const-string v0, "AnalyticsTracker"

    const-string v1, "please Call initialize() of AnalyticsTracker Once, before use it."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->countEvent()I

    move-result v0

    goto :goto_0
.end method

.method public final disableReport()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-boolean v0, v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z

    .line 803
    return-void
.end method

.method public final dispatch()V
    .locals 5

    .prologue
    .line 747
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->l:[B

    monitor-enter v2

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :goto_0
    return-void

    .line 752
    :cond_0
    :try_start_2
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 760
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 755
    :cond_1
    :try_start_4
    const-string v1, "AnalyticsTracker"

    const-string v3, "not ready for reporting."

    invoke-static {v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "AnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some error occured when dispatch. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final getReaperServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserIdClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->g:I

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initializing................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    .line 128
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->setContext(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->setOnNetworkListener(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->readConfigFromPreferences()V

    .line 131
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialize()V

    .line 132
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d()V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a()V

    .line 136
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->resetCurrentActivitySeqNumber()V

    .line 137
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->resetCurrentUserActionSeqNumber()V

    .line 138
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setTrackerInitialized(Z)V

    .line 139
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured when initital AnalyticsTracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationToken"    # Ljava/lang/String;
    .param p3, "reportIntervalInSeconds"    # I

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 162
    :cond_1
    const-string v1, "AnalyticsTracker"

    const-string v2, "application token should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured when initital AnalyticsTracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    :cond_2
    :try_start_3
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initializing................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    .line 167
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->setContext(Landroid/content/Context;)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->setOnNetworkListener(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->readConfigFromPreferences()V

    .line 170
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialize(Ljava/lang/String;I)V

    .line 171
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d()V

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a()V

    .line 175
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->resetCurrentActivitySeqNumber()V

    .line 176
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->resetCurrentUserActionSeqNumber()V

    .line 177
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setTrackerInitialized(Z)V

    .line 178
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public final isTrackerInitialized()Z
    .locals 2

    .prologue
    .line 781
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    const-string v0, "AnalyticsTracker"

    const-string v1, "please Call initialize() of AnalyticsTracker Once, before use it."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x0

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final needReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 207
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z

    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->needReport(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "AnalyticsTracker"

    const-string v3, "some error occured in needReport."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->e:Z

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->setParam(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in setParam. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setReaperServerUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "reaperServerUrl"    # Ljava/lang/String;

    .prologue
    .line 729
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 730
    :cond_0
    const-string v1, "AnalyticsTracker"

    const-string v2, "reaper server url should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 733
    :cond_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 734
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->h:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured when setReaperServerUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    if-nez p1, :cond_1

    .line 634
    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->j:Ljava/lang/String;

    .line 635
    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->k:Ljava/lang/String;

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->j:Ljava/lang/String;

    .line 638
    const-string v0, "LenovoID"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 653
    :cond_0
    if-nez p1, :cond_1

    .line 654
    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->j:Ljava/lang/String;

    .line 655
    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->k:Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->j:Ljava/lang/String;

    .line 658
    if-nez p2, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 709
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->g:I

    .line 710
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 686
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    const-string v0, "AnalyticsTracker"

    const-string v1, "version name of application should not be null or empty."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_1
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 793
    return-void
.end method

.method public final trackActivity(Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    const-string v0, "AnalyticsTracker"

    const-string v1, "action of activity event should not be null or empty."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    const-string v0, "__PAGEVIEW__"

    invoke-virtual {p0, v0, p1, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, "__PAGEVIEW__"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 262
    :cond_1
    const-string v1, "AnalyticsTracker"

    const-string v2, "categoty of event should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V

    goto :goto_0

    .line 266
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 267
    :cond_3
    const-string v1, "AnalyticsTracker"

    const-string v2, "action of event should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->needReport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 272
    const-string v1, "AnalyticsTracker"

    const-string v2, "the Event is NOT need send."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V

    goto :goto_0

    .line 277
    :cond_5
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    .local v0, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->d:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->getCustomParamManager()Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->getAllCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->setCustomParameters([Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;)V

    .line 279
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V

    .line 281
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;

    move-result-object v1

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$2;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Lcom/lenovo/lps/reaper/sdk/api/Event;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final trackFeedback(Ljava/lang/String;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 553
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 556
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured in trackFeedback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "__FEEDBACK__"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->b:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final trackInstalledApps(Z)V
    .locals 2
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 585
    const-string v0, "AnalyticsTracker"

    const-string v1, "Context is Null in trackInstalledApps"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 588
    :cond_0
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;Z)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker$3;->start()V

    goto :goto_0
.end method

.method public final trackPagePause(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public final trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    .local v0, "currentTime":J
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v2

    .line 433
    .local v2, "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getPageViewTimeMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getPageViewTimeMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, p1, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1
    const/4 v3, 0x2

    const-string v4, "PAGE_QUEUE_NO"

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    if-eqz p2, :cond_2

    .line 440
    const/4 v3, 0x3

    const-string v4, "FRAME_PAGE"

    invoke-virtual {p0, v3, v4, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_2
    const-string v3, "__PAGEVIEW__"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v0    # "currentTime":J
    .end local v2    # "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    :catch_0
    move-exception v3

    const-string v3, "AnalyticsTracker"

    const-string v4, "some error occured in trackPagePause."

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final trackPageResume(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public final trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    .line 372
    .local v1, "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->setRecentTrackedPageview(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentActivitySeqNumber()V

    .line 375
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentUserActionSeqNumber()V

    .line 376
    const/4 v2, 0x2

    const-string v3, "PAGE_QUEUE_NO"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    if-eqz p2, :cond_1

    .line 379
    const/4 v2, 0x3

    const-string v3, "FRAME_PAGE"

    invoke-virtual {p0, v2, v3, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_1
    const/4 v2, 0x4

    const-string v3, "USER_ACTION_QUEUE_NO"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "__PAGEVIEW__"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v1    # "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AnalyticsTracker"

    const-string v3, "some error occured in trackPageResume."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final trackPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_0
    if-nez p1, :cond_1

    .line 402
    const-string v0, "AnalyticsTracker"

    const-string v1, "context of trackResume/Pause should not be null."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    const-string v0, "AnalyticsTracker"

    const-string v1, "some error occured in trackPause."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final trackResume(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 339
    :cond_0
    if-nez p1, :cond_1

    .line 340
    const-string v0, "AnalyticsTracker"

    const-string v1, "context of trackResume/Pause should not be null."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    const-string v0, "AnalyticsTracker"

    const-string v1, "some error occured in trackResume."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final trackThrowable(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 483
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a(Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured in trackThrowable. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final trackUserAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "userActionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    return-void
.end method

.method public final trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userActionName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v1

    .line 465
    .local v1, "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentUserActionSeqNumber()V

    .line 466
    const/4 v2, 0x4

    const-string v3, "USER_ACTION_QUEUE_NO"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v2, "__NEWUA__"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v1    # "manager":Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AnalyticsTracker"

    const-string v3, "some error occured in trackUserAction."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
