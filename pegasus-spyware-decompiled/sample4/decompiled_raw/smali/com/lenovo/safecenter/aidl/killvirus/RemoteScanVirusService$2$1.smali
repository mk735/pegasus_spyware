.class final Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;
.source "RemoteScanVirusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "result"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .prologue
    .line 160
    new-instance v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;

    invoke-direct {v2}, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;-><init>()V

    .line 161
    .local v2, "iscanResult":Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->type:I

    .line 162
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->packageName:Ljava/lang/String;

    .line 163
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->softName:Ljava/lang/String;

    .line 164
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->discription:Ljava/lang/String;

    .line 165
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->version:Ljava/lang/String;

    .line 166
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->versionCode:I

    .line 167
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->apkType:I

    .line 168
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->path:Ljava/lang/String;

    .line 169
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->certMd5:Ljava/lang/String;

    .line 170
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->size:I

    .line 171
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->advice:I

    .line 172
    iget v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iput v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->malwareid:I

    .line 173
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->name:Ljava/lang/String;

    .line 174
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->label:Ljava/lang/String;

    .line 175
    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iput-object v4, v2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->url:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->a:Ljava/lang/String;

    invoke-static {v4, p1, v2}, Lcom/lenovo/safecenter/aidl/JsonUtil;->killViruScanResult(Ljava/lang/String;ILcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "strScanresult":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v4}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;

    invoke-interface {v4, v3}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    const-string v3, "wu0wu"

    const-string v4, "RemoteScanvirusService onScanFinished...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportScanVirusWithAIDL()V

    .line 195
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->killVirusonScanFinished(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "strScanFinished":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_2
    return-void

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final onScanStarted()V
    .locals 6

    .prologue
    .line 136
    const-string v3, "wu0wu"

    const-string v4, "RemoteScanvirusService onScanStarted...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v4, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v4, v4, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;I)I

    .line 140
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStarted mCallbacks.beginBroadcast() N="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v5, v5, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v5}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/JsonUtil;->killVirusScanStarted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "strScanstarted":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v3}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->c(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 149
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$2;->b:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v3, v3, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;

    invoke-interface {v3, v2}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "i":I
    .end local v2    # "strScanstarted":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "strScanstarted":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
