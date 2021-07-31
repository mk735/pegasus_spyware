.class final Lcom/lenovo/lps/sus/a/a/b/a;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->c:I

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->d:Z

    iput-object p1, p0, Lcom/lenovo/lps/sus/a/a/b/a;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 10

    const/4 v9, 0x4

    const/4 v2, 0x1

    const/16 v8, 0x3d

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->c:I

    iget-object v4, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    array-length v4, v4

    if-ne v0, v4, :cond_12

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->d:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    new-array v5, v9, [C

    move v0, v1

    :cond_2
    iget-object v4, p0, Lcom/lenovo/lps/sus/a/a/b/a;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_5

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/a/a/b/a;->d:Z

    :cond_4
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    array-length v0, v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    move v0, v3

    goto :goto_0

    :cond_5
    int-to-char v6, v4

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_6

    if-ne v6, v8, :cond_8

    :cond_6
    add-int/lit8 v4, v0, 0x1

    aput-char v6, v5, v0

    move v0, v4

    :cond_7
    if-lt v0, v9, :cond_2

    move v0, v1

    move v4, v1

    :goto_1
    if-lt v4, v9, :cond_9

    const/4 v0, 0x3

    aget-char v0, v5, v0

    if-ne v0, v8, :cond_e

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v4, 0xd

    if-eq v6, v4, :cond_7

    const/16 v4, 0xa

    if-eq v6, v4, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aget-char v6, v5, v4

    if-eq v6, v8, :cond_a

    if-eqz v0, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez v0, :cond_b

    move v0, v2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    iput-boolean v2, p0, Lcom/lenovo/lps/sus/a/a/b/a;->d:Z

    const/4 v0, 0x2

    aget-char v0, v5, v0

    if-ne v0, v8, :cond_d

    :goto_2
    move v0, v1

    move v4, v1

    :goto_3
    if-lt v4, v9, :cond_f

    new-array v4, v2, [I

    iput-object v4, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    move v4, v1

    :goto_4
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    rsub-int/lit8 v6, v4, 0x2

    mul-int/lit8 v6, v6, 0x8

    ushr-int v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x2

    goto :goto_2

    :cond_e
    const/4 v2, 0x3

    goto :goto_2

    :cond_f
    aget-char v6, v5, v4

    if-eq v6, v8, :cond_10

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    aget-char v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    rsub-int/lit8 v7, v4, 0x3

    mul-int/lit8 v7, v7, 0x6

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    iput v1, p0, Lcom/lenovo/lps/sus/a/a/b/a;->c:I

    :cond_12
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a/b/a;->b:[I

    iget v1, p0, Lcom/lenovo/lps/sus/a/a/b/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lenovo/lps/sus/a/a/b/a;->c:I

    aget v0, v0, v1

    goto/16 :goto_0
.end method
