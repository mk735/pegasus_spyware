.class public final Lcom/network/android/monitor/observer/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static c:Landroid/os/Handler;

.field private static d:I

.field private static e:Ljava/util/Map;

.field private static f:Z

.field private static g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/network/android/monitor/observer/i;->a:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/network/android/monitor/observer/i;->b:Landroid/net/Uri;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyContact"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/network/android/monitor/observer/i;->c:Landroid/os/Handler;

    sput v2, Lcom/network/android/monitor/observer/i;->d:I

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/monitor/observer/i;->e:Ljava/util/Map;

    sput-boolean v2, Lcom/network/android/monitor/observer/i;->f:Z

    sput-boolean v2, Lcom/network/android/monitor/observer/i;->g:Z

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/network/android/monitor/observer/i;->d:I

    return p0
.end method

.method static synthetic a()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/network/android/monitor/observer/i;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/network/android/m;->b(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/network/android/monitor/observer/i;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/network/android/monitor/observer/i;->h:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/network/android/monitor/observer/i;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "scanAndLoad start "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/monitor/observer/i;->h:Z

    sget-object v0, Lcom/network/android/monitor/observer/i;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/android/monitor/observer/j;

    invoke-direct {v2, p0}, Lcom/network/android/monitor/observer/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "scanAndLoad end "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contacts  start Exception- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "scanAndLoad end "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/network/android/monitor/observer/i;->g:Z

    return p0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/network/android/monitor/observer/i;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "scanContactEvent"

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/android/monitor/observer/g;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/network/android/monitor/observer/i;->f:Z

    if-nez v0, :cond_1

    const-string v0, "scanContactEvent  - mapLoaded yet!"

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/network/android/monitor/observer/i;->c:Landroid/os/Handler;

    new-instance v2, Lcom/network/android/monitor/observer/k;

    invoke-direct {v2, v0, p0}, Lcom/network/android/monitor/observer/k;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/monitor/observer/i;->f:Z

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/network/android/monitor/observer/i;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/network/android/monitor/observer/i;->d:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/network/android/monitor/observer/i;->d:I

    return v0
.end method
