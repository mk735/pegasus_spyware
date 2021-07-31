.class public Lcom/lenovo/safecenter/support/HttpUtils;
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

.field public static private_isOpenSec:Z = false

.field public static final server_disconnect:I = 0x0

.field public static final version_isNew:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_tag:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    .line 46
    sput v1, Lcom/lenovo/safecenter/support/HttpUtils;->count:I

    .line 47
    sput-boolean v1, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 161
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 162
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "UTF-8"

    invoke-interface {v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "tag":I
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 165
    .local v0, "event":I
    :goto_0
    if-eq v0, v5, :cond_9

    .line 166
    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_0
    const-string v3, "lastinlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const/4 v2, 0x1

    .line 171
    :cond_1
    const-string v3, "expiredlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const/4 v2, 0x2

    .line 174
    :cond_2
    if-ne v2, v5, :cond_5

    .line 175
    const-string v3, "lastintag"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_tag:Ljava/lang/String;

    .line 178
    :cond_3
    const-string v3, "numbers4call"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_CallNumbers:Ljava/lang/String;

    .line 181
    :cond_4
    const-string v3, "numbers4sms"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Lastin_SmsNumbers:Ljava/lang/String;

    .line 186
    :cond_5
    if-ne v2, v6, :cond_0

    .line 187
    const-string v3, "expiredtag"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 188
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_tag:Ljava/lang/String;

    .line 190
    :cond_6
    const-string v3, "numbers4call"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 191
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_CallNumbers:Ljava/lang/String;

    .line 193
    :cond_7
    const-string v3, "numbers4sms"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lenovo/safecenter/support/HttpUtils;->Expire_SmsNumbers:Ljava/lang/String;

    goto/16 :goto_1

    .line 199
    :pswitch_1
    const-string v3, "lastinlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    const/4 v2, 0x0

    .line 202
    :cond_8
    const-string v3, "expiredlist"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 209
    :cond_9
    return v6

    .line 166
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
    .line 107
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 110
    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
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

    .line 112
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

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const/4 v8, 0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v8

    .line 115
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 117
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v8, "path"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 120
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.connection.timeout"

    const/16 v10, 0x1770

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 121
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.socket.timeout"

    const/16 v10, 0x1770

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 122
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 123
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 124
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

    .line 125
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 127
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/safecenter/support/HttpUtils;->a(Ljava/io/InputStream;)I

    move-result v8

    goto :goto_1

    .line 128
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    const/16 v9, 0x130

    if-ne v8, v9, :cond_3

    .line 130
    const/4 v8, 0x3

    goto/16 :goto_1

    .line 133
    :cond_3
    const/4 v8, 0x0

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
    .line 246
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 249
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
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

    .line 251
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ">>>>>>>>>>>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
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

    .line 264
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const/4 v7, 0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .line 255
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 257
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 259
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.connection.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 260
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    const/16 v9, 0x1770

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 261
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 262
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v7, "path"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "url==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">>>>>>>>>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_1
.end method

.method public static down(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "lang"

    const-string v5, "zh-cn"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "lastintag"

    const-string v5, "lastintag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/support/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, "expiredtag"

    const-string v5, "expiredtag"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/support/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v4, "devicefamily"

    const-string v5, "lephone"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v4, "deviceidtype"

    const-string v5, "imei"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "deviceid"

    const-string v5, "N/A"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_0
    const-string v4, "devicevendor"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "down_netBlack_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "path":Ljava/lang/String;
    const-string v4, "version"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v4, "UTF-8"

    invoke-static {v2, v1, v4}, Lcom/lenovo/safecenter/support/HttpUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 63
    .local v3, "resultcode":I
    const-string v4, "xmlresult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/lenovo/safecenter/support/HttpUtils;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 95
    .end local v3    # "resultcode":I
    :cond_0
    :goto_1
    return v3

    .line 58
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    const-string v4, "deviceid"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "resultcode":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string v1, "versionconfig"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getContentType(I)Ljava/lang/String;
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 485
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd   HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 238
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getReportData(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 585
    const/4 v8, 0x0

    .line 587
    .local v8, "strs":[Ljava/lang/String;
    :try_start_0
    const-string v0, "content://com.lenovo.antivirus.AppinfoProvider/appinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 588
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    .line 591
    const/4 v0, 0x0

    const-string v2, "sha1"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 592
    const/4 v0, 0x1

    const-string v2, "md5"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 593
    const/4 v0, 0x2

    const-string v2, "filesize"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 595
    :catch_0
    move-exception v7

    .line 596
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportHarssLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberlist"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "Content"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 413
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 414
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .line 415
    .local v4, "size":I
    const-string v5, "reportno"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v5, "waytype"

    invoke-interface {v1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v5, "lang"

    const-string v6, "zh-cn"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v5, "contenttype"

    invoke-static {v4}, Lcom/lenovo/safecenter/support/HttpUtils;->getContentType(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v5, "content"

    invoke-interface {v1, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 422
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    .line 424
    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 425
    const-string v5, "content"

    invoke-interface {v1, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_0
    const-string v5, "path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v5, "devicefamily"

    const-string v6, "lephone"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v5, "deviceidtype"

    const-string v6, "imei"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 432
    const-string v5, "deviceid"

    const-string v6, "N/A"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_0
    const-string v5, "devicevendor"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "upload_netBlack_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "path":Ljava/lang/String;
    const-string v5, "path"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v5, "UTF-8"

    invoke-static {v2, v1, v5}, Lcom/lenovo/safecenter/support/HttpUtils;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    .line 440
    .local v3, "returnCode":I
    const-string v5, "StatusCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>>>>>>>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_2

    .line 444
    const/4 v5, 0x2

    .line 469
    :goto_1
    return v5

    .line 434
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "returnCode":I
    :cond_1
    const-string v5, "deviceid"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "returnCode":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static reportPermissionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v5, 0x0

    .local v5, "appinstallpath":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "appversion":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "sha1":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "certmd5":Ljava/lang/String;
    const/4 v10, 0x0

    .line 493
    .local v10, "filesize":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 494
    const-string v8, "N/A"

    .line 495
    .local v8, "pkgName":Ljava/lang/String;
    const-string v5, "N/A"

    .line 496
    const-string v6, "N/A"

    .line 497
    const-string v7, "N/A"

    .line 498
    const-string v9, "N/A"

    .line 499
    const-string v10, "0"

    .line 529
    :goto_0
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sha1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " certmd5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filesize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    .line 531
    invoke-static/range {v1 .. v10}, Lcom/lenovo/safecenter/support/HttpUtils;->reportaccessunder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 533
    .local v15, "state":I
    return v15

    .line 501
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v15    # "state":I
    :cond_0
    move-object/from16 v8, p1

    .line 502
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 504
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x2000

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 505
    .local v11, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v14, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 506
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 507
    iget-object v6, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 508
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/lenovo/safecenter/support/HttpUtils;->getReportData(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 509
    .local v16, "tmp":[Ljava/lang/String;
    if-nez v16, :cond_1

    .line 510
    const-string v7, "N/A"

    .line 511
    const-string v9, "N/A"

    .line 512
    const-string v10, "0"

    goto/16 :goto_0

    .line 514
    :cond_1
    const/4 v1, 0x0

    aget-object v7, v16, v1

    .line 515
    const/4 v1, 0x1

    aget-object v9, v16, v1

    .line 516
    const/4 v1, 0x2

    aget-object v10, v16, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 520
    .end local v11    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "tmp":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 521
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    const-string v5, "N/A"

    .line 523
    const-string v6, "N/A"

    .line 524
    const-string v7, "N/A"

    .line 525
    const-string v9, "N/A"

    .line 526
    const-string v10, "0"

    goto/16 :goto_0
.end method

.method public static reportTariffLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "content"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "appinstallpath":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "appversion":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "sha1":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "certmd5":Ljava/lang/String;
    const/4 v13, 0x0

    .line 541
    .local v13, "filesize":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 542
    const-string v11, "N/A"

    .line 543
    .local v11, "pkgName":Ljava/lang/String;
    const-string v7, "N/A"

    .line 544
    const-string v8, "N/A"

    .line 545
    const-string v10, "N/A"

    .line 546
    const-string v12, "N/A"

    .line 547
    const-string v13, "0"

    .line 577
    :goto_0
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sha1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " certmd5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filesize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static/range {p6 .. p6}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Lcom/lenovo/safecenter/utils/MyUtils;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v13}, Lcom/lenovo/safecenter/support/HttpUtils;->reportstealfeesoft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 581
    .local v18, "state":I
    return v18

    .line 549
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v18    # "state":I
    :cond_0
    move-object/from16 v11, p1

    .line 550
    .restart local v11    # "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 552
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2000

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 553
    .local v14, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x2000

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 554
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 555
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 556
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/lenovo/safecenter/support/HttpUtils;->getReportData(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 557
    .local v19, "tmp":[Ljava/lang/String;
    if-nez v19, :cond_1

    .line 558
    const-string v10, "N/A"

    .line 559
    const-string v12, "N/A"

    .line 560
    const-string v13, "0"

    goto/16 :goto_0

    .line 562
    :cond_1
    const/4 v2, 0x0

    aget-object v10, v19, v2

    .line 563
    const/4 v2, 0x1

    aget-object v12, v19, v2

    .line 564
    const/4 v2, 0x2

    aget-object v13, v19, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 568
    .end local v14    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "tmp":[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 569
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    const-string v7, "N/A"

    .line 571
    const-string v8, "N/A"

    .line 572
    const-string v10, "N/A"

    .line 573
    const-string v12, "N/A"

    .line 574
    const-string v13, "0"

    goto/16 :goto_0
.end method

.method public static reportaccessunder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stealtype"    # Ljava/lang/String;
    .param p2, "stealtime"    # Ljava/lang/String;
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "appinstallpath"    # Ljava/lang/String;
    .param p5, "appversion"    # Ljava/lang/String;
    .param p6, "packagesha1"    # Ljava/lang/String;
    .param p7, "packagename"    # Ljava/lang/String;
    .param p8, "certmd5"    # Ljava/lang/String;
    .param p9, "filesize"    # Ljava/lang/String;

    .prologue
    .line 345
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 346
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "devicefamily"

    const-string v8, "lephone"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v7, "deviceidtype"

    const-string v8, "imei"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 350
    const-string v7, "deviceid"

    const-string v8, "N/A"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_0
    const-string v7, "devicevendor"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v7, "lang"

    const-string v8, "zh-cn"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v7, "stealtype"

    const-string v8, "3"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v7, "stealtime"

    invoke-interface {v3, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v7, "appname"

    invoke-interface {v3, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v7, "appinstallpath"

    invoke-interface {v3, v7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v7, "appversion"

    invoke-interface {v3, v7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v7, "packagesha1"

    move-object/from16 v0, p6

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v7, "packagename"

    move-object/from16 v0, p7

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v7, "certmd5"

    move-object/from16 v0, p8

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v7, "filesize"

    move-object/from16 v0, p9

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 367
    .local v5, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 368
    const-string v7, "accessUnder"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "path":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-static {v4, v3, v7}, Lcom/lenovo/safecenter/support/HttpUtils;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    .line 370
    .local v6, "resultcode":I
    const-string v7, "path"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportaccessunder>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 373
    const/4 v7, 0x2

    .line 405
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "resultcode":I
    :goto_1
    return v7

    .line 352
    .end local v5    # "properties":Ljava/util/Properties;
    :cond_0
    const-string v7, "deviceid"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 399
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v6    # "resultcode":I
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 402
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "resultcode":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static reportstealfeesoft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stealtype"    # Ljava/lang/String;
    .param p2, "stealtime"    # Ljava/lang/String;
    .param p3, "stealcontent"    # Ljava/lang/String;
    .param p4, "appname"    # Ljava/lang/String;
    .param p5, "appinstallpath"    # Ljava/lang/String;
    .param p6, "appversion"    # Ljava/lang/String;
    .param p7, "destination"    # Ljava/lang/String;
    .param p8, "packagesha1"    # Ljava/lang/String;
    .param p9, "packagename"    # Ljava/lang/String;
    .param p10, "certmd5"    # Ljava/lang/String;
    .param p11, "filesize"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 276
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "devicefamily"

    const-string v8, "lephone"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v7, "deviceidtype"

    const-string v8, "imei"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 280
    const-string v7, "deviceid"

    const-string v8, "N/A"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_0
    const-string v7, "devicevendor"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v7, "lang"

    const-string v8, "zh-cn"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v7, "stealtype"

    const-string v8, "1"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v7, "stealtime"

    invoke-interface {v3, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v7, "stealcontent"

    invoke-interface {v3, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v7, "appname"

    invoke-interface {v3, v7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v7, "appinstallpath"

    invoke-interface {v3, v7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v7, "appversion"

    invoke-interface {v3, v7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v7, "destination"

    move-object/from16 v0, p7

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v7, "packagesha1"

    move-object/from16 v0, p8

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v7, "packagename"

    move-object/from16 v0, p9

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v7, "certmd5"

    move-object/from16 v0, p10

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v7, "filesize"

    move-object/from16 v0, p11

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 299
    .local v5, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 300
    const-string v7, "stealFeesoft"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "path":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-static {v4, v3, v7}, Lcom/lenovo/safecenter/support/HttpUtils;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 303
    .local v6, "resultcode":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 305
    const/4 v7, 0x2

    .line 337
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "resultcode":I
    :goto_1
    return v7

    .line 282
    .end local v5    # "properties":Ljava/util/Properties;
    :cond_0
    const-string v7, "deviceid"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v6    # "resultcode":I
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 334
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "resultcode":I
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    const/4 v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string v2, "versionconfig"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method public downNetBlack(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {p1}, Lcom/lenovo/safecenter/support/HttpUtils;->down(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
