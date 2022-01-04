.class public La/a/a/a/a/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/a/a/a/j;->a:Z

    iput v1, p0, La/a/a/a/a/j;->c:I

    iput-boolean v0, p0, La/a/a/a/a/j;->d:Z

    iput-boolean v0, p0, La/a/a/a/a/j;->e:Z

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, La/a/a/a/a/j;->a([B)V

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/j;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-direct {p0}, La/a/a/a/a/j;->f()V

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, La/a/a/a/a/j;->c:I

    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/j;->e:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    invoke-direct {p0}, La/a/a/a/a/j;->f()V

    iput-object p1, p0, La/a/a/a/a/j;->b:[B

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/j;->b:[B

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/j;->d:Z

    return v0
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/a/j;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/j;->d:Z

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La/a/a/a/a/j;->c:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/j;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/a/j;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
