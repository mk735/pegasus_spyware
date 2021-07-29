.class public Ltms/h;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ltms/h;->a:Z

    sput-boolean v0, Ltms/h;->b:Z

    new-instance v0, Ltms/fs;

    invoke-direct {v0}, Ltms/fs;-><init>()V

    sput-object v0, Ltms/h;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v1, Ltms/h;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Ltms/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Ltms/h;->a:Z

    new-instance v0, Ltms/af;

    const-string v2, "tms"

    invoke-direct {v0, v2}, Ltms/af;-><init>(Ljava/lang/String;)V

    const-string v2, "reportlc"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ltms/af;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ltms/ft;

    invoke-direct {v2, v0}, Ltms/ft;-><init>(Ltms/af;)V

    invoke-virtual {v2}, Ltms/ft;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Ltms/h;->b:Z

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Ltms/h;->a:Z

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Ltms/h;->b:Z

    return v0
.end method

.method static synthetic d()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Ltms/h;->c:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ltms/h;->a:Z

    return v0
.end method
