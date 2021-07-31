.class final Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;
.super Ljava/lang/Thread;
.source "SyncDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 59
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/WflUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "netScan_switch"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ne v5, v4, :cond_2

    .line 62
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v4}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getAppSInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "app_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    new-instance v4, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct {v4}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-virtual {v4, v0, v5}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v2, v4}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->execNetResult(Ljava/util/List;Landroid/content/Context;)V

    .line 65
    const-string v4, "scantime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v4, v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->notifyVirus(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .end local v0    # "app_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .end local v2    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 104
    .local v3, "mes":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 105
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v4}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->b(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .end local v3    # "mes":Landroid/os/Message;
    :goto_1
    return-void

    .line 72
    .restart local v0    # "app_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .restart local v2    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    const v6, 0x7f0d0758

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->showSafeNotification(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "app_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/Appinfo;>;"
    .end local v2    # "list_v":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/antivirus/domain/VirusDemo;>;"
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "netScan_weekservice"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 85
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->sendGETRequest_virus(Landroid/content/Context;)V

    .line 86
    const-string v5, "autoscan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "virusnetadd"

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "virusnetshowtime"

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v5, "virusnetshowtime"

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "virusnetshowtime"

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isSameDate(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    :cond_3
    const-string v5, "virusnetadd"

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "virusnetadd"

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->b(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    const-string v5, "autoscan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "virusnetadd"

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "virusnetshowtime"

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "virusnetshowtime"

    iget-object v8, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$2;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isSameDate(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 98
    :catch_2
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method
