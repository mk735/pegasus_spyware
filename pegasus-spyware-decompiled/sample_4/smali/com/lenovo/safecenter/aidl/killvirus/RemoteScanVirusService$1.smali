.class final Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;
.super Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;
.source "RemoteScanVirusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-direct {p0}, Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final receiveCommand(Ljava/lang/String;)V
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 84
    .local v4, "object":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 89
    .local v1, "context":Ljava/lang/String;
    const-string v5, "context"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const-string v5, "context"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_1
    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "context="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    const-string v5, "killVirus_scan"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    iget-object v5, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v5, v1}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;Ljava/lang/String;)V

    .line 106
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Ljava/lang/String;
    .end local v3    # "jsonParser":Lorg/json/JSONTokener;
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 97
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    .restart local v3    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v4    # "object":Lorg/json/JSONObject;
    :cond_3
    const-string v5, "killVirus_cancelscan"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    iget-object v5, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    invoke-static {v5}, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a(Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Ljava/lang/String;
    .end local v3    # "jsonParser":Lorg/json/JSONTokener;
    .end local v4    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v0, v0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public final unregisterCallback(Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/killvirus/IRemoteScanVirusCallback;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService$1;->a:Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;

    iget-object v0, v0, Lcom/lenovo/safecenter/aidl/killvirus/RemoteScanVirusService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 76
    :cond_0
    return-void
.end method
