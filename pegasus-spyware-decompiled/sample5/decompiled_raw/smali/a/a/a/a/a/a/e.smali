.class public final La/a/a/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:La/a/a/a/a/a/b;

.field private d:La/a/a/a/a/a/e/g;

.field private e:La/a/a/a/a/a/a;

.field private f:La/a/a/a/a/a/f;

.field private g:La/a/a/a/a/a/d/a;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;La/a/a/a/a/a/b;La/a/a/a/a/a/f;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/e;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    iput-object v1, p0, La/a/a/a/a/a/e;->c:La/a/a/a/a/a/b;

    iput-object v1, p0, La/a/a/a/a/a/e;->e:La/a/a/a/a/a/a;

    iput-object v1, p0, La/a/a/a/a/a/e;->f:La/a/a/a/a/a/f;

    iput-object p1, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    new-instance v0, La/a/a/a/a/a/e/g;

    invoke-direct {v0, p5}, La/a/a/a/a/a/e/g;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    iput-object p2, p0, La/a/a/a/a/a/e;->e:La/a/a/a/a/a/a;

    iput-object p3, p0, La/a/a/a/a/a/e;->c:La/a/a/a/a/a/b;

    iput-object p4, p0, La/a/a/a/a/a/e;->f:La/a/a/a/a/a/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, La/a/a/a/a/a/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/e;->a:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Comms Sender"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x320

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-boolean v0, p0, La/a/a/a/a/a/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x321

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

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

.method public final run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    :cond_0
    :goto_0
    iget-boolean v2, p0, La/a/a/a/a/a/e;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    if-nez v2, :cond_2

    :cond_1
    iget-object v1, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x325

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x322

    invoke-virtual {v2, v3}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v2, p0, La/a/a/a/a/a/e;->c:La/a/a/a/a/a/b;

    invoke-virtual {v2}, La/a/a/a/a/a/b;->a()La/a/a/a/a/a/e/u;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, La/a/a/a/a/a/e/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/e/g;->a(La/a/a/a/a/a/e/u;)V

    iget-object v2, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    invoke-virtual {v2}, La/a/a/a/a/a/e/g;->flush()V

    :goto_1
    instance-of v2, v0, La/a/a/a/a/a/e/e;

    if-eqz v2, :cond_0

    iget-object v3, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch La/a/a/a/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v4, 0x323

    invoke-virtual {v2, v4}, La/a/a/a/a/a/d/a;->a(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, La/a/a/a/a/a/e;->a:Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch La/a/a/a/a/i; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v2

    iget-object v3, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, La/a/a/a/a/a/e;->a:Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v3, p0, La/a/a/a/a/a/e;->e:La/a/a/a/a/a/a;

    invoke-virtual {v3, v2}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto :goto_0

    :cond_3
    :try_start_5
    iget-object v2, p0, La/a/a/a/a/a/e;->f:La/a/a/a/a/a/f;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/f;->a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v3

    monitor-enter v3
    :try_end_5
    .catch La/a/a/a/a/i; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v2, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/e/g;->a(La/a/a/a/a/a/e/u;)V

    iget-object v2, p0, La/a/a/a/a/a/e;->d:La/a/a/a/a/a/e/g;

    invoke-virtual {v2}, La/a/a/a/a/a/e/g;->flush()V

    iget-object v2, p0, La/a/a/a/a/a/e;->c:La/a/a/a/a/a/b;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/b;->b(La/a/a/a/a/a/e/u;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catch La/a/a/a/a/i; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v2

    iget-object v3, p0, La/a/a/a/a/a/e;->g:La/a/a/a/a/a/d/a;

    const/16 v4, 0x324

    invoke-virtual {v3, v4, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_4

    instance-of v3, v0, La/a/a/a/a/a/e/e;

    if-eqz v3, :cond_4

    iget-object v3, p0, La/a/a/a/a/a/e;->c:La/a/a/a/a/a/b;

    invoke-virtual {v3, v0}, La/a/a/a/a/a/b;->b(La/a/a/a/a/a/e/u;)V

    :cond_4
    iput-boolean v5, p0, La/a/a/a/a/a/e;->a:Z

    iget-object v3, p0, La/a/a/a/a/a/e;->e:La/a/a/a/a/a/a;

    new-instance v4, La/a/a/a/a/i;

    invoke-direct {v4, v2, v5}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;B)V

    invoke-virtual {v3, v4}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto/16 :goto_0

    :cond_5
    :try_start_8
    iget-object v3, p0, La/a/a/a/a/a/e;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch La/a/a/a/a/i; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, La/a/a/a/a/a/e;->a:Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3

    throw v2
    :try_end_a
    .catch La/a/a/a/a/i; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method
