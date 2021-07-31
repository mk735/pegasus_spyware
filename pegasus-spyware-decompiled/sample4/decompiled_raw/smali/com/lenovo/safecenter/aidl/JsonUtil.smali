.class public Lcom/lenovo/safecenter/aidl/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field public static final COMMAND_ACTION_ENABLE_UNKNOW_PACKAGE_INSTALL:Ljava/lang/String; = "enableUnknowPackageInstall"

.field public static final COMMAND_ACTION_HEALTH_OPTIMIZE_FINISHED:Ljava/lang/String; = "health_optimizecomplete"

.field public static final COMMAND_ACTION_HEALTH_OPTIMIZE_STARTED:Ljava/lang/String; = "health_optimizestarted"

.field public static final COMMAND_ACTION_HEALTH_PROCESSING:Ljava/lang/String; = "health_processingitem"

.field public static final COMMAND_ACTION_HEALTH_PROGRESS_CHANGED:Ljava/lang/String; = "health_progresschange"

.field public static final COMMAND_ACTION_HEALTH_SCAN_FINISHED:Ljava/lang/String; = "health_scancomplete"

.field public static final COMMAND_ACTION_HEALTH_SCAN_RESULT:Ljava/lang/String; = "health_processeditem"

.field public static final COMMAND_ACTION_HEALTH_SCAN_STARTED:Ljava/lang/String; = "health_scanstarted"

.field public static final COMMAND_ACTION_HEALTH_SCORE_CHANGED:Ljava/lang/String; = "health_scorechange"

.field public static final COMMAND_ACTION_HEALTH_STATUS_CHANGED:Ljava/lang/String; = "health_statuschange"

.field public static final COMMAND_ACTION_KILLVIRUS_SCAN_FINISHED:Ljava/lang/String; = "killVirus_scanfinished"

.field public static final COMMAND_ACTION_KILLVIRUS_SCAN_RESULT:Ljava/lang/String; = "killVirus_scanresult"

.field public static final COMMAND_ACTION_KILLVIRUS_SCAN_STARTED:Ljava/lang/String; = "killVirus_scanstarted"

.field public static final COMMAND_ACTION_SET_USB_DEBUG_MODE:Ljava/lang/String; = "setUsbDebugMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableUnknowPackageInstall(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 359
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "enableUnknowPackageInstall"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v3, "context"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 363
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 366
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static healthCancelScan(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "health_cancelscan"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static healthOptimize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "action"

    const-string v5, "health_optimize"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v4, "context"

    const-string v5, "healthContex"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 290
    .local v3, "keys":Lorg/json/JSONArray;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 291
    const-string v4, "keys"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "keys":Lorg/json/JSONArray;
    :goto_0
    return-object v4

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static healthOptimizeComplete(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "health_optimizecomplete"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static healthOptimizesStarted(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "health_optimizestarted"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static healthProcessed(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "health_processeditem"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v3, "context"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "key"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string v3, "title"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "title_detail"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "content"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "view_type"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v3, "weight"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v3, "isOnly"

    iget-boolean v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    const-string v3, "action_description"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v3, "report_type"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->report_type:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v3, "security_level"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->security_level:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static healthProcessing(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "health_processingitem"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v3, "context"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "key"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v3, "title"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v3, "title_detail"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "content"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v3, "view_type"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v3, "weight"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v3, "isOnly"

    iget-boolean v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 191
    const-string v3, "action_description"

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v3, "report_type"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->report_type:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string v3, "security_level"

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->security_level:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static healthProgressChanged(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "progress"    # I
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "health_progresschange"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v3, "context"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "progress"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 254
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static healthScan(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "health_scan"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v2, "context"

    const-string v3, "healthContex"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 266
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static healthScanFinished(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "health_scancomplete"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 224
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static healthScanStarted(Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "maxProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "statusMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "viewTypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "action"

    const-string v11, "health_scanstarted"

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v10, "context"

    invoke-virtual {v0, v10, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v1, "data":Lorg/json/JSONObject;
    const-string v10, "maxProgress"

    invoke-virtual {v1, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 100
    .local v6, "statusArray":Lorg/json/JSONArray;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 102
    .local v4, "iteratorStatus":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v7, "statusObject":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 105
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v10, "type"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v10, "description"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "iteratorStatus":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v6    # "statusArray":Lorg/json/JSONArray;
    .end local v7    # "statusObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    const/4 v10, 0x0

    .line 126
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v10

    .line 109
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "iteratorStatus":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v6    # "statusArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v10, "statuses"

    invoke-virtual {v1, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v8, "viewTypeArray":Lorg/json/JSONArray;
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 113
    .local v5, "iteratorViewType":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v9, "viewTypeObject":Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v10, "type"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v10, "description"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 120
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "viewTypeObject":Lorg/json/JSONObject;
    :cond_1
    const-string v10, "viewTypes"

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v10, "data"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method public static healthScoreChanged(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "score"    # I
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "health_scorechange"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v3, "context"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "score"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 237
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 239
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static healthStatusChanged(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "statusId"    # I
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "health_statuschange"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v3, "context"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "status_id"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 212
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static killViruScanResult(Ljava/lang/String;ILcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "progress"    # I
    .param p2, "result"    # Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "killVirus_scanresult"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v3, "context"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "progress"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "type"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->type:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v3, "packageName"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v3, "softName"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->softName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v3, "discription"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->discription:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v3, "version"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->version:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v3, "versionCode"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->versionCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v3, "apkType"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->apkType:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v3, "path"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v3, "certMd5"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->certMd5:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v3, "size"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->size:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v3, "advice"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->advice:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v3, "malwareid"

    iget v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->malwareid:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v3, "name"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v3, "label"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "url"

    iget-object v4, p2, Lcom/lenovo/safecenter/aidl/killvirus/ScanVirusResult;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static killVirusScanStarted(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "killVirus_scanstarted"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 27
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static killVirusonScanFinished(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    const-string v3, "killVirus_scanfinished"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v2, "context"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static returnUsbDebugMode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "isEnable"    # Z

    .prologue
    .line 342
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 344
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "setUsbDebugMode"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v3, "context"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 347
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "enable"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 348
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 351
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static returnenableUnknowPackageInstall(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "isEnable"    # Z

    .prologue
    .line 373
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 375
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "enableUnknowPackageInstall"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v3, "context"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "enable"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 379
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 382
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setUsbDebugMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v0, "command":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "setUsbDebugMode"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v3, "context"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .local v1, "data":Lorg/json/JSONObject;
    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 333
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 334
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 336
    const/4 v3, 0x0

    goto :goto_0
.end method
