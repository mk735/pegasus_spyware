.class public final La/a/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:I


# instance fields
.field private b:La/a/a/a/a/a;

.field private c:La/a/a/a/a/a/a;

.field private d:Ljava/util/Vector;

.field private e:Ljava/util/Vector;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Thread;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:La/a/a/a/a/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, La/a/a/a/a/a/c;->a:I

    return-void
.end method

.method constructor <init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/a/a/a/a/c;->f:Z

    iput-boolean v1, p0, La/a/a/a/a/a/c;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/c;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    iput-boolean v1, p0, La/a/a/a/a/a/c;->l:Z

    iput-object p1, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    iput-object p2, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    new-instance v0, Ljava/util/Vector;

    sget v1, La/a/a/a/a/a/c;->a:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    sget v1, La/a/a/a/a/a/c;->a:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/c;->g:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Callback"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/c;->i:Ljava/lang/Thread;

    iget-object v0, p0, La/a/a/a/a/a/c;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final a(La/a/a/a/a/a/e/o;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/c;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v2, La/a/a/a/a/a/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2c5

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

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

    iget-boolean v0, p0, La/a/a/a/a/a/c;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2c6

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(La/a/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    return-void
.end method

.method public final a(La/a/a/a/a/h;)V
    .locals 5

    iget-object v0, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0x2c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    invoke-interface {v0, p1}, La/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/a/c;->i:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/c;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0x2bd

    invoke-virtual {v0, v3}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2be

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0x2bf

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/c;->g:Z

    iget-object v1, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2c7

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, La/a/a/a/a/a/c;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2c8

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final d()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/c;->i:Ljava/lang/Thread;

    return-object v0
.end method

.method public final run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    :goto_0
    iget-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, La/a/a/a/a/a/c;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0x2c3

    invoke-virtual {v0, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0x2c0

    invoke-virtual {v0, v3}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-boolean v0, p0, La/a/a/a/a/a/c;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/h;

    iget-object v1, p0, La/a/a/a/a/a/c;->e:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v1}, La/a/a/a/a/a/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0x2c1

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v1, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    invoke-interface {v1, v0}, La/a/a/a/a/a;->a(La/a/a/a/a/h;)V

    :cond_3
    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, La/a/a/a/a/a/c;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_4
    :goto_2
    iget-object v1, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0x2c2

    invoke-virtual {v0, v3}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/c;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v10, p0, La/a/a/a/a/a/c;->l:Z

    iget-object v0, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/e/o;

    iget-object v1, p0, La/a/a/a/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v1, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    invoke-virtual {v1}, La/a/a/a/a/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, La/a/a/a/a/a/e/o;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v3, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    invoke-virtual {v3, v1}, La/a/a/a/a/a/a;->a(Ljava/lang/String;)La/a/a/a/a/n;

    move-result-object v1

    :goto_3
    :try_start_5
    iget-object v3, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v3}, La/a/a/a/a/a/d/a;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v4, 0x2c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, La/a/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/e/o;->i()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, La/a/a/a/a/a/c;->b:La/a/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a/a/e/o;->h()La/a/a/a/a/j;

    move-result-object v4

    invoke-interface {v3, v1, v4}, La/a/a/a/a/a;->a(La/a/a/a/a/n;La/a/a/a/a/j;)V

    invoke-virtual {v0}, La/a/a/a/a/a/e/o;->h()La/a/a/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/j;->d()I

    move-result v1

    if-ne v1, v10, :cond_8

    iget-object v1, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    new-instance v3, La/a/a/a/a/a/e/k;

    invoke-direct {v3, v0}, La/a/a/a/a/a/e/k;-><init>(La/a/a/a/a/a/e/o;)V

    invoke-virtual {v1, v3}, La/a/a/a/a/a/a;->b(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    :goto_4
    iput-boolean v9, p0, La/a/a/a/a/a/c;->l:Z

    goto/16 :goto_2

    :cond_8
    :try_start_6
    invoke-virtual {v0}, La/a/a/a/a/a/e/o;->h()La/a/a/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/j;->d()I

    move-result v1

    if-ne v1, v11, :cond_7

    iget-object v1, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/e/o;)V

    new-instance v1, La/a/a/a/a/a/e/l;

    invoke-direct {v1, v0}, La/a/a/a/a/a/e/l;-><init>(La/a/a/a/a/a/e/o;)V

    iget-object v0, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/a;->b(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/c;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0x2ca

    invoke-virtual {v1, v3, v2, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, La/a/a/a/a/a/c;->c:La/a/a/a/a/a/a;

    new-instance v3, La/a/a/a/a/i;

    invoke-direct {v3, v0}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method
