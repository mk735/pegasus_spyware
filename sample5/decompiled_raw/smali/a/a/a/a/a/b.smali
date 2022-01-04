.class public final La/a/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/a/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:La/a/a/a/a/a/a;

.field private e:Ljava/util/Hashtable;

.field private f:La/a/a/a/a/c;

.field private g:La/a/a/a/a/a/d/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/c;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x17

    if-le v0, v4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p2}, La/a/a/a/a/a/d/a;->a(Ljava/lang/String;)La/a/a/a/a/a/d/a;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    iput-object p1, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    const-string v0, "tcp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, La/a/a/a/a/b;->c:I

    iput-object p2, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    iget-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    if-nez v0, :cond_2

    new-instance v0, La/a/a/a/a/a/k;

    invoke-direct {v0}, La/a/a/a/a/a/k;-><init>()V

    iput-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    :cond_2
    iget-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v4, 0x65

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    aput-object p1, v5, v2

    aput-object p3, v5, v3

    invoke-virtual {v0, v4, v5}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    invoke-interface {v0, p2, p1}, La/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/a/a;

    iget-object v1, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    iget-object v2, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v0, p0, v1, v2}, La/a/a/a/a/a/a;-><init>(La/a/a/a/a/a/g;La/a/a/a/a/c;La/a/a/a/a/a/d/a;)V

    iput-object v0, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    iget-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/a/c;->a()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/b;->e:Ljava/util/Hashtable;

    return-void

    :cond_3
    const-string v0, "ssl://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "local://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;La/a/a/a/a/d;)La/a/a/a/a/a/o;
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x7d69

    const/4 v3, 0x6

    invoke-virtual {p2}, La/a/a/a/a/d;->e()Ljavax/net/SocketFactory;

    move-result-object v0

    iget v2, p0, La/a/a/a/a/b;->c:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x75b

    invoke-static {v1, v3}, La/a/a/a/a/b;->b(Ljava/lang/String;I)I

    move-result v3

    if-nez v0, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/a/a/a/d;->a(Ljavax/net/SocketFactory;)V

    :cond_1
    new-instance v1, La/a/a/a/a/a/r;

    iget-object v4, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    invoke-direct {v1, v4, v0, v2, v3}, La/a/a/a/a/a/r;-><init>(La/a/a/a/a/a/d/a;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    invoke-static {v5}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22b3

    invoke-static {v2, v4}, La/a/a/a/a/b;->b(Ljava/lang/String;I)I

    move-result v4

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, La/a/a/a/a/a/c/a;

    invoke-direct {v0}, La/a/a/a/a/a/c/a;-><init>()V

    invoke-virtual {p2}, La/a/a/a/a/d;->h()Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, La/a/a/a/a/a/c/a;->a(Ljava/util/Properties;)V

    :cond_3
    invoke-virtual {v0}, La/a/a/a/a/a/c/a;->b()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch La/a/a/a/a/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    new-instance v1, La/a/a/a/a/a/q;

    iget-object v5, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, v5, v0, v3, v4}, La/a/a/a/a/a/q;-><init>(La/a/a/a/a/a/d/a;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V

    move-object v0, v1

    check-cast v0, La/a/a/a/a/a/q;

    invoke-virtual {p2}, La/a/a/a/a/d;->d()I

    move-result v3

    invoke-virtual {v0, v3}, La/a/a/a/a/a/q;->a(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, La/a/a/a/a/a/c/a;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, La/a/a/a/a/a/q;

    invoke-virtual {v0, v2}, La/a/a/a/a/a/q;->a([Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/a/a/a/a/a/a/a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a/h;->a(Ljava/lang/Throwable;)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :cond_4
    instance-of v2, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_5

    invoke-static {v5}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :pswitch_2
    new-instance v1, La/a/a/a/a/a/j;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/a/a/a/j;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/a/a/a/n;
    .locals 2

    const/4 v1, -0x1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/a/b;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/n;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/a/n;

    iget-object v1, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-direct {v0, p1, v1}, La/a/a/a/a/n;-><init>(Ljava/lang/String;La/a/a/a/a/a/a;)V

    iget-object v1, p0, La/a/a/a/a/b;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a()V
    .locals 7

    iget-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v1, 0x68

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x7530

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    new-instance v0, La/a/a/a/a/a/e/e;

    invoke-direct {v0}, La/a/a/a/a/a/e/e;-><init>()V

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/e/e;)V
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(La/a/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a;)V

    return-void
.end method

.method public final a(La/a/a/a/a/d;)V
    .locals 9

    iget-object v0, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d64

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v2, 0x67

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-virtual {p1}, La/a/a/a/a/d;->i()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v0

    const/4 v0, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/d;->d()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v0, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/d;->c()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, La/a/a/a/a/d;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    invoke-virtual {p1}, La/a/a/a/a/d;->a()[C

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "[null]"

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, La/a/a/a/a/d;->g()La/a/a/a/a/j;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "[null]"

    :goto_1
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    iget-object v1, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, La/a/a/a/a/b;->a(Ljava/lang/String;La/a/a/a/a/d;)La/a/a/a/a/a/o;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/o;)V

    iget-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    iget-object v1, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, La/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/b;->f:La/a/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/a/c;->c()V

    :cond_2
    iget-object v8, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    new-instance v0, La/a/a/a/a/a/e/d;

    iget-object v1, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, La/a/a/a/a/d;->i()Z

    move-result v2

    invoke-virtual {p1}, La/a/a/a/a/d;->c()I

    move-result v3

    invoke-virtual {p1}, La/a/a/a/a/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, La/a/a/a/a/d;->a()[C

    move-result-object v5

    invoke-virtual {p1}, La/a/a/a/a/d;->g()La/a/a/a/a/j;

    move-result-object v6

    invoke-virtual {p1}, La/a/a/a/a/d;->f()La/a/a/a/a/n;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, La/a/a/a/a/a/e/d;-><init>(Ljava/lang/String;ZILjava/lang/String;[CLa/a/a/a/a/j;La/a/a/a/a/n;)V

    invoke-virtual {p1}, La/a/a/a/a/d;->d()I

    move-result v3

    invoke-virtual {p1}, La/a/a/a/a/d;->c()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1}, La/a/a/a/a/d;->i()Z

    move-result v6

    move-object v1, v8

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/e/d;IJZ)La/a/a/a/a/a/e/c;

    return-void

    :cond_3
    const-string v0, "[notnull]"

    goto :goto_0

    :cond_4
    const-string v0, "[notnull]"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v2

    new-array v5, v6, [I

    aput p2, v5, v2

    array-length v0, v4

    array-length v1, v5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, v4

    if-lt v1, v3, :cond_2

    iget-object v1, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x6a

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v1, v3, v6}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, La/a/a/a/a/a/e/r;

    invoke-direct {v0, v4, v5}, La/a/a/a/a/a/e/r;-><init>([Ljava/lang/String;[I)V

    iget-object v1, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/e/u;)Z

    return-void

    :cond_2
    if-lez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v5, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v2

    iget-object v0, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, v4

    if-lt v1, v3, :cond_1

    iget-object v1, p0, La/a/a/a/a/b;->g:La/a/a/a/a/a/d/a;

    const/16 v3, 0x6b

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v1, v3, v5}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, La/a/a/a/a/a/e/t;

    invoke-direct {v0, v4}, La/a/a/a/a/a/e/t;-><init>([Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a;->a(La/a/a/a/a/a/e/u;)Z

    return-void

    :cond_1
    if-lez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, La/a/a/a/a/b;->d:La/a/a/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/a/a/a;->a()Z

    move-result v0

    return v0
.end method
