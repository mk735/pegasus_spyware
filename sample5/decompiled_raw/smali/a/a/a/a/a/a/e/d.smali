.class public final La/a/a/a/a/a/e/d;
.super La/a/a/a/a/a/e/u;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:La/a/a/a/a/j;

.field private f:Ljava/lang/String;

.field private g:[C

.field private h:I

.field private i:La/a/a/a/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;[CLa/a/a/a/a/j;La/a/a/a/a/n;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/a/a/a/a/a/e/u;-><init>(B)V

    iput-object p1, p0, La/a/a/a/a/a/e/d;->c:Ljava/lang/String;

    iput-boolean p2, p0, La/a/a/a/a/a/e/d;->d:Z

    iput p3, p0, La/a/a/a/a/a/e/d;->h:I

    iput-object p4, p0, La/a/a/a/a/a/e/d;->f:Ljava/lang/String;

    iput-object p5, p0, La/a/a/a/a/a/e/d;->g:[C

    iput-object p6, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    iput-object p7, p0, La/a/a/a/a/a/e/d;->i:La/a/a/a/a/n;

    return-void
.end method


# virtual methods
.method protected final b_()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c_()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, La/a/a/a/a/a/e/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/e/d;->i:La/a/a/a/a/n;

    invoke-virtual {v2}, La/a/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    invoke-virtual {v2}, La/a/a/a/a/j;->a()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    invoke-virtual {v2}, La/a/a/a/a/j;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/e/d;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/e/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/e/d;->g:[C

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, La/a/a/a/a/a/e/d;->g:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
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

.method protected final d_()[B
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "MQIsdp"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    iget-boolean v3, p0, La/a/a/a/a/a/e/d;->d:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v3, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    invoke-virtual {v3}, La/a/a/a/a/j;->d()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/e/d;->e:La/a/a/a/a/j;

    invoke-virtual {v3}, La/a/a/a/a/j;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_1
    iget-object v3, p0, La/a/a/a/a/a/e/d;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/e/d;->g:[C

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget v0, p0, La/a/a/a/a/a/e/d;->h:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
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

.method public final e_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
