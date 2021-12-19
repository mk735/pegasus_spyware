.class public final La/a/a/a/a/a/e/q;
.super La/a/a/a/a/a/e/b;


# instance fields
.field private c:[I


# direct methods
.method public constructor <init>([B)V
    .locals 4

    const/16 v0, 0x9

    invoke-direct {p0, v0}, La/a/a/a/a/a/e/b;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/e/q;->a:I

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [I

    iput-object v1, p0, La/a/a/a/a/a/e/q;->c:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-void

    :cond_0
    iget-object v3, p0, La/a/a/a/a/a/e/q;->c:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected final d_()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
