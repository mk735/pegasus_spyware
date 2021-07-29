.class final Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;
.super Ljava/lang/Object;
.source "RemoteHealthCheckService.java"

# interfaces
.implements Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 242
    const-string v3, "wu0wu"

    const-string v4, "RemoteHealthCheckService onScanFinished...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez p1, :cond_0

    .line 247
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthScanFinished(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "strScanFinished":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "i":I
    .end local v2    # "strScanFinished":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthOptimizeComplete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "strScanFinished":Ljava/lang/String;
    goto :goto_0

    .line 254
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :goto_3
    return-void

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public final onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 5
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 215
    const-string v3, "wu0wu"

    const-string v4, "onOneItemProcess "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthProcessing(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "strProcessing":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 219
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final onProgressChanged(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 144
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthProgressChanged(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "strProgressChanged":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final onResult(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 5
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 228
    const-string v3, "wu0wu"

    const-string v4, "onResult "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthProcessed(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "strScanresult":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final onScoreChanged(I)V
    .locals 6
    .param p1, "score"    # I

    .prologue
    .line 158
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScoreChanged score="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthScoreChanged(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "strScoreChanged":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final onStarted(II)V
    .locals 6
    .param p1, "maxProgress"    # I
    .param p2, "action"    # I

    .prologue
    .line 186
    const-string v3, "wu0wu"

    const-string v4, "RemoteHealthCheckService onScanStarted...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStarted maxProgress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;I)I

    .line 190
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStarted mCallbacks.beginBroadcast() N="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v5}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    if-nez p2, :cond_0

    .line 196
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/HealthCheck/util/HealthStatus;->getStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/safecenter/HealthCheck/util/HealthViewType;->getViewTypes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthScanStarted(Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "strstarted":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 206
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    .end local v1    # "i":I
    .end local v2    # "strstarted":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthOptimizesStarted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "strstarted":Ljava/lang/String;
    goto :goto_1

    .line 207
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public final onStatusChanged(I)V
    .locals 6
    .param p1, "statusId"    # I

    .prologue
    .line 171
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusChanged statusId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->c(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->healthStatusChanged(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "strStatusChanged":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->d(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$2;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 140
    return-void
.end method
