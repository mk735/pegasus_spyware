.class public final La/a/a/a/a/a/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:La/a/a/a/a/a/d/b;

.field private static b:S


# instance fields
.field private c:S

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-short v0, La/a/a/a/a/a/d/a;->b:S

    return-void
.end method

.method private constructor <init>(SLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, La/a/a/a/a/a/d/a;->c:S

    iput-object p2, p0, La/a/a/a/a/a/d/a;->d:Ljava/lang/String;

    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    iget-object v1, p0, La/a/a/a/a/a/d/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, La/a/a/a/a/a/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, La/a/a/a/a/a/d/a;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)La/a/a/a/a/a/d/a;
    .locals 3

    const-class v1, La/a/a/a/a/a/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    if-nez v0, :cond_0

    const-string v0, "java.io.File"

    invoke-static {v0}, La/a/a/a/a/a/h;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "a.a.a.a.a.a.d.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/d/b;

    sput-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, La/a/a/a/a/a/d/a;

    sget-short v2, La/a/a/a/a/a/d/a;->b:S

    invoke-direct {v0, v2, p0}, La/a/a/a/a/a/d/a;-><init>(SLjava/lang/String;)V

    sget-short v2, La/a/a/a/a/a/d/a;->b:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    sput-short v2, La/a/a/a/a/a/d/a;->b:S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, La/a/a/a/a/a/d/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    new-instance v1, La/a/a/a/a/a/d/d;

    iget-short v2, p0, La/a/a/a/a/a/d/a;->c:S

    invoke-direct {v1, v2, p1, v3, v3}, La/a/a/a/a/a/d/d;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, La/a/a/a/a/a/d/b;->a(La/a/a/a/a/a/d/d;)V

    :cond_0
    return-void
.end method

.method public final a(I[Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, La/a/a/a/a/a/d/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    new-instance v1, La/a/a/a/a/a/d/d;

    iget-short v2, p0, La/a/a/a/a/a/d/a;->c:S

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, La/a/a/a/a/a/d/d;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, La/a/a/a/a/a/d/b;->a(La/a/a/a/a/a/d/d;)V

    :cond_0
    return-void
.end method

.method public final a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, La/a/a/a/a/a/d/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/a/d/a;->a:La/a/a/a/a/a/d/b;

    new-instance v1, La/a/a/a/a/a/d/d;

    iget-short v2, p0, La/a/a/a/a/a/d/a;->c:S

    invoke-direct {v1, v2, p1, p3, p2}, La/a/a/a/a/a/d/d;-><init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, La/a/a/a/a/a/d/b;->a(La/a/a/a/a/a/d/d;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/d/a;->e:Z

    return v0
.end method
