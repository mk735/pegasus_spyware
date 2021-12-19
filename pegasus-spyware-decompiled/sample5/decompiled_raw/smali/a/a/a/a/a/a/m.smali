.class public final La/a/a/a/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/h;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:La/a/a/a/a/j;

.field private d:La/a/a/a/a/a/e/u;

.field private e:La/a/a/a/a/i;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:La/a/a/a/a/a/d/a;


# direct methods
.method constructor <init>(La/a/a/a/a/a/d/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    iput-object v2, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    iput-object v2, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    iput-boolean v1, p0, La/a/a/a/a/a/m;->f:Z

    iput-boolean v1, p0, La/a/a/a/a/a/m;->g:Z

    iput v1, p0, La/a/a/a/a/a/m;->h:I

    iput-object v2, p0, La/a/a/a/a/a/m;->c:La/a/a/a/a/j;

    iput-object p1, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    return-void
.end method

.method constructor <init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/e/o;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    iput-object v2, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    iput-object v2, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    iput-boolean v1, p0, La/a/a/a/a/a/m;->f:Z

    iput-boolean v1, p0, La/a/a/a/a/a/m;->g:Z

    iput v1, p0, La/a/a/a/a/a/m;->h:I

    iput-object p1, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    invoke-virtual {p2}, La/a/a/a/a/a/e/o;->h()La/a/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/m;->c:La/a/a/a/a/j;

    invoke-virtual {p2}, La/a/a/a/a/a/e/o;->i()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/m;->h:I

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/a/j;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/m;->c:La/a/a/a/a/j;

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a/m;->b(J)La/a/a/a/a/a/e/u;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v1, 0x196

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, La/a/a/a/a/i;

    const/16 v1, 0x7d00

    invoke-direct {v0, v1}, La/a/a/a/a/i;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method protected final a(La/a/a/a/a/a/e/u;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v1, 0x194

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    instance-of v0, p1, La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/m;->c:La/a/a/a/a/j;

    :cond_0
    iput-object p1, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    iget-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(La/a/a/a/a/i;)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v1, 0x195

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2, p1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    iget-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b(J)La/a/a/a/a/a/e/u;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v3, 0x190

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, La/a/a/a/a/a/m;->f:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v0

    const/4 v0, 0x3

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, La/a/a/a/a/a/m;->g:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v0

    const/4 v5, 0x4

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    if-nez v0, :cond_1

    const-string v0, "false"

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x5

    iget-object v5, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    aput-object v5, v4, v0

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    invoke-virtual {v2, v3, v4, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "true"

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    :try_start_2
    iget-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    if-nez v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    const/4 v2, 0x0

    iput-object v2, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    iget-object v2, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v3, 0x191

    const/4 v4, 0x0

    iget-object v5, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    invoke-virtual {v2, v3, v4, v5}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v1, 0x192

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    goto :goto_1
.end method

.method protected final b()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, La/a/a/a/a/a/m;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_1

    :try_start_5
    iget-object v0, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :goto_0
    :try_start_6
    iget-boolean v0, p0, La/a/a/a/a/a/m;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, La/a/a/a/a/a/m;->e:La/a/a/a/a/i;

    throw v0

    :cond_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/a/a/a/a/a/m;->i:La/a/a/a/a/a/d/a;

    const/16 v1, 0x193

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, La/a/a/a/a/a/m;->d:La/a/a/a/a/a/e/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, La/a/a/a/a/a/m;->f:Z

    iget-object v0, p0, La/a/a/a/a/a/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/m;->g:Z

    return v0
.end method
