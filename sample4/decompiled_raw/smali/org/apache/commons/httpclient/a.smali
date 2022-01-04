.class final Lorg/apache/commons/httpclient/a;
.super Ljava/io/FilterInputStream;
.source "AutoCloseInputStream.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lorg/apache/commons/httpclient/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/d;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "watcher"    # Lorg/apache/commons/httpclient/d;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/a;->a:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/a;->b:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/a;->c:Lorg/apache/commons/httpclient/d;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/httpclient/a;->c:Lorg/apache/commons/httpclient/d;

    .line 75
    return-void
.end method

.method private a(I)V
    .locals 1
    .param p1, "readResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 170
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->b()V

    .line 172
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/a;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/a;->b:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/a;->a:Z

    return v0
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/a;->a:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/a;->a:Z

    .line 197
    iget-object v0, p0, Lorg/apache/commons/httpclient/a;->c:Lorg/apache/commons/httpclient/d;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/apache/commons/httpclient/a;->c:Lorg/apache/commons/httpclient/d;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/d;->a()V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "a":I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/a;->b:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/a;->b:Z

    .line 158
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->b()V

    .line 160
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, -0x1

    .line 86
    .local v0, "l":I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/a;->a(I)V

    .line 92
    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, -0x1

    .line 126
    .local v0, "l":I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 128
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/a;->a(I)V

    .line 130
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
    .line 105
    const/4 v0, -0x1

    .line 107
    .local v0, "l":I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 109
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/a;->a(I)V

    .line 112
    :cond_0
    return v0
.end method
