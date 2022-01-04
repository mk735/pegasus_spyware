.class public final La/a/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/a/a/a/g;

.field private b:La/a/a/a/a/a/o;

.field private c:Z

.field private d:La/a/a/a/a/a/d;

.field private e:La/a/a/a/a/a/e;

.field private f:La/a/a/a/a/a/c;

.field private g:La/a/a/a/a/a/b;

.field private h:La/a/a/a/a/c;

.field private i:La/a/a/a/a/a/f;

.field private j:Z

.field private k:Ljava/lang/Thread;

.field private l:I

.field private m:La/a/a/a/a/a/d/a;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/g;La/a/a/a/a/c;La/a/a/a/a/a/d/a;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/a/a/a/a/a;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    iput-object p3, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    new-instance v0, La/a/a/a/a/a/c;

    invoke-direct {v0, p3, p0}, La/a/a/a/a/a/c;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;)V

    iput-object v0, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    iput-boolean v1, p0, La/a/a/a/a/a/a;->c:Z

    new-instance v0, La/a/a/a/a/a/f;

    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    invoke-direct {v0, v1}, La/a/a/a/a/a/f;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/a;->i:La/a/a/a/a/a/f;

    iput-object p1, p0, La/a/a/a/a/a/a;->a:La/a/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/a/b;

    iget-object v1, p0, La/a/a/a/a/a/a;->i:La/a/a/a/a/a/f;

    iget-object v2, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-direct {v0, p3, p2, v1, v2}, La/a/a/a/a/a/b;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/c;La/a/a/a/a/a/f;La/a/a/a/a/a/c;)V

    iput-object v0, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    iput-object p2, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    return-void
.end method

.method private c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, La/a/a/a/a/a/a;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/a/a/a/a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    instance-of v1, p1, La/a/a/a/a/a/e/o;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1}, La/a/a/a/a/a/b;->c()V

    invoke-virtual {v0}, La/a/a/a/a/a/m;->b()V
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1}, La/a/a/a/a/a/b;->d()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v1}, La/a/a/a/a/a/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    check-cast p1, La/a/a/a/a/a/e/o;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/e/o;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1}, La/a/a/a/a/a/b;->d()V

    throw v0

    :cond_3
    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0xd0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, La/a/a/a/a/a/a;->j:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, La/a/a/a/a/a/a;->c:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    const/16 v0, 0x7d68

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(La/a/a/a/a/a/e/d;IJZ)La/a/a/a/a/a/e/c;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-boolean v1, p0, La/a/a/a/a/a/a;->c:Z

    if-nez v1, :cond_3

    iput-boolean v2, p0, La/a/a/a/a/a/a;->j:Z

    iput p2, p0, La/a/a/a/a/a/a;->l:I

    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1, p3, p4}, La/a/a/a/a/a/b;->a(J)V

    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1, p5}, La/a/a/a/a/a/b;->a(Z)V

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/a;->b:La/a/a/a/a/a/o;

    invoke-interface {v1}, La/a/a/a/a/a/o;->a()V

    new-instance v1, La/a/a/a/a/a/d;

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    iget-object v4, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    iget-object v5, p0, La/a/a/a/a/a/a;->i:La/a/a/a/a/a/f;

    iget-object v3, p0, La/a/a/a/a/a/a;->b:La/a/a/a/a/a/o;

    invoke-interface {v3}, La/a/a/a/a/a/o;->b()Ljava/io/InputStream;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, La/a/a/a/a/a/d;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;La/a/a/a/a/a/b;La/a/a/a/a/a/f;Ljava/io/InputStream;)V

    iput-object v1, p0, La/a/a/a/a/a/a;->d:La/a/a/a/a/a/d;

    iget-object v1, p0, La/a/a/a/a/a/a;->d:La/a/a/a/a/a/d;

    invoke-virtual {v1}, La/a/a/a/a/a/d;->a()V

    new-instance v1, La/a/a/a/a/a/e;

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    iget-object v4, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    iget-object v5, p0, La/a/a/a/a/a/a;->i:La/a/a/a/a/a/f;

    iget-object v3, p0, La/a/a/a/a/a/a;->b:La/a/a/a/a/a/o;

    invoke-interface {v3}, La/a/a/a/a/a/o;->c()Ljava/io/OutputStream;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, La/a/a/a/a/a/e;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/a;La/a/a/a/a/a/b;La/a/a/a/a/a/f;Ljava/io/OutputStream;)V

    iput-object v1, p0, La/a/a/a/a/a/a;->e:La/a/a/a/a/a/e;

    iget-object v1, p0, La/a/a/a/a/a/a;->e:La/a/a/a/a/a/e;

    invoke-virtual {v1}, La/a/a/a/a/a/e;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/a/a/c;->a()V

    :try_start_1
    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v1

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/m;->b(J)La/a/a/a/a/a/e/u;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v1, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/a/c;->a()V

    const/16 v1, 0x7d00

    invoke-static {v1}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v1

    throw v1
    :try_end_1
    .catch La/a/a/a/a/i; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0xce

    invoke-virtual {v2, v3, v8, v1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v8}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    throw v1

    :catch_1
    move-exception v1

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0xd1

    invoke-virtual {v2, v3, v8, v1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    invoke-interface {v2}, La/a/a/a/a/c;->a()V

    invoke-static {v1}, La/a/a/a/a/a/h;->a(Ljava/lang/Throwable;)La/a/a/a/a/i;

    move-result-object v1

    throw v1

    :catch_2
    move-exception v1

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0xd4

    invoke-virtual {v2, v3, v8, v1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    invoke-interface {v2}, La/a/a/a/a/c;->a()V

    throw v1

    :cond_0
    :try_start_2
    instance-of v1, v2, La/a/a/a/a/a/e/c;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, La/a/a/a/a/a/e/c;

    move-object v1, v0

    invoke-virtual {v1}, La/a/a/a/a/a/e/c;->a_()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/e/c;->a_()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v2, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    invoke-interface {v2}, La/a/a/a/a/c;->a()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    invoke-virtual {v1}, La/a/a/a/a/a/e/c;->a_()I

    move-result v1

    invoke-static {v1}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v1

    throw v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/a/a/a/a/a;->c:Z

    check-cast v2, La/a/a/a/a/a/e/c;

    return-object v2

    :cond_2
    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/a;->h:La/a/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/a/c;->a()V

    const/4 v1, 0x6

    invoke-static {v1}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v1

    throw v1
    :try_end_2
    .catch La/a/a/a/a/i; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    iget-object v1, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v2, 0xcf

    invoke-virtual {v1, v2}, La/a/a/a/a/a/d/a;->a(I)V

    const/16 v1, 0x7d64

    invoke-static {v1}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v1

    throw v1
.end method

.method protected final a(Ljava/lang/String;)La/a/a/a/a/n;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/a;->a:La/a/a/a/a/a/g;

    invoke-interface {v0, p1}, La/a/a/a/a/a/g;->a(Ljava/lang/String;)La/a/a/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/a/a/a/a/a/e/e;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, La/a/a/a/a/a/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/a/a/c;->d()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    const/16 v0, 0x7d6b

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/a/b;->b()V

    iget-object v0, p0, La/a/a/a/a/a/a;->d:La/a/a/a/a/a/d;

    invoke-virtual {v0}, La/a/a/a/a/a/d;->c()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    invoke-direct {p0, p1}, La/a/a/a/a/a/a;->c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a/m;->b()V
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    iput-object v2, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, La/a/a/a/a/a/a;->a(La/a/a/a/a/i;)V

    iput-object v2, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    throw v0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    const/16 v0, 0x7d65

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0
.end method

.method protected final a(La/a/a/a/a/a/e/o;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/b;->b(La/a/a/a/a/a/e/o;)V

    return-void
.end method

.method public final a(La/a/a/a/a/a/o;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/a/a;->b:La/a/a/a/a/a/o;

    return-void
.end method

.method public final a(La/a/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/c;->a(La/a/a/a/a/a;)V

    return-void
.end method

.method public final a(La/a/a/a/a/i;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/a;->k:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/a;->m:La/a/a/a/a/a/d/a;

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    iget-boolean v4, p0, La/a/a/a/a/a/a;->j:Z

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2, p1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    iget-boolean v0, p0, La/a/a/a/a/a/a;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/a/a/a/a;->c:Z

    iput-boolean v6, p0, La/a/a/a/a/a/a;->j:Z

    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/b;->a(La/a/a/a/a/i;)V

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-virtual {v1}, La/a/a/a/a/a/c;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    iget-object v1, p0, La/a/a/a/a/a/a;->b:La/a/a/a/a/a/o;

    invoke-interface {v1}, La/a/a/a/a/a/o;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    iget-object v1, p0, La/a/a/a/a/a/a;->d:La/a/a/a/a/a/d;

    invoke-virtual {v1}, La/a/a/a/a/a/d;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iget-object v1, p0, La/a/a/a/a/a/a;->g:La/a/a/a/a/a/b;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/b;->b(La/a/a/a/a/i;)V

    :try_start_3
    iget-object v1, p0, La/a/a/a/a/a/a;->e:La/a/a/a/a/a/e;

    invoke-virtual {v1}, La/a/a/a/a/a/e;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    iput-boolean v5, p0, La/a/a/a/a/a/a;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/a;->f:La/a/a/a/a/a/c;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, La/a/a/a/a/a/a;->c:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/a;->c:Z

    return v0
.end method

.method public final a(La/a/a/a/a/a/e/u;)Z
    .locals 3

    invoke-direct {p0, p1}, La/a/a/a/a/a/a;->c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    iget v1, p0, La/a/a/a/a/a/a;->l:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/m;->a(J)V

    invoke-direct {p0, p1}, La/a/a/a/a/a/a;->c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a/m;->d()Z

    move-result v0

    return v0
.end method

.method public final b(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 1

    invoke-direct {p0, p1}, La/a/a/a/a/a/a;->c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    return-object v0
.end method
