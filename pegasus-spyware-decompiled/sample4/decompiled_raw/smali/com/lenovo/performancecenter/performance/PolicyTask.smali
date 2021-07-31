.class public Lcom/lenovo/performancecenter/performance/PolicyTask;
.super Ljava/util/TimerTask;
.source "PolicyTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field protected canKillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field public isRunning:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 29
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->a:Ljava/lang/String;

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->b:Ljava/lang/String;

    .line 36
    const/4 v2, 0x5

    iput v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->d:I

    .line 64
    const-string v2, ""

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->j:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->c:Landroid/os/Handler;

    .line 69
    iput-boolean v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->isRunning:Z

    .line 70
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 71
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->a:Ljava/lang/String;

    .line 78
    .end local v1    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    monitor-enter v5

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lcom/lenovo/performancecenter/performance/PolicyTask;->updatePolicyData(Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;Z)V

    .line 140
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    move-object v3, v0

    .line 145
    iget v4, v3, Lcom/lenovo/performancecenter/service/object/PolicyObject;->selfRunningCount:I

    sget v7, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleRuningCount:I

    if-ne v4, v7, :cond_0

    .line 146
    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v7

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 155
    const/4 v4, 0x0

    :try_start_4
    sput-boolean v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->sortBy:Z

    iget-object v8, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/lenovo/performancecenter/performance/PolicyTask;->a(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v6

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    iget v10, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->d:I

    if-gt v5, v10, :cond_2

    iget-wide v10, v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    const-wide/16 v12, 0x64

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    iget-object v10, v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->proName:Ljava/lang/String;

    iget-object v11, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->isInSysWhiteList(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v11, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v4, v5

    move v5, v4

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v10

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit v8

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 157
    :catchall_4
    move-exception v4

    monitor-exit v7

    throw v4

    .line 155
    :cond_3
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 156
    const/4 v4, 0x1

    :try_start_a
    sput-boolean v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->sortBy:Z

    iget-object v8, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/lenovo/performancecenter/performance/PolicyTask;->a(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v6

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->d:I

    if-gt v5, v6, :cond_5

    iget-wide v10, v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    iget-object v6, v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->proName:Ljava/lang/String;

    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/lenovo/performancecenter/framework/DataLayerManager;->isInSysWhiteList(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-wide v10, v4, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    const-wide/16 v12, 0xc8

    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v4, v5

    :goto_3
    move v5, v4

    goto :goto_2

    :catchall_5
    move-exception v4

    :try_start_d
    monitor-exit v6

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_4
    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 157
    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 158
    return-void

    :cond_5
    move v4, v5

    goto :goto_3
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/service/object/PolicyObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "poList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/performancecenter/service/object/PolicyObject;>;"
    new-instance v0, Lcom/lenovo/performancecenter/performance/PolicyTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/PolicyTask$1;-><init>(Lcom/lenovo/performancecenter/performance/PolicyTask;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 323
    sget v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleRuningCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleRuningCount:I

    .line 324
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->readRunningAppInfoPolicy(Landroid/content/Context;Lcom/lenovo/performancecenter/performance/PolicyTask;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    .line 326
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCanBeKilledApp()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->a()V

    .line 223
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .line 226
    .local v1, "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    iget-object v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    iget v5, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 228
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 229
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    monitor-enter v4

    .line 231
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    return-object v2

    .line 232
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public release()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 449
    :cond_4
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->b()V

    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->a()V

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_2
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [I

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    iget v0, v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pid:I

    aput v0, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_8

    array-length v4, v6

    move v1, v3

    move v0, v3

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    if-lez v6, :cond_2

    mul-int/lit16 v6, v6, 0x400

    add-int/2addr v0, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    move v0, v1

    move v1, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :try_start_4
    const-string v6, " -fs "

    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    invoke-static {v0, v2, v6, v7}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/PolicyTask;->b()V

    .line 239
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput v3, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleRuningCount:I

    .line 240
    return-void

    .line 238
    :catch_0
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->canKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    if-eqz v0, :cond_7

    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->i:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v0, v0, Lcom/lenovo/performancecenter/service/object/PolicyObject;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v0, v2

    :goto_5
    move v1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v4, v3

    goto :goto_2
.end method

.method public updatePolicyData(Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;Z)V
    .locals 10
    .param p1, "mUAI"    # Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;
    .param p2, "executePolicy"    # Z

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    new-array v0, v3, [J

    .line 90
    .local v0, "pidCpuTime":[J
    new-array v3, v3, [I

    iget v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->pid:I

    aput v4, v3, v9

    invoke-static {v3, v0}, Lcom/lenovo/performancecenter/LeemCenterJNITools;->getPidCpuTime_native([I[J)I

    move-result v2

    .line 92
    .local v2, "ret":I
    if-nez v2, :cond_1

    .line 93
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    check-cast v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .line 101
    .restart local v1    # "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    :goto_0
    iget-object v3, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    if-eqz p2, :cond_3

    .line 107
    iget-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 108
    iget-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleQianTaiCpuTime:J

    aget-wide v5, v0, v9

    iget-wide v7, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleQianTaiCpuTime:J

    .line 122
    :cond_0
    :goto_1
    if-eqz p2, :cond_5

    .line 123
    aget-wide v3, v0, v9

    iget-wide v5, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastCpuTime:J

    sub-long/2addr v3, v5

    iget-wide v5, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleQianTaiCpuTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->cpuTimeSpace:J

    .line 129
    :goto_2
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->f:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    return-void

    .line 96
    :cond_2
    new-instance v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;

    .end local v1    # "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    iget v3, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->pid:I

    iget-object v4, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->label:Ljava/lang/String;

    iget-object v6, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->processName:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/lenovo/performancecenter/service/object/PolicyObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .restart local v1    # "po":Lcom/lenovo/performancecenter/service/object/PolicyObject;
    aget-wide v3, v0, v9

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastCpuTime:J

    goto :goto_0

    .line 111
    :cond_3
    aget-wide v3, v0, v9

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    goto :goto_1

    .line 113
    :cond_4
    iget-object v3, p1, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/PolicyTask;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 118
    iget-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleQianTaiCpuTime:J

    aget-wide v5, v0, v9

    iget-wide v7, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->lastQianTaiCputime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->totleQianTaiCpuTime:J

    goto :goto_1

    .line 126
    :cond_5
    iget v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->selfRunningCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->selfRunningCount:I

    .line 127
    invoke-virtual {p1}, Lcom/lenovo/performancecenter/service/object/PolicyAppInfo;->getTotleImpLevel()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/lenovo/performancecenter/service/object/PolicyObject;->impLevel:J

    goto :goto_2
.end method
