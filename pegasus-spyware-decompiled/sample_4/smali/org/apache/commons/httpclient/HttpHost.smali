.class public Lorg/apache/commons/httpclient/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lorg/apache/commons/httpclient/protocol/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, -0x1

    const-string v1, "http"

    invoke-static {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 89
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    .line 56
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p3, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 75
    if-ltz p2, :cond_2

    .line 76
    iput p2, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpHost;)V
    .locals 2
    .param p1, "httphost"    # Lorg/apache/commons/httpclient/HttpHost;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    .line 56
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 117
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpHost;->a(Lorg/apache/commons/httpclient/HttpHost;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/URI;)V
    .locals 3
    .param p1, "uri"    # Lorg/apache/commons/httpclient/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 108
    return-void
.end method

.method private a(Lorg/apache/commons/httpclient/HttpHost;)V
    .locals 1
    .param p1, "httphost"    # Lorg/apache/commons/httpclient/HttpHost;

    .prologue
    .line 121
    iget-object v0, p1, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    .line 122
    iget v0, p1, Lorg/apache/commons/httpclient/HttpHost;->b:I

    iput v0, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    .line 123
    iget-object v0, p1, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 124
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    .line 132
    .local v0, "copy":Lorg/apache/commons/httpclient/HttpHost;
    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HttpHost;->a(Lorg/apache/commons/httpclient/HttpHost;)V

    .line 133
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    instance-of v3, p1, Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v3, :cond_4

    .line 195
    if-ne p1, p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 198
    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    .line 199
    .local v0, "that":Lorg/apache/commons/httpclient/HttpHost;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    iget v3, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    iget v4, v0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    iget-object v4, v0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/protocol/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 206
    goto :goto_0

    .end local v0    # "that":Lorg/apache/commons/httpclient/HttpHost;
    :cond_4
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    return v0
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 219
    const/16 v1, 0x11

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 221
    .local v0, "hash":I
    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 222
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 223
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 169
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpHost;->c:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 173
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    iget v1, p0, Lorg/apache/commons/httpclient/HttpHost;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
