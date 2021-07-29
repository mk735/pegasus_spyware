.class public final Ltms/ha;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltms/ha$a;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "LQQPIM/UrlCheckResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "paipai.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tencent.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "soso.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "qq.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "baidu.mobi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "baidu.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "taobao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "kanshula.com.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "kanshu.la"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "read.xxsy.net"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "t.sina.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sina.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mop.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "xs8.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "t.qunar.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "qidian.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "easou.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hongxiu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ifeng.com"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "google.com.hk"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "google.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "google.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "tianya.cn"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "bbs.dospy.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "58.com"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "17k.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "sogou.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "weibo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "renren.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sohu.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "163.com"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sina.com.cn"

    aput-object v2, v0, v1

    sput-object v0, Ltms/ha;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ltms/ha$a;)I
    .locals 9

    const/4 v2, 0x0

    const/16 v8, 0x800

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x2710

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x1000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v3, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v3, "http.route.default-proxy"

    invoke-interface {v1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p1, Ltms/ha$a;->b:I

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const/16 v1, 0x400

    :try_start_1
    new-array v6, v1, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v0

    :goto_0
    if-ge v4, v8, :cond_2

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    add-int v7, v4, v2

    if-gt v7, v8, :cond_1

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v2, v4

    move v4, v2

    goto :goto_0

    :cond_1
    rsub-int v2, v4, 0x800

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ltms/ae;->c([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ltms/ha$a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    :cond_4
    :goto_3
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    :goto_5
    const/16 v0, -0xbed

    :try_start_5
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_7
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    :goto_8
    const/16 v0, -0xbeb

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_a
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    :goto_b
    const/16 v0, -0xbf0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_c
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_a
    :goto_d
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_e
    if-eqz v3, :cond_b

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :cond_b
    :goto_f
    if-eqz v2, :cond_c

    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :cond_c
    :goto_10
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_e

    :catch_d
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_b

    :catch_f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_12
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_5
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private a()V
    .locals 10

    const-wide/32 v8, 0x1499700

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ltms/ha;->d:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_0

    iget-wide v3, p0, Ltms/ha;->d:J

    sub-long v3, v1, v3

    cmp-long v0, v3, v8

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Ltms/ha;->d:J

    sub-long v4, v1, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput-wide v6, p0, Ltms/ha;->d:J

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/tencent/tmsecure/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LQQPIM/UrlCheckResponse;
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Ltms/ha;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Ltms/ha;->b:[Ljava/lang/String;

    array-length v5, v4

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, LQQPIM/UrlCheckResponse;

    const-string v6, ""

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v1 .. v6}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Ltms/ha;->a()V

    iget-object v0, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->checkUrl(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    if-eqz v0, :cond_7

    iget-object v1, v0, LQQPIM/UrlCheckResponse;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, p0, Ltms/ha;->d:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-wide v1, p0, Ltms/ha;->d:J

    goto/16 :goto_0

    :cond_9
    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LQQPIM/UrlCheckResponse;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v2

    move v0, v2

    :goto_1
    if-ge v7, v8, :cond_7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ltms/ha;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Ltms/ha;->b:[Ljava/lang/String;

    array-length v11, v5

    move v3, v2

    :goto_2
    if-ge v3, v11, :cond_2

    aget-object v12, v5, v3

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v0, LQQPIM/UrlCheckResponse;

    const-string v5, ""

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    :cond_2
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    invoke-direct {p0}, Ltms/ha;->a()V

    iget-object v0, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    :goto_4
    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v9

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v10, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->checkUrlEx(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v3, LQQPIM/UrlCheckResponse;

    const/4 v5, -0x1

    const-string v8, ""

    move v6, v2

    move v7, v2

    invoke-direct/range {v3 .. v8}, LQQPIM/UrlCheckResponse;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RspTemplate;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, LQQPIM/RspTemplate;->getRspTemp()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-interface {v9, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_6
    if-ge v2, v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    iget-object v4, v0, LQQPIM/UrlCheckResponse;->url:Ljava/lang/String;

    invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, p0, Ltms/ha;->d:J

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-nez v0, :cond_c

    iput-wide v4, p0, Ltms/ha;->d:J

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    move-object v0, v9

    goto/16 :goto_0

    :cond_e
    move v0, v3

    goto/16 :goto_4
.end method

.method public final b(Ljava/lang/String;)I
    .locals 7

    new-instance v6, Ltms/ha$a;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Ltms/ha$a;-><init>(Ltms/ha;B)V

    invoke-static {p1, v6}, Ltms/ha;->a(Ljava/lang/String;Ltms/ha$a;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/BrowserClient;

    const/16 v1, 0xd

    const-string v2, "1.0.0"

    iget-object v3, p0, Ltms/ha;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "guid"

    const-string v5, "ua"

    invoke-direct/range {v0 .. v5}, LQQPIM/BrowserClient;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LQQPIM/BrowserUrl;

    iget-object v1, v6, Ltms/ha$a;->a:Ljava/lang/String;

    iget v3, v6, Ltms/ha$a;->b:I

    invoke-direct {v2, p1, v1, v3}, LQQPIM/BrowserUrl;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->browerCheck(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/BrowserResult;

    if-eqz v0, :cond_0

    const-string v2, "checkApkUrl"

    invoke-virtual {v0}, LQQPIM/BrowserResult;->getCheckAdvise()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Ltms/ha;->a:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Ltms/ha;->a:Landroid/content/Context;

    const-string v1, "fn7DR51xfDgi7Lhj70a+CpV57KhMEahaW0d1xQwGoC4NccjARG86lGHFDUdSH17jmnXBGPctbzUXqd0J0VzthugONZRgDs9dz+NHVb0sW+Hd6kcFghcq8ElvTFT6AmoB8082a60zuj2DvKXY25ZVOmNIGnArv6uG/FCY8SVQowql9jUyZgq7McRK8lIT2w2eLbIRT0EGGmWvV+QBtrpkW/tmsvR+LK1TnCdX6AgMNylJnELEyVoVY9Tk+oRQVkY4TF9QQNXFeADOWgDDmgKqgBDBbMYbGQGPV+TCT/1Zk0dVQ3betG6IqcJV38yR+MP1PVYa1JR5idMc5hoPxKpKYhgfBSVa+hXfouSG88wSRJiASrcOXOb5IWudeQqvE5FZeTYgAc4LFRxj6UF2La/jzJezxMrVaQ+i3/BCJlxSqF5UUOYJklVWHHEEsxZ8Z6LS"

    invoke-static {v0, v1}, Ltms/ha;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltms/ha;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltms/ha;->c:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Ltms/ha;->a:Landroid/content/Context;

    sget-object v1, Ltms/ha;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Ltms/ha;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/ha;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ltms/ha;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
