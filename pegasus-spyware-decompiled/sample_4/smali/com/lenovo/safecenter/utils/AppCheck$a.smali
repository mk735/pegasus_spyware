.class final Lcom/lenovo/safecenter/utils/AppCheck$a;
.super Ljava/lang/Thread;
.source "AppCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/AppCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/AppCheck;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/AppCheck;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)V
    .locals 8
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    aget-object v2, p1, v5

    const-string v3, "runningTask"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string v0, "com.lenovo.safecenter.activityswitch"

    .line 142
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v2, "AppCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "------------action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "newPkg"

    aget-object v2, p1, v6

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v3, "oldPkg"

    aget-object v2, p1, v7

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/AppCheck;->g(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/AppCheck;->g(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safe_input_method"

    const-string v4, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    const-string v2, "AppCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "------------end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 140
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    const-string v0, "com.lenovo.safecenter.activityswitch2"

    .restart local v0    # "action":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 72
    const-string v3, "AppCheck"

    const-string v4, "doInBackground-->  <14"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    if-eqz v3, :cond_4

    .line 75
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->a(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 78
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/utils/AppCheck;->a(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runningTask"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/utils/AppCheck$a;->a([Ljava/lang/Object;)V

    .line 84
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "recentTask"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/utils/AppCheck$a;->a([Ljava/lang/Object;)V

    .line 85
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 87
    .end local v2    # "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "AppCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v3, "AppCheck"

    const-string v4, "doInBackground-->  >14"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    if-eqz v3, :cond_4

    .line 102
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 103
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->a(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v2

    .line 104
    .restart local v2    # "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 105
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/utils/AppCheck;->a(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 107
    const-string v3, "AppCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "------------new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runningTask"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/utils/AppCheck$a;->a([Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/AppCheck;->b(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->d(Lcom/lenovo/safecenter/utils/AppCheck;)Landroid/app/ActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 115
    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/utils/AppCheck;->c(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/AppCheck;->f(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->e(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "recentTask"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->e(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/AppCheck;->f(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/lenovo/safecenter/utils/AppCheck$a;->a([Ljava/lang/Object;)V

    .line 119
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/AppCheck$a;->a:Lcom/lenovo/safecenter/utils/AppCheck;

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/AppCheck;->e(Lcom/lenovo/safecenter/utils/AppCheck;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/AppCheck;->d(Lcom/lenovo/safecenter/utils/AppCheck;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    .line 122
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v2    # "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_3
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "AppCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    return-void
.end method
