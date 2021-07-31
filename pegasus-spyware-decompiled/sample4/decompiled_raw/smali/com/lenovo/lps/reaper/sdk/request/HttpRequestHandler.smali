.class public Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# instance fields
.field private a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BLjava/lang/String;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "serverContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1770

    .line 111
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 116
    .local v4, "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v7, "binary/octet-stream"

    invoke-virtual {v4, v7}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 118
    const-string v7, "User-Agent"

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 120
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v7, "http.connection.timeout"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 121
    const-string v7, "http.socket.timeout"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 122
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 124
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 125
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.protocol.version"

    sget-object v9, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 127
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 128
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 129
    .local v5, "resEntity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_2

    .line 130
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 132
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_3

    .line 133
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "response is not ok!"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v5    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v7

    .restart local v5    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method


# virtual methods
.method public postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 13
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 p1, 0x0

    .line 98
    .end local p1    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    :cond_0
    array-length v7, p1

    .line 64
    .local v7, "length":I
    if-nez v7, :cond_1

    .line 65
    const/4 p1, 0x0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getReportUrl()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 69
    const-string v8, "HttpRequestHandler"

    const-string v9, "don\'t report events because server url is null."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 p1, 0x0

    goto :goto_0

    .line 72
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x1f4

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, "data":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v4, v0, v5

    .line 74
    .local v4, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    if-nez v4, :cond_3

    .line 75
    const-string v8, "HttpRequestHandler"

    const-string v9, "event is null object."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v7, v7, -0x1

    .line 73
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v8

    const-string v9, "__PAGEVIEW__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "ctx=%s!%s!%s!%s!%s!%d!%s!%d!%d!%d!%d!%d!%d!%d!%s!%s!%s!%s!%s&evt=%s!%s"

    const/16 v9, 0x15

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "1.9.2"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAccount()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getRandomVal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getDisplayScreen()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getSessionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampFirst()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampPre()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampCur()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xb

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampEvent()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xc

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getVisits()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xd

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getNetworkStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xe

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xf

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x10

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getChannel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x11

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x12

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserIdClass()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x13

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x14

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getCustomVariableParams(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 79
    :cond_4
    const-string v8, "ctx=%s!0!%s!%s!%s!%d!%s!%d!%d!%d!%d!%d!%d!%d!%s!%s!%s!%s!%s&evt=%s!%s!%s!%d!%s"

    const/16 v9, 0x17

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "1.9.2"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAccount()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getRandomVal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getDisplayScreen()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getSessionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampFirst()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampPre()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampCur()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampEvent()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xb

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getVisits()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xc

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getNetworkStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xd

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xe

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xf

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getChannel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x10

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x11

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserIdClass()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x12

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x13

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x14

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x15

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x16

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getCustomVariableParams(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 83
    .end local v4    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    :cond_5
    :try_start_0
    const-string v8, "HttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "events number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v8, "HttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "events length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v7}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->needCompress(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/lps/reaper/sdk/util/CompressUtil;->compress([B)[B

    move-result-object v1

    .line 87
    .local v1, "bytes":[B
    const-string v8, "HttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes length after compress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getReportWithCompressUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a([BLjava/lang/String;)V

    .line 94
    :goto_4
    const-string v8, "HttpRequestHandler"

    const-string v9, "post finished."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 96
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "HttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when post events. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 90
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 91
    .restart local v1    # "bytes":[B
    const-string v8, "HttpRequestHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no compress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getReportUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setConfiguration(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 180
    return-void
.end method
