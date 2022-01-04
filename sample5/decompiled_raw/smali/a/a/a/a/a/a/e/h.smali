.class public abstract La/a/a/a/a/a/e/h;
.super La/a/a/a/a/a/e/u;

# interfaces
.implements La/a/a/a/a/k;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/a/a/a/e/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/a/e/h;->j()[B
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/l;

    invoke-virtual {v0}, La/a/a/a/a/i;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/a/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/a/e/h;->a()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/a/e/h;->c_()[B
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/l;

    invoke-virtual {v0}, La/a/a/a/a/i;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/a/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
