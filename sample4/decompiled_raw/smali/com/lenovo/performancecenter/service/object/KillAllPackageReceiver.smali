.class public Lcom/lenovo/performancecenter/service/object/KillAllPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KillAllPackageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 91
    invoke-static {p0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v5

    .line 92
    .local v5, "readRunningAppCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/4 v3, 0x0

    .line 93
    .local v3, "killedCount":I
    const/4 v0, 0x0

    .line 94
    .local v0, "clearedMemory":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v8

    add-int/2addr v0, v6

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v9

    if-ne v6, v8, :cond_0

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_1
    const/4 v6, 0x0

    const-string v7, " -fs "

    invoke-static {v6, v4, v7, p0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    .line 105
    new-array v6, v9, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    aput v0, v6, v8

    return-object v6
.end method

.method public static sendBroadcastAboutExeClearShortcut(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endMemory"    # I

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.PERFORMANCE_EXE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.PERFORMANCE_SHORTCUT_END_MEMORY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public static sendBroadcastAboutKillEvent(Landroid/content/Context;JI)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "killTime"    # J
    .param p3, "killPosition"    # I

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.PERFORMANCE_RECORD_KILL_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.PERFORMANCE_KILL_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 121
    const-string v1, "com.lenovo.safecenter.PERFORMANCE_KILL_POSITION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v9, "KillAllPackageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive ---> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v9, "com.lenovo.safecenter.clearapp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 54
    .local v7, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-static {v9, p1, v7}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killAllProcess(Landroid/os/Handler;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 85
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 56
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {p1, v6}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killProcess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v9, "com.lenovo.safecenter.PERFORMANCE_KILL_ALL_PROCESSES"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 61
    invoke-static {p1}, Lcom/lenovo/performancecenter/service/object/KillAllPackageReceiver;->a(Landroid/content/Context;)[I

    move-result-object v5

    .line 62
    .local v5, "killedCount":[I
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.lenovo.safecenter.PERFORMANCE_GET_KILL_RESULT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "it":Landroid/content/Intent;
    const-string v9, "com.lenovo.safecenter.PERFORMANCE_KILL_COUNT"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    const-string v9, "KillAllPackageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive ---> com.lenovo.safecenter.PERFORMANCE_KILL_COUNT num == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " memory == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v1    # "it":Landroid/content/Intent;
    .end local v5    # "killedCount":[I
    :cond_4
    const-string v9, "com.lenovo.safecenter.PERFORMANCE_KILL_SINGLE_PROCESS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 71
    const-string v9, "com.lenovo.safecenter.PERFORMANCE_SINGLE_PROCESS_PKGNAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "pkgName":Ljava/lang/String;
    const-string v9, " -fs "

    invoke-static {v8, v9, p1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 73
    const-string v9, "KillAllPackageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive ---> com.lenovo.safecenter.PERFORMANCE_KILL_SINGLE_PROCESS..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v9, "com.lenovo.safecenterwidget.RECORD_KILL_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    const-string v9, "com.lenovo.safecenterwidget.KILL_TIME"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 78
    .local v3, "killTime":J
    const-string v9, "com.lenovo.safecenterwidget.KILL_POSITION"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, "killPosition":I
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_1

    if-eqz v2, :cond_1

    .line 80
    invoke-static {p1, v3, v4, v2}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    goto/16 :goto_0
.end method
