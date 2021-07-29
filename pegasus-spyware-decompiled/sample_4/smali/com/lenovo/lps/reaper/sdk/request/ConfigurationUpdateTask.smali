.class public final Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;
.super Ljava/lang/Object;
.source "ConfigurationUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 16
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "array":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 134
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v13}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->clearExistPreference()V

    .line 135
    const-string v13, "ConfigurationUpdateTask"

    const-string v14, "Configuration Update: "

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_3

    .line 137
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 138
    .local v11, "tmpObject":Lorg/json/JSONObject;
    const-string v13, "Category"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "category":Ljava/lang/String;
    const-string v13, "Action"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 141
    .local v2, "actionJsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v13

    new-array v3, v13, [Ljava/lang/String;

    .line 142
    .local v3, "actions":[Ljava/lang/String;
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v13

    new-array v12, v13, [Z

    .line 143
    .local v12, "values":[Z
    const/4 v8, 0x0

    .line 144
    .local v8, "index":I
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 145
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "action":Ljava/lang/String;
    aput-object v1, v3, v8

    .line 147
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    aput-boolean v13, v12, v8

    .line 148
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 149
    const-string v13, "ConfigurationUpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v3, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-boolean v15, v12, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "action":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v13, v5, v3, v12}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->updatePrefrence(Ljava/lang/String;[Ljava/lang/String;[Z)Z

    move-result v13

    if-nez v13, :cond_2

    .line 154
    const-string v13, "ConfigurationUpdateTask"

    const-string v14, "process response fail. "

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "actionJsonObject":Lorg/json/JSONObject;
    .end local v3    # "actions":[Ljava/lang/String;
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "category":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "length":I
    .end local v11    # "tmpObject":Lorg/json/JSONObject;
    .end local v12    # "values":[Z
    :catch_0
    move-exception v6

    .line 158
    .local v6, "e":Lorg/json/JSONException;
    const-string v13, "ConfigurationUpdateTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "process response fail. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/16 v10, 0x1770

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getServerConfigUrl()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v8, "ConfigurationUpdateTask"

    const-string v9, "server url is null."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v7, :cond_4

    .line 97
    :goto_1
    return-void

    .line 66
    :cond_1
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->isCollectData()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v8, "ConfigurationUpdateTask"

    const-string v9, "data collection setting is false."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v9, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-static {v9}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v8, "ConfigurationUpdateTask"

    const-string v9, "network is not ok."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->checkTimestamp()Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    .line 70
    :cond_4
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 71
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v7, "http.connection.timeout"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 72
    const-string v7, "http.socket.timeout"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 73
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 75
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 76
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "%s?tk=%s%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getServerConfigUrl()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getApplicationToken()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getDeviceInfo()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 78
    const-string v7, "User-Agent"

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "Host"

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getReaperServerHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 81
    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 82
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 83
    .local v0, "code":I
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_5

    .line 84
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "result":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a(Ljava/lang/String;)V

    .line 86
    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/ConfigurationUpdateTask;->a:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->saveUpdateTimestamp()V

    .line 87
    const-string v7, "ConfigurationUpdateTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConfigUpdate Success: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v6    # "result":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1

    .line 89
    :cond_5
    :try_start_1
    const-string v7, "ConfigurationUpdateTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Get configuration fail, status code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 92
    .end local v0    # "code":I
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ConfigurationUpdateTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get configuration fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v7
.end method
