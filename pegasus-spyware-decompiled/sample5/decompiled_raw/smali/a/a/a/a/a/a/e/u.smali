.class public abstract La/a/a/a/a/a/e/u;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Z

.field private c:B

.field private d:[B


# direct methods
.method public constructor <init>(B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/a/a/a/a/e/u;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/e/u;->d:[B

    iput-byte p1, p0, La/a/a/a/a/a/e/u;->c:B

    iput v1, p0, La/a/a/a/a/a/e/u;->a:I

    return-void
.end method

.method public static a(La/a/a/a/a/k;)La/a/a/a/a/a/e/u;
    .locals 7

    invoke-interface {p0}, La/a/a/a/a/k;->d()[B

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v4, v0, [B

    :cond_0
    new-instance v0, La/a/a/a/a/a/e/v;

    invoke-interface {p0}, La/a/a/a/a/k;->a()[B

    move-result-object v1

    invoke-interface {p0}, La/a/a/a/a/k;->c()I

    move-result v2

    invoke-interface {p0}, La/a/a/a/a/k;->b()I

    move-result v3

    invoke-interface {p0}, La/a/a/a/a/k;->f()I

    move-result v5

    invoke-interface {p0}, La/a/a/a/a/k;->e()I

    move-result v6

    invoke-direct/range {v0 .. v6}, La/a/a/a/a/a/e/v;-><init>([BII[BII)V

    invoke-static {v0}, La/a/a/a/a/a/e/u;->a(Ljava/io/InputStream;)La/a/a/a/a/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)La/a/a/a/a/a/e/u;
    .locals 9

    const/4 v8, 0x6

    :try_start_0
    new-instance v0, La/a/a/a/a/a/e/a;

    invoke-direct {v0, p0}, La/a/a/a/a/a/e/a;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shr-int/lit8 v3, v2, 0x4

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    invoke-static {v1}, La/a/a/a/a/a/e/u;->a(Ljava/io/DataInputStream;)La/a/a/a/a/a/e/w;

    move-result-object v4

    invoke-virtual {v4}, La/a/a/a/a/a/e/w;->a()J

    move-result-wide v4

    invoke-virtual {v0}, La/a/a/a/a/a/e/a;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, La/a/a/a/a/a/e/a;->a()I

    move-result v0

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    long-to-int v0, v4

    new-array v0, v0, [B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_0
    move-object v1, v0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    new-instance v0, La/a/a/a/a/a/e/o;

    invoke-direct {v0, v2, v1}, La/a/a/a/a/a/e/o;-><init>(B[B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    new-instance v0, La/a/a/a/a/a/e/k;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/k;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/i;

    invoke-direct {v1, v0}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v0, 0x7

    if-ne v3, v0, :cond_3

    :try_start_1
    new-instance v0, La/a/a/a/a/a/e/l;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/l;-><init>([B)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    new-instance v0, La/a/a/a/a/a/e/c;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/c;-><init>([B)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    if-ne v3, v0, :cond_5

    new-instance v0, La/a/a/a/a/a/e/j;

    invoke-direct {v0}, La/a/a/a/a/a/e/j;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-ne v3, v0, :cond_6

    new-instance v0, La/a/a/a/a/a/e/q;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/q;-><init>([B)V

    goto :goto_0

    :cond_6
    const/16 v0, 0xb

    if-ne v3, v0, :cond_7

    new-instance v0, La/a/a/a/a/a/e/s;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/s;-><init>([B)V

    goto :goto_0

    :cond_7
    if-ne v3, v8, :cond_8

    new-instance v0, La/a/a/a/a/a/e/n;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/n;-><init>([B)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    if-ne v3, v0, :cond_9

    new-instance v0, La/a/a/a/a/a/e/m;

    invoke-direct {v0, v1}, La/a/a/a/a/a/e/m;-><init>([B)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static a([B)La/a/a/a/a/a/e/u;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, La/a/a/a/a/a/e/u;->a(Ljava/io/InputStream;)La/a/a/a/a/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInputStream;)La/a/a/a/a/a/e/w;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v5, v4, 0x7f

    mul-int/2addr v5, v1

    int-to-long v5, v5

    add-long/2addr v2, v5

    mul-int/lit16 v1, v1, 0x80

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    new-instance v1, La/a/a/a/a/a/e/w;

    invoke-direct {v1, v2, v3, v0}, La/a/a/a/a/a/e/w;-><init>(JI)V

    return-object v1
.end method

.method protected static a(J)[B
    .locals 9

    const-wide/16 v7, 0x80

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    rem-long v3, p0, v7

    long-to-int v1, v3

    int-to-byte v1, v1

    div-long/2addr p0, v7

    cmp-long v3, p0, v5

    if-lez v3, :cond_1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    cmp-long v1, p0, v5

    if-lez v1, :cond_2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/e/u;->a:I

    return-void
.end method

.method protected abstract b_()B
.end method

.method public c_()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected abstract d_()[B
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/e/u;->a:I

    return v0
.end method

.method public final j()[B
    .locals 7

    iget-object v0, p0, La/a/a/a/a/a/e/u;->d:[B

    if-nez v0, :cond_0

    :try_start_0
    iget-byte v0, p0, La/a/a/a/a/a/e/u;->c:B

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, La/a/a/a/a/a/e/u;->b_()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    invoke-virtual {p0}, La/a/a/a/a/a/e/u;->d_()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0}, La/a/a/a/a/a/e/u;->c_()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v5, v2

    invoke-static {v5, v6}, La/a/a/a/a/a/e/u;->a(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/e/u;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/e/u;->d:[B

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/i;

    invoke-direct {v1, v0}, La/a/a/a/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final k()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, La/a/a/a/a/a/e/u;->a:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

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
