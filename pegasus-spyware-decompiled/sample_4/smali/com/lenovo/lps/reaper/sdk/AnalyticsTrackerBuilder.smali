.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
.super Ljava/lang/Object;
.source "AnalyticsTrackerBuilder.java"


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;


# instance fields
.field protected configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

.field protected connectivityManager:Landroid/net/ConnectivityManager;

.field protected context:Landroid/content/Context;

.field protected eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field protected fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

.field protected initialized:Z

.field protected reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

.field protected rescheduleTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    return-object v0
.end method


# virtual methods
.method protected createConfiguration()Lcom/lenovo/lps/reaper/sdk/config/Configuration;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createEventDao()Lcom/lenovo/lps/reaper/sdk/api/EventDao;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;-><init>()V

    .line 166
    .local v0, "eventDao":Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    const-string v2, "lenovo_reaper.db6"

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 167
    .local v1, "fileStorage":Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;
    new-instance v2, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .line 168
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->setMeta(Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->setFileStorage(Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;)V

    .line 170
    return-object v0
.end method

.method protected createHttpRequestHandler()Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;-><init>()V

    .line 221
    .local v0, "httpRequestHandler":Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;
    return-object v0
.end method

.method protected createReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;-><init>()V

    return-object v0
.end method

.method public getConfiguration()Lcom/lenovo/lps/reaper/sdk/config/Configuration;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    return-object v0
.end method

.method public getEventStorage()Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    return-object v0
.end method

.method public getReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "reinitialize"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reinitialize()V

    .line 93
    :goto_0
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "AnalyticsTrackerBuilder initialized"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 89
    :cond_0
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "internalInitialize"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->internalInitialize()V

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 2
    .param p1, "applicationToken"    # Ljava/lang/String;
    .param p2, "reportIntervalInSeconds"    # I

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reinitialize()V

    .line 111
    :goto_0
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "AnalyticsTrackerBuilder initialized"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->internalInitialize(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected initializeConfiguration()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createConfiguration()Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 178
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initialize()V

    .line 179
    return-void
.end method

.method protected initializeConfiguration(Ljava/lang/String;I)V
    .locals 1
    .param p1, "applicationToken"    # Ljava/lang/String;
    .param p2, "reportIntervalInSeconds"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createConfiguration()Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    .line 191
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->initialize(Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method protected initializeEventStorage()V
    .locals 2

    .prologue
    .line 153
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createEventDao()Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    move-result-object v0

    .line 155
    .local v0, "eventDao":Lcom/lenovo/lps/reaper/sdk/api/EventDao;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->setEventDao(Lcom/lenovo/lps/reaper/sdk/api/EventDao;)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->initialize()V

    .line 157
    return-void
.end method

.method protected initializeOthers()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeReportManager()V

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeEventStorage()V

    .line 141
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;

    invoke-direct {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/request/TaskHandler;->addTask(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method protected initializeReportManager()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .line 208
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createHttpRequestHandler()Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;

    move-result-object v0

    .line 210
    .local v0, "httpRequestHandler":Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->configuration:Lcom/lenovo/lps/reaper/sdk/config/Configuration;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;->setConfiguration(Lcom/lenovo/lps/reaper/sdk/config/Configuration;)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->setHttpRequestHandler(Lcom/lenovo/lps/reaper/sdk/request/HttpRequestHandler;)V

    .line 212
    return-void
.end method

.method protected internalInitialize()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeConfiguration()V

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeOthers()V

    .line 120
    return-void
.end method

.method protected internalInitialize(Ljava/lang/String;I)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;
    .param p2, "reportIntervalInSeconds"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeConfiguration(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeOthers()V

    .line 133
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    return v0
.end method

.method public readConfigFromPreferences()V
    .locals 10

    .prologue
    .line 278
    :try_start_0
    const-string v7, "AnalyticsTrackerBuilder"

    const-string v8, "Reading Configuration From Preferences..."

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    const-string v8, "reaper"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 281
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 282
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 283
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->put(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "AnalyticsTrackerBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read config from preferences error. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 285
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    const-string v8, "ConfigUpdate"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 287
    const-string v7, "ConfigUpdateTimestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 288
    .local v5, "timestampMills":J
    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;->setTimestampMills(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reinitialize()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->initialize()V

    .line 265
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public setOnNetworkListener(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "networkReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 298
    const-string v1, "AnalyticsTrackerBuilder"

    const-string v2, "Setting On Network Listener..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "mIntenFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->setNetworkStatus(Landroid/content/Context;)V

    .line 301
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    return-void
.end method
