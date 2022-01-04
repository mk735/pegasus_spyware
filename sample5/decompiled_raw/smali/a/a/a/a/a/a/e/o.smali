.class public final La/a/a/a/a/a/e/o;
.super La/a/a/a/a/a/e/h;


# instance fields
.field private c:La/a/a/a/a/j;

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, La/a/a/a/a/a/e/h;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/e/o;->e:[B

    new-instance v0, La/a/a/a/a/a/e/p;

    invoke-direct {v0}, La/a/a/a/a/a/e/p;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, La/a/a/a/a/j;->a(I)V

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v0}, La/a/a/a/a/j;->c()V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    check-cast v0, La/a/a/a/a/a/e/p;

    invoke-virtual {v0, v2}, La/a/a/a/a/a/e/p;->a(Z)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, La/a/a/a/a/a/e/a;

    invoke-direct {v1, v0}, La/a/a/a/a/a/e/a;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La/a/a/a/a/a/e/o;->d:Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v2}, La/a/a/a/a/j;->d()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, La/a/a/a/a/a/e/o;->a:I

    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    array-length v2, p2

    invoke-virtual {v1}, La/a/a/a/a/a/e/a;->a()I

    move-result v1

    sub-int v1, v2, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v0, v1}, La/a/a/a/a/j;->a([B)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-super {p0, p1}, La/a/a/a/a/a/e/h;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    instance-of v0, v0, La/a/a/a/a/a/e/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    check-cast v0, La/a/a/a/a/a/e/p;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/e/p;->b(I)V

    :cond_0
    return-void
.end method

.method protected final b_()B
    .locals 2

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v0}, La/a/a/a/a/j;->d()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iget-object v1, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v1}, La/a/a/a/a/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_0
    iget-object v1, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v1}, La/a/a/a/a/j;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_1
    return v0
.end method

.method public final c_()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/o;->e:[B

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v0}, La/a/a/a/a/j;->a()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/e/o;->e:[B

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/o;->e:[B

    return-object v0
.end method

.method protected final d_()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, La/a/a/a/a/a/e/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    invoke-virtual {v2}, La/a/a/a/a/j;->d()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, La/a/a/a/a/a/e/o;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/i;

    invoke-direct {v1, v0}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/a/e/o;->c_()[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch La/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final e_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()La/a/a/a/a/j;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/o;->c:La/a/a/a/a/j;

    return-object v0
.end method
