.class public final La/a/a/a/a/a/e/f;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/a/a/e/u;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    ushr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-lez v2, :cond_0

    const/16 v3, 0xe

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v0, 0x7d6c

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v2, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-static {v2}, La/a/a/a/a/a/e/u;->a(Ljava/io/DataInputStream;)La/a/a/a/a/a/e/w;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/a/a/a/e/w;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2, v3}, La/a/a/a/a/a/e/u;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v4, v1

    add-long v1, v4, v2

    long-to-int v1, v1

    new-array v1, v1, [B

    iget-object v2, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    array-length v4, v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, La/a/a/a/a/a/e/u;->a([B)La/a/a/a/a/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final available()I
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/e/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method
