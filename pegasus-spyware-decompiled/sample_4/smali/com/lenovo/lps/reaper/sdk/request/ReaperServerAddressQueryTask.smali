.class public final Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;
.super Ljava/lang/Object;
.source "ReaperServerAddressQueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/config/Configuration;Landroid/os/Handler;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/config/Configuration;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;

    invoke-direct {v1, p0}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;-><init>(Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;)V

    .line 150
    .local v1, "ldsResponseHandler":Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 151
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->b()J

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask$a;->a()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->saveServerUrlToFile(Ljava/lang/String;)V

    move v2, v3

    .line 157
    :goto_0
    return v2

    .line 153
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->saveServerUrlToFile(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "ReaperServerAddressQueryTask"

    const-string v3, "don\'t get reaper server url from lds."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ReaperServerAddressQueryTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processResponseResult fail. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/16 v13, 0x1770

    const/4 v8, 0x0

    .line 73
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, "ReaperServerAddressQueryTask"

    const-string v10, "Using Custom ReaperServerAddress."

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v8, :cond_6

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->isCollectData()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ReaperServerAddressQueryTask"

    const-string v10, "data collection setting is false."

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const-string v10, "http://fsr.lenovomm.com"

    invoke-virtual {v9, v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v9, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-static {v9}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "ReaperServerAddressQueryTask"

    const-string v10, "network is not ok."

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const-string v10, "http://fsr.lenovomm.com"

    invoke-virtual {v9, v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->checkTimestamp()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getServerUrlFromFile()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    const-string v10, "ReaperServerAddressQueryTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load ReaperServerAddress From SharedPreference. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v10, v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v9, "ReaperServerAddressQueryTask"

    const-string v10, "CheckTimestamp is not pass, use default ReaperServerAddress."

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const-string v10, "http://fsr.lenovomm.com"

    invoke-virtual {v9, v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 77
    :cond_6
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 78
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    const-string v8, "http.socket.timeout"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1"

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, "queryResult":Z
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 85
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 86
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 87
    .local v0, "code":I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_7

    .line 88
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a(Ljava/lang/String;)Z

    move-result v5

    .line 94
    .end local v7    # "result":Ljava/lang/String;
    :goto_2
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServerAddress Query Success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 100
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    if-nez v5, :cond_0

    .line 101
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/ReaperServerAddressQueryTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    const-string v9, "http://fsr.lenovomm.com"

    invoke-virtual {v8, v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    .restart local v0    # "code":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    :try_start_1
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "query reaper server address fail, status code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 95
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query reaper server address fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method
