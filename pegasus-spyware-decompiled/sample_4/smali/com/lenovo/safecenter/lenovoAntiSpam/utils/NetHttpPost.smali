.class public Lcom/lenovo/safecenter/lenovoAntiSpam/utils/NetHttpPost;
.super Ljava/lang/Object;
.source "NetHttpPost.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static change(Ljava/lang/String;)Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 9
    .param p0, "sb"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v5, "gos":Ljava/util/zip/GZIPOutputStream;
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 88
    .local v2, "bytes":[B
    const/4 v6, 0x0

    .line 89
    .local v6, "length":I
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v0, v2, v7, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 91
    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "length":I
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v4, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 93
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v5    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "length":I
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 94
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 96
    new-instance v4, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "text/xml"

    invoke-direct {v4, v7, v8}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .local v4, "entity":Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
    goto :goto_1
.end method

.method public static sendPostRequest(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/RequestEntity;Ljava/util/Map;)Lorg/apache/commons/httpclient/methods/PostMethod;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "requestEntity"    # Lorg/apache/commons/httpclient/methods/RequestEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/httpclient/methods/RequestEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/commons/httpclient/methods/PostMethod;"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "httpHeadParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/NetHttpPost;->sendPostRequest(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/RequestEntity;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/commons/httpclient/methods/PostMethod;

    move-result-object v0

    return-object v0
.end method

.method public static sendPostRequest(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/RequestEntity;Ljava/util/Map;Ljava/util/Map;)Lorg/apache/commons/httpclient/methods/PostMethod;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "requestEntity"    # Lorg/apache/commons/httpclient/methods/RequestEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/httpclient/methods/RequestEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/commons/httpclient/methods/PostMethod;"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "httpClientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "httpHeadParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 36
    .local v2, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    new-instance v4, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v4, p0}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    const-string v6, "http.socket.timeout"

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 45
    .restart local v2    # "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {v4, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 50
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 52
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 59
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
