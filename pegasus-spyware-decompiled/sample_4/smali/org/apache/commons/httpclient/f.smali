.class final Lorg/apache/commons/httpclient/f;
.super Ljava/io/FilterInputStream;
.source "WireLogInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lorg/apache/commons/httpclient/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/e;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "wire"    # Lorg/apache/commons/httpclient/e;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/httpclient/f;->a:Ljava/io/InputStream;

    .line 62
    iput-object p2, p0, Lorg/apache/commons/httpclient/f;->b:Lorg/apache/commons/httpclient/e;

    .line 63
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 82
    .local v0, "l":I
    if-lez v0, :cond_0

    .line 83
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->b:Lorg/apache/commons/httpclient/e;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/e;->b(I)V

    .line 85
    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 94
    .local v0, "l":I
    if-lez v0, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->b:Lorg/apache/commons/httpclient/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/httpclient/e;->b([BII)V

    .line 97
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 70
    .local v0, "l":I
    if-lez v0, :cond_0

    .line 71
    iget-object v1, p0, Lorg/apache/commons/httpclient/f;->b:Lorg/apache/commons/httpclient/e;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/httpclient/e;->b([BII)V

    .line 73
    :cond_0
    return v0
.end method
