.class final Ltms/bb$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ltms/bb;

.field private b:[B

.field private c:[Ltms/bb$d;

.field private d:Landroid/database/ContentObserver;

.field private e:Z


# direct methods
.method public constructor <init>(Ltms/bb;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Ltms/bb$c;->a:Ltms/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Ltms/bb$c;->b:[B

    new-array v0, v1, [Ltms/bb$d;

    iput-object v0, p0, Ltms/bb$c;->c:[Ltms/bb$d;

    invoke-direct {p0}, Ltms/bb$c;->a()V

    new-instance v0, Ltms/an;

    new-instance v1, Landroid/os/Handler;

    invoke-static {p1}, Ltms/bb;->b(Ltms/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1}, Ltms/an;-><init>(Ltms/bb$c;Landroid/os/Handler;Ltms/bb;)V

    iput-object v0, p0, Ltms/bb$c;->d:Landroid/database/ContentObserver;

    invoke-static {p1}, Ltms/bb;->a(Ltms/bb;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Ltms/bb;->c(Ltms/bb;)Ltms/bb$e;

    move-result-object v1

    invoke-interface {v1}, Ltms/bb$e;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Ltms/bb$c;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private a(I)I
    .locals 6

    iget-object v4, p0, Ltms/bb$c;->b:[B

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Ltms/bb$c;->c:[Ltms/bb$d;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    :goto_0
    if-lt v1, v0, :cond_2

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Ltms/bb$c;->c:[Ltms/bb$d;

    aget-object v5, v5, v2

    iget v5, v5, Ltms/bb$d;->a:I

    if-ne p1, v5, :cond_0

    move v0, v2

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    if-le p1, v5, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private a()V
    .locals 1

    new-instance v0, Ltms/av;

    invoke-direct {v0, p0}, Ltms/av;-><init>(Ltms/bb$c;)V

    invoke-virtual {v0}, Ltms/av;->start()V

    return-void
.end method

.method static synthetic a(Ltms/bb$c;)[B
    .locals 1

    iget-object v0, p0, Ltms/bb$c;->b:[B

    return-object v0
.end method

.method static synthetic a(Ltms/bb$c;[Ltms/bb$d;)[Ltms/bb$d;
    .locals 0

    iput-object p1, p0, Ltms/bb$c;->c:[Ltms/bb$d;

    return-object p1
.end method

.method static synthetic b(Ltms/bb$c;)V
    .locals 0

    invoke-direct {p0}, Ltms/bb$c;->a()V

    return-void
.end method

.method static synthetic c(Ltms/bb$c;)Z
    .locals 1

    iget-boolean v0, p0, Ltms/bb$c;->e:Z

    return v0
.end method

.method static synthetic d(Ltms/bb$c;)[Ltms/bb$d;
    .locals 1

    iget-object v0, p0, Ltms/bb$c;->c:[Ltms/bb$d;

    return-object v0
.end method

.method static synthetic e(Ltms/bb$c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltms/bb$c;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Ltms/ag;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ltms/ag;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Ltms/bb$c;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Ltms/bb$c;->d:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltms/bb$c;->a:Ltms/bb;

    invoke-static {v0}, Ltms/bb;->a(Ltms/bb;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltms/bb$c;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
