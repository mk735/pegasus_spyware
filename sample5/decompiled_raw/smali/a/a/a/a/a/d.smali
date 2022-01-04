.class public final La/a/a/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:La/a/a/a/a/n;

.field private c:La/a/a/a/a/j;

.field private d:Ljava/lang/String;

.field private e:[C

.field private f:Ljavax/net/SocketFactory;

.field private g:Ljava/util/Properties;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, La/a/a/a/a/d;->a:I

    iput-object v1, p0, La/a/a/a/a/d;->b:La/a/a/a/a/n;

    iput-object v1, p0, La/a/a/a/a/d;->c:La/a/a/a/a/j;

    iput-object v1, p0, La/a/a/a/a/d;->g:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/d;->h:Z

    const/16 v0, 0x1e

    iput v0, p0, La/a/a/a/a/d;->i:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, La/a/a/a/a/d;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, La/a/a/a/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljavax/net/SocketFactory;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/d;->f:Ljavax/net/SocketFactory;

    return-void
.end method

.method public final a([C)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/d;->e:[C

    return-void
.end method

.method public final a()[C
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->e:[C

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/a/a/a/a/d;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La/a/a/a/a/d;->i:I

    return v0
.end method

.method public final e()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->f:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final f()La/a/a/a/a/n;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->b:La/a/a/a/a/n;

    return-object v0
.end method

.method public final g()La/a/a/a/a/j;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->c:La/a/a/a/a/j;

    return-object v0
.end method

.method public final h()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/d;->g:Ljava/util/Properties;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/d;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/d;->h:Z

    return-void
.end method
