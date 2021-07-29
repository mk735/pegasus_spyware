.class final Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;
.super Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;
.source "RemoteHealthCheckService.java"


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
    .line 72
    iput-object p1, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-direct {p0}, Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final receiveCommand(Ljava/lang/String;)V
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    const-string v10, "wu0wu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "command="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 89
    .local v9, "object":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v10, "action"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 91
    const-string v10, "action"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "context":Ljava/lang/String;
    const-string v10, "context"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    const-string v10, "context"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_1
    const-string v10, "wu0wu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v10, "wu0wu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "context="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 101
    const-string v10, "health_scan"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 102
    iget-object v10, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v10, v1}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;Ljava/lang/String;)V

    .line 133
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Ljava/lang/String;
    .end local v5    # "jsonParser":Lorg/json/JSONTokener;
    .end local v9    # "object":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 103
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    .restart local v5    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v9    # "object":Lorg/json/JSONObject;
    :cond_3
    const-string v10, "health_cancelscan"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 104
    iget-object v10, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v10}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Ljava/lang/String;
    .end local v5    # "jsonParser":Lorg/json/JSONTokener;
    .end local v9    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 130
    .local v3, "e":Lorg/json/JSONException;
    const-string v10, "wu0wu"

    const-string v11, "aidl JSONException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    .restart local v5    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v9    # "object":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v10, "health_optimize"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v8, "keysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 108
    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 109
    .local v2, "data":Lorg/json/JSONObject;
    const-string v10, "keys"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 110
    const-string v10, "keys"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 111
    .local v7, "keys":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-ge v4, v10, :cond_5

    .line 113
    :try_start_2
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 114
    .local v6, "key":I
    const-string v10, "wu0wu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "health_optimize key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .end local v6    # "key":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v7    # "keys":Lorg/json/JSONArray;
    :cond_5
    :try_start_3
    const-string v10, "wu0wu"

    const-string v11, "aidl doOptimize"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v10, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v10, v1, v8}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 124
    .end local v8    # "keysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    const-string v10, "health_canceloptimize"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 126
    iget-object v10, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    invoke-static {v10}, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->b(Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v7    # "keys":Lorg/json/JSONArray;
    .restart local v8    # "keysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public final registerCallback(Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v0, v0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public final unregisterCallback(Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/safecenter/aidl/healthcheck/IRemoteHealthCheckCallback;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService$1;->a:Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;

    iget-object v0, v0, Lcom/lenovo/safecenter/aidl/healthcheck/RemoteHealthCheckService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 81
    :cond_0
    return-void
.end method
