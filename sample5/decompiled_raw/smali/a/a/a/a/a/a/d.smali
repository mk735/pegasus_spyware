.class public final La/a/a/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:La/a/a/a/a/a/b;

.field private d:La/a/a/a/a/a/a;

.field private e:La/a/a/a/a/a/e/f;

.field private f:La/a/a/a/a/a/f;

.field private g:Z

.field private h:La/a/a/a/a/a/d/a;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;La/a/a/a/a/a/b;La/a/a/a/a/a/f;Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, La/a/a/a/a/a/d;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    iput-object v1, p0, La/a/a/a/a/a/d;->c:La/a/a/a/a/a/b;

    iput-object v1, p0, La/a/a/a/a/a/d;->d:La/a/a/a/a/a/a;

    iput-object v1, p0, La/a/a/a/a/a/d;->f:La/a/a/a/a/a/f;

    iput-boolean v2, p0, La/a/a/a/a/a/d;->g:Z

    new-instance v0, La/a/a/a/a/a/e/f;

    invoke-direct {v0, p5}, La/a/a/a/a/a/e/f;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/d;->e:La/a/a/a/a/a/e/f;

    iput-object p2, p0, La/a/a/a/a/a/d;->d:La/a/a/a/a/a/a;

    iput-object p3, p0, La/a/a/a/a/a/d;->c:La/a/a/a/a/a/b;

    iput-object p4, p0, La/a/a/a/a/a/d;->f:La/a/a/a/a/a/f;

    iput-object p1, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, La/a/a/a/a/a/d;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/d;->a:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Comms Receiver"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v2, 0x352

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-boolean v0, p0, La/a/a/a/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v2, 0x353

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v1, 0x357

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iput-boolean v5, p0, La/a/a/a/a/a/d;->g:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v0, p0, La/a/a/a/a/a/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/d;->e:La/a/a/a/a/a/e/f;

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v2, 0x356

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v1, 0x354

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/d;->e:La/a/a/a/a/a/e/f;

    invoke-virtual {v0}, La/a/a/a/a/a/e/f;->a()La/a/a/a/a/a/e/u;

    move-result-object v0

    instance-of v1, v0, La/a/a/a/a/a/e/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/a/a/a/a/d;->f:La/a/a/a/a/a/f;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/f;->a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v1

    if-eqz v1, :cond_3

    monitor-enter v1
    :try_end_1
    .catch La/a/a/a/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, La/a/a/a/a/a/d;->c:La/a/a/a/a/a/b;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/b;->c(La/a/a/a/a/a/e/u;)V

    instance-of v2, v0, La/a/a/a/a/a/e/c;

    if-eqz v2, :cond_2

    check-cast v0, La/a/a/a/a/a/e/c;

    invoke-virtual {v0}, La/a/a/a/a/a/e/c;->a_()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, La/a/a/a/a/a/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, La/a/a/a/a/a/d;->a:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch La/a/a/a/a/i; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    iput-boolean v3, p0, La/a/a/a/a/a/d;->a:Z

    iget-object v1, p0, La/a/a/a/a/a/d;->d:La/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    iget-object v1, p0, La/a/a/a/a/a/d;->c:La/a/a/a/a/a/b;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/b;->c(La/a/a/a/a/a/e/u;)V
    :try_end_7
    .catch La/a/a/a/a/i; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/d;->h:La/a/a/a/a/a/d/a;

    const/16 v2, 0x355

    invoke-virtual {v1, v2, v4, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, La/a/a/a/a/a/d;->a:Z

    iget-boolean v1, p0, La/a/a/a/a/a/d;->g:Z

    if-nez v1, :cond_5

    iget-object v1, p0, La/a/a/a/a/a/d;->d:La/a/a/a/a/a/a;

    new-instance v2, La/a/a/a/a/i;

    invoke-direct {v2, v0, v3}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;B)V

    invoke-virtual {v1, v2}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto :goto_0

    :cond_4
    :try_start_8
    iget-object v1, p0, La/a/a/a/a/a/d;->c:La/a/a/a/a/a/b;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/b;->c(La/a/a/a/a/a/e/u;)V
    :try_end_8
    .catch La/a/a/a/a/i; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/a/a/a/a/a/d;->d:La/a/a/a/a/a/a;

    invoke-virtual {v0, v4}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
