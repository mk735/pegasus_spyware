.class public final La/a/a/a/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:La/a/a/a/a/a/m;

.field private c:La/a/a/a/a/a/m;

.field private d:La/a/a/a/a/a/m;

.field private e:La/a/a/a/a/i;

.field private f:Z

.field private g:La/a/a/a/a/a/d/a;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/f;->e:La/a/a/a/a/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/f;->f:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    iput-object p1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    new-instance v0, La/a/a/a/a/a/m;

    invoke-direct {v0, p1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/f;->b:La/a/a/a/a/a/m;

    new-instance v0, La/a/a/a/a/a/m;

    invoke-direct {v0, p1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    new-instance v0, La/a/a/a/a/a/m;

    invoke-direct {v0, p1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/f;->d:La/a/a/a/a/a/m;

    return-void
.end method

.method private d(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 3

    instance-of v0, p1, La/a/a/a/a/a/e/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/f;->b:La/a/a/a/a/a/m;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, La/a/a/a/a/a/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/m;

    goto :goto_0
.end method


# virtual methods
.method protected final a(La/a/a/a/a/a/e/o;)La/a/a/a/a/a/m;
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/o;->i()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/m;

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v2}, La/a/a/a/a/a/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x12e

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, La/a/a/a/a/a/m;

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v0, v2, p1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/e/o;)V

    iget-object v2, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v2}, La/a/a/a/a/a/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x12f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v1, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 2

    instance-of v0, p1, La/a/a/a/a/a/e/b;

    if-eqz v0, :cond_0

    check-cast p1, La/a/a/a/a/a/e/b;

    invoke-direct {p0, p1}, La/a/a/a/a/a/f;->d(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, La/a/a/a/a/a/e/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/f;->b:La/a/a/a/a/a/m;

    :goto_1
    iget-object v1, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/m;

    goto :goto_0

    :cond_1
    instance-of v0, p1, La/a/a/a/a/a/e/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    goto :goto_1

    :cond_2
    instance-of v0, p1, La/a/a/a/a/a/e/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/f;->d:La/a/a/a/a/a/m;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, La/a/a/a/a/a/d/a;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method protected final a(La/a/a/a/a/a/e/b;)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/a/a/a/f;->d(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    invoke-virtual {p0, p1}, La/a/a/a/a/a/f;->b(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/a/a/a/a/a/m;->a(La/a/a/a/a/a/e/u;)V

    :cond_0
    return-void
.end method

.method protected final a(La/a/a/a/a/i;)V
    .locals 5

    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/a/a/a/a/f;->f:Z

    iput-object p1, p0, La/a/a/a/a/a/f;->e:La/a/a/a/a/i;

    iget-object v1, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x130

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p1}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-enter v2

    :try_start_0
    move-object v0, v2

    check-cast v0, La/a/a/a/a/a/m;

    move-object v1, v0

    invoke-virtual {v1, p1}, La/a/a/a/a/a/m;->a(La/a/a/a/a/i;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final b(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 5

    instance-of v0, p1, La/a/a/a/a/a/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    :goto_0
    iget-object v1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v1}, La/a/a/a/a/a/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x12d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/m;

    return-object v0

    :cond_1
    instance-of v0, p1, La/a/a/a/a/a/e/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/f;->d:La/a/a/a/a/a/m;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method protected final c(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;
    .locals 7

    const/4 v5, 0x0

    instance-of v0, p1, La/a/a/a/a/a/e/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/f;->b:La/a/a/a/a/a/m;

    move-object v1, v0

    :goto_0
    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v2}, La/a/a/a/a/a/d/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x12c

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/f;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, La/a/a/a/a/a/f;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/f;->e:La/a/a/a/a/i;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/m;->a(La/a/a/a/a/i;)V

    :cond_1
    return-object v0

    :cond_2
    instance-of v0, p1, La/a/a/a/a/a/e/d;

    if-eqz v0, :cond_3

    iput-boolean v5, p0, La/a/a/a/a/a/f;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/f;->e:La/a/a/a/a/i;

    new-instance v0, La/a/a/a/a/a/m;

    iget-object v1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v0, v1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    iget-object v0, p0, La/a/a/a/a/a/f;->c:La/a/a/a/a/a/m;

    move-object v1, v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, La/a/a/a/a/a/e/e;

    if-eqz v0, :cond_4

    new-instance v0, La/a/a/a/a/a/m;

    iget-object v1, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v0, v1}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/a/f;->d:La/a/a/a/a/a/m;

    iget-object v0, p0, La/a/a/a/a/a/f;->d:La/a/a/a/a/a/m;

    move-object v1, v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, La/a/a/a/a/a/e/n;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1}, La/a/a/a/a/a/f;->a(La/a/a/a/a/a/e/u;)La/a/a/a/a/a/m;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, La/a/a/a/a/a/e/o;

    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, La/a/a/a/a/a/m;

    iget-object v3, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/e/o;

    invoke-direct {v1, v3, v0}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;La/a/a/a/a/a/e/o;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/e/u;->i()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, La/a/a/a/a/a/m;

    iget-object v2, p0, La/a/a/a/a/a/f;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v0, v2}, La/a/a/a/a/a/m;-><init>(La/a/a/a/a/a/d/a;)V

    goto/16 :goto_0
.end method
