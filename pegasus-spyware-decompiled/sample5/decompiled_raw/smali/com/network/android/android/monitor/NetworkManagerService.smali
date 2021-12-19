.class public final Lcom/network/android/android/monitor/NetworkManagerService;
.super Landroid/app/Service;


# static fields
.field private static final a:[Ljava/lang/Class;

.field private static final b:[Ljava/lang/Class;

.field private static final c:[Ljava/lang/Class;


# instance fields
.field private d:Landroid/app/NotificationManager;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:[Ljava/lang/Object;

.field private i:[Ljava/lang/Object;

.field private j:[Ljava/lang/Object;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/network/android/android/monitor/NetworkManagerService;->a:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/network/android/android/monitor/NetworkManagerService;->b:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/network/android/android/monitor/NetworkManagerService;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->h:[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->i:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->j:[Ljava/lang/Object;

    const/16 v0, 0x7b9

    iput v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->k:I

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/network/android/android/monitor/NetworkManagerService;->i:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke method"

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unable to invoke method"

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/network/android/monitor/a/c;)V
    .locals 3

    const-string v0, "NetworkManagerService start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/network/android/android/monitor/NetworkManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v1, "object.hashcode"

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "NetworkManagerService start ended"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->finalize()V

    const-string v0, "NetworkManagerService finalize"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "NetworkManagerService onCreate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/network/android/android/monitor/NetworkManagerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->d:Landroid/app/NotificationManager;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    sget-object v2, Lcom/network/android/android/monitor/NetworkManagerService;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    sget-object v2, Lcom/network/android/android/monitor/NetworkManagerService;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    sget-object v2, Lcom/network/android/android/monitor/NetworkManagerService;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, p0, Lcom/network/android/android/monitor/NetworkManagerService;->k:I

    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->f:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->i:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/network/android/android/monitor/NetworkManagerService;->i:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->f:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->i:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/network/android/android/monitor/NetworkManagerService;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/network/android/android/monitor/NetworkManagerService;->f:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->h:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->h:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/network/android/android/monitor/NetworkManagerService;->a()V

    iget-object v2, p0, Lcom/network/android/android/monitor/NetworkManagerService;->d:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "NetworkManagerService finalize"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/roomTap/k;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/network/android/android/monitor/NetworkManagerService;->stopForeground(Z)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string v1, "NetworkManagerService onStartCommand"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkManagerService onStartFor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_ENTRY_POINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v3, Lcom/network/e/a/a;

    invoke-direct {v3, p0, p0, p1}, Lcom/network/e/a/a;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "object.hashcode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/network/android/android/monitor/NetworkManagerService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/network/android/android/monitor/AndroidMonitorApplication;

    invoke-virtual {v1}, Lcom/network/android/android/monitor/AndroidMonitorApplication;->c()Lcom/network/e/a/b;

    move-result-object v4

    if-eqz v2, :cond_2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v4, v1}, Lcom/network/e/a/b;->a(Ljava/lang/Integer;)Lcom/network/android/monitor/observer/r;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/network/android/monitor/observer/r;->a(Lcom/network/e/a/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkManagerService watcher.service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_1
    const-string v1, "NetworkManagerService onStart end"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_2
    const/4 v1, 0x2

    return v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v3}, Lcom/network/e/a/b;->a(Lcom/network/android/monitor/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "NetworkManagerService fail"

    invoke-static {v2, v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_DUMP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "commandAck"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkManagerService onStartFor dump commandAck: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/network/media/f;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
