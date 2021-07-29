.class final Lorg/apache/commons/httpclient/g;
.super Ljava/io/FilterOutputStream;
.source "WireLogOutputStream.java"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lorg/apache/commons/httpclient/e;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/httpclient/e;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "wire"    # Lorg/apache/commons/httpclient/e;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/httpclient/g;->a:Ljava/io/OutputStream;

    .line 60
    iput-object p2, p0, Lorg/apache/commons/httpclient/g;->b:Lorg/apache/commons/httpclient/e;

    .line 61
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->b:Lorg/apache/commons/httpclient/e;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/e;->a(I)V

    .line 79
    return-void
.end method

.method public final write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 87
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->b:Lorg/apache/commons/httpclient/e;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/e;->a([B)V

    .line 88
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    iget-object v0, p0, Lorg/apache/commons/httpclient/g;->b:Lorg/apache/commons/httpclient/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/e;->a([BII)V

    .line 70
    return-void
.end method
