.class public Lorg/apache/commons/httpclient/protocol/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .param p3, "defaultPort"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-nez p2, :cond_1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    if-gtz p3, :cond_2

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "port is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->b:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->c:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    .line 188
    iput p3, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->d:I

    .line 189
    instance-of v0, p2, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->e:Z

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;I)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
    .param p3, "defaultPort"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V

    .line 206
    return-void
.end method

.method public static getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    sget-object v1, Lorg/apache/commons/httpclient/protocol/Protocol;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 116
    .local v0, "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    if-nez v0, :cond_1

    .line 117
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .end local v0    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    const-string v1, "http"

    invoke-static {}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->a()Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;I)V

    const-string v1, "http"

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 120
    .restart local v0    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_1
    :goto_0
    return-object v0

    .line 117
    :cond_2
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .end local v0    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    const-string v1, "https"

    invoke-static {}, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;->a()Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;

    move-result-object v2

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;I)V

    const-string v1, "https"

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    goto :goto_0

    .restart local v0    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unsupported protocol: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static unregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/protocol/Protocol;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 268
    instance-of v2, p1, Lorg/apache/commons/httpclient/protocol/Protocol;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 270
    check-cast v0, Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 272
    .local v0, "p":Lorg/apache/commons/httpclient/protocol/Protocol;
    iget v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->d:I

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->e:Z

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->c:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 279
    .end local v0    # "p":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_0
    return v1
.end method

.method public getDefaultPort()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->d:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->c:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 289
    const/16 v1, 0x11

    iget v2, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->d:I

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 291
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 292
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->e:Z

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 293
    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->c:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 294
    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->e:Z

    return v0
.end method

.method public resolvePort(I)I
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 250
    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result p1

    .end local p1    # "port":I
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/httpclient/protocol/Protocol;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
