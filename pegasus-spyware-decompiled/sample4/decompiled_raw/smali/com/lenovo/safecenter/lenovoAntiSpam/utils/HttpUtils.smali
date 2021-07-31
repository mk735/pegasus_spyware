.class public Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static Expire_CallNumbers:Ljava/lang/String; = null

.field public static Expire_SmsNumbers:Ljava/lang/String; = null

.field public static Expire_tag:Ljava/lang/String; = null

.field public static Lastin_CallNumbers:Ljava/lang/String; = null

.field public static Lastin_SmsNumbers:Ljava/lang/String; = null

.field public static Lastin_tag:Ljava/lang/String; = null

.field public static count:I = 0x0

.field public static final down_success:I = 0x2

.field public static final net_disconnect:I = 0x1

.field public static final server_disconnect:I = 0x0

.field public static threadFlag:Z = false

.field public static final version_isNew:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    .line 42
    sput v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    .line 43
    sput-boolean v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->threadFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 418
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v9, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 421
    const/16 v11, 0x3f

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 423
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v11, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x26

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    const/4 v11, 0x1

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v11

    .line 426
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 428
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v11, "path"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 433
    .local v6, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip,deflate"

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v11, "etag"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 436
    const-string v11, "If-None-Match"

    const-string v12, "0"

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_2
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 443
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.connection.timeout"

    const/16 v13, 0x1770

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 444
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.socket.timeout"

    const/16 v13, 0x1770

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 445
    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 446
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 448
    .local v5, "httpEntity":Lorg/apache/http/HttpEntity;
    const-string v11, "StatusCode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">>>>>>>>>>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_3

    .line 450
    const-string v11, "Date"

    invoke-interface {v8, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "date_sys":Ljava/lang/String;
    const-string v11, "systime"

    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {p0, v11, v12, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 453
    const-string v11, "systime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Date.parse(date_sys)=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v10, "strem":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->updateSys(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 456
    const-string v11, "etag"

    const-string v12, "Etag"

    invoke-interface {v8, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {p0, v11, v12, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 457
    const/4 v11, 0x2

    goto/16 :goto_1

    .line 439
    .end local v1    # "date_sys":Ljava/lang/String;
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "strem":Ljava/io/InputStream;
    :cond_2
    const-string v11, "If-None-Match"

    const-string v12, "etag"

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 459
    .restart local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    const/16 v12, 0x130

    if-ne v11, v12, :cond_4

    .line 461
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 464
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 300
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 301
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "UTF-8"

    invoke-interface {v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "tag":I
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 304
    .local v0, "event":I
    :goto_0
    if-eq v0, v5, :cond_9

    .line 305
    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_0
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_0
    const-string v3, "lastinlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    const/4 v2, 0x1

    .line 310
    :cond_1
    const-string v3, "expiredlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    const/4 v2, 0x2

    .line 313
    :cond_2
    if-ne v2, v5, :cond_5

    .line 314
    const-string v3, "lastintag"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 317
    :cond_3
    const-string v3, "numbers4call"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    .line 320
    :cond_4
    const-string v3, "numbers4sms"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 321
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    .line 325
    :cond_5
    if-ne v2, v6, :cond_0

    .line 326
    const-string v3, "expiredtag"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 327
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_tag:Ljava/lang/String;

    .line 329
    :cond_6
    const-string v3, "numbers4call"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    .line 332
    :cond_7
    const-string v3, "numbers4sms"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    goto/16 :goto_1

    .line 338
    :pswitch_1
    const-string v3, "lastinlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 339
    const/4 v2, 0x0

    .line 341
    :cond_8
    const-string v3, "expiredlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 348
    :cond_9
    return v6

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 11
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 133
    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v8, 0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v8

    .line 138
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 140
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v8, "path"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 143
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.connection.timeout"

    const/16 v10, 0x1770

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 144
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.socket.timeout"

    const/16 v10, 0x1770

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 145
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 146
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 147
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    const-string v8, "StatusCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">>>>>>>>>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 150
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->a(Ljava/io/InputStream;)I

    move-result v8

    goto :goto_1

    .line 151
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    const/16 v9, 0x130

    if-ne v8, v9, :cond_3

    .line 153
    const/4 v8, 0x3

    goto/16 :goto_1

    .line 156
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 548
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 551
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 591
    const/4 v7, 0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .line 556
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 558
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v7, "path"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip,deflate"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v7, "etag"

    invoke-static {v7, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 566
    const-string v7, "If-None-Match"

    const-string v8, "0"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_2
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 573
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.connection.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 574
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 575
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 576
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v7, "StatusCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">>>>>>>>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 579
    const/4 v7, 0x2

    goto/16 :goto_1

    .line 569
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const-string v7, "If-None-Match"

    const-string v8, "etag"

    invoke-static {v8, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/16 v8, 0x130

    if-ne v7, v8, :cond_4

    .line 583
    const/4 v7, 0x3

    goto/16 :goto_1

    .line 586
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 265
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const/4 v7, 0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .line 270
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 272
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v7, "path"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 274
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 275
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.connection.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 276
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 277
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 279
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 281
    const/4 v7, 0x2

    goto :goto_1

    .line 282
    :cond_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/16 v8, 0x130

    if-ne v7, v8, :cond_3

    .line 284
    const/4 v7, 0x3

    goto :goto_1

    .line 287
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static down(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 47
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 48
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "lang"

    const-string v8, "zh-cn"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v5, "mms_lastintag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    const-string v5, "lastintag"

    const-string v8, "0"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v5, "expiredtag"

    const-string v8, "0"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    const-string v5, "devicefamily"

    const-string v8, "lephone"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "deviceidtype"

    const-string v8, "imei"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 68
    const-string v5, "deviceid"

    const-string v8, "N/A"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_1
    const-string v5, "devicevendor"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v3, "http://sss.lenovomm.com/sss/1.0/whitenolistsync"

    .line 87
    .local v3, "path":Ljava/lang/String;
    const-string v5, "version"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v5, "UTF-8"

    invoke-static {v3, v2, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, "resultcode":I
    const-string v5, "xmlresult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300b\u300b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eq v4, v10, :cond_0

    if-ne v4, v11, :cond_5

    :cond_0
    move v5, v4

    .line 124
    :goto_2
    return v5

    .line 57
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "resultcode":I
    :cond_1
    const-string v8, "lastintag"

    const-string v5, "lastintag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "0"

    :goto_3
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v8, "expiredtag"

    const-string v5, "expiredtag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "0"

    :goto_4
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_2
    const-string v5, "lastintag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 58
    :cond_3
    const-string v5, "expiredtag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 71
    :cond_4
    const-string v5, "deviceid"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "resultcode":I
    :cond_5
    :try_start_0
    sget v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    if-ge v5, v10, :cond_7

    .line 98
    sget v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    .line 99
    const-string v5, "UTF-8"

    invoke-static {v3, v2, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    .line 100
    const-string v5, "xmlresult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300bwhile\u300b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eq v4, v10, :cond_6

    if-ne v4, v11, :cond_5

    .line 103
    :cond_6
    const/4 v5, 0x0

    sput v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    move v5, v4

    .line 104
    goto :goto_2

    .line 107
    :cond_7
    sget v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    if-lt v5, v10, :cond_9

    .line 109
    const-string v5, "xmlresult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300bHttpUtils.count>=2\u300b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v5, 0x0

    sput v5, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    if-nez v4, :cond_8

    move v5, v6

    .line 113
    goto/16 :goto_2

    :cond_8
    move v5, v7

    .line 116
    goto/16 :goto_2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v7

    .line 122
    goto/16 :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    move v5, v7

    .line 124
    goto/16 :goto_2
.end method

.method public static execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    const-string v1, "versionconfig"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 601
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "lastintag"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rule_store.sys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rule_store.sys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    .line 608
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 611
    :cond_1
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 632
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    const-string v2, "versionconfig"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    return-void
.end method

.method public downNetBlack(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    invoke-static {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->down(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public downsys(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 355
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 356
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "lang"

    const-string v8, "zh-cn"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v7, "devicefamily"

    const-string v8, "lephone"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v7, "deviceidtype"

    const-string v8, "imei"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 362
    const-string v7, "deviceid"

    const-string v8, "N/A"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_0
    const-string v7, "devicevendor"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 372
    .local v4, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 373
    const-string v7, "updatesys"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "path":Ljava/lang/String;
    const-string v7, "version"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v7, "UTF-8"

    invoke-direct {p0, p1, v3, v2, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    .line 376
    .local v5, "resultcode":I
    const-string v7, "xmlresult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300b\u300b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 409
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "resultcode":I
    :cond_0
    :goto_1
    return v5

    .line 365
    .end local v4    # "properties":Ljava/util/Properties;
    :cond_1
    const-string v7, "deviceid"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "resultcode":I
    :cond_2
    move v5, v6

    .line 405
    goto :goto_1

    .line 407
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "resultcode":I
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 409
    goto :goto_1
.end method

.method public queryNetBlack(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 174
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "lang"

    const-string v5, "zh-cn"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v4, "mms_lastintag"

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    const-string v4, "lastintag"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v4, "expiredtag"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_0
    const-string v4, "devicefamily"

    const-string v5, "lephone"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v4, "deviceidtype"

    const-string v5, "imei"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 192
    const-string v4, "deviceid"

    const-string v5, "N/A"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_1
    const-string v4, "devicevendor"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "http://sss.lenovomm.com/sss/1.0/whitenolistsync"

    .line 211
    .local v2, "path":Ljava/lang/String;
    const-string v4, "version"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v4, "UTF-8"

    invoke-static {v2, v1, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, "resultcode":I
    const-string v4, "xmlresult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u300b\u300b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 225
    .end local v3    # "resultcode":I
    :cond_0
    :goto_2
    return v3

    .line 183
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    const-string v5, "lastintag"

    const-string v4, "lastintag"

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "0"

    :goto_3
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v5, "expiredtag"

    const-string v4, "expiredtag"

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0"

    :goto_4
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_2
    const-string v4, "lastintag"

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 184
    :cond_3
    const-string v4, "expiredtag"

    invoke-static {v4, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 195
    :cond_4
    const-string v4, "deviceid"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "resultcode":I
    :cond_5
    if-nez v3, :cond_6

    .line 222
    const/4 v3, 0x0

    goto :goto_2

    .line 225
    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public querySys(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 481
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 482
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "lang"

    const-string v8, "zh-cn"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v7, "devicefamily"

    const-string v8, "lephone"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v7, "deviceidtype"

    const-string v8, "imei"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 488
    const-string v7, "deviceid"

    const-string v8, "N/A"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :goto_0
    const-string v7, "devicevendor"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 498
    .local v4, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 499
    const-string v7, "updatesys"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "path":Ljava/lang/String;
    const-string v7, "version"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v7, "UTF-8"

    invoke-static {p1, v3, v2, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    .line 502
    .local v5, "resultcode":I
    const-string v7, "xmlresult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u300b\u300b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 540
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "resultcode":I
    :cond_0
    :goto_1
    return v5

    .line 491
    .end local v4    # "properties":Ljava/util/Properties;
    :cond_1
    const-string v7, "deviceid"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 508
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "resultcode":I
    :cond_2
    if-nez v5, :cond_3

    .line 510
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move v5, v6

    .line 513
    goto :goto_1

    .line 538
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "resultcode":I
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 540
    goto :goto_1
.end method

.method public sendGETRequest_sign(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 671
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 674
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 676
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x3d

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x26

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .line 679
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 681
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v7, "path"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 683
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 684
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v9, "http.connection.timeout"

    const/16 v10, 0x1388

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 685
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v9, "http.socket.timeout"

    const/16 v10, 0x1388

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 686
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 688
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v7, "StatusCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">>>>>>>>>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v9, 0xc8

    if-eq v7, v9, :cond_2

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/16 v9, 0x1f4

    if-ne v7, v9, :cond_3

    .line 691
    :cond_2
    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    move v7, v8

    .line 696
    goto :goto_1
.end method

.method public upload_sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sign_phoneNumber"    # Ljava/lang/String;
    .param p3, "sign_tag"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 640
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 641
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "lang"

    const-string v4, "zh-cn"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v3, "devicefamily"

    const-string v4, "lephone"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v3, "deviceidtype"

    const-string v4, "imei"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 646
    const-string v3, "deviceid"

    const-string v4, "N/A"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :goto_0
    const-string v3, "devicevendor"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v3, "reportno"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v3, "tag"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v2, "http://sss.lenovomm.com/sss/1.0/reporttagno"

    .line 664
    .local v2, "path":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v2, v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->sendGETRequest_sign(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 649
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    const-string v3, "deviceid"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
