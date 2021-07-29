.class final Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;
.super Landroid/os/Handler;
.source "installJudgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/installJudgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 40
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 43
    :sswitch_0
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0319

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "desc2":Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 45
    .local v4, "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v6, v6, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    const-class v7, Lcom/lenovo/safecenter/antivirus/views/NotiSMSActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const-string v6, "packageName"

    iget-object v7, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v6, "message"

    iget-object v7, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v6, "virusname"

    iget-object v7, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v6, "virustype"

    const-string v7, "2"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    sget-boolean v6, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    if-nez v6, :cond_1

    .line 56
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-virtual {v6, v3}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->startActivity(Landroid/content/Intent;)V

    .line 61
    :goto_1
    sput-boolean v10, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    .line 62
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->b(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z

    .line 65
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->stopSelf()V

    .line 66
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v7, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->initVirus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v1    # "desc2":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "result":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    :sswitch_1
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .line 76
    .local v5, "result_safe":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0318

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "desc":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v6, v6, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v6, 0x0

    sput-boolean v6, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isInstall:Z

    .line 84
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->c(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 86
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    iget-object v7, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->initWhiteListUid(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 88
    .end local v0    # "desc":Ljava/lang/String;
    .end local v5    # "result_safe":Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->a(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 98
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    const/16 v7, 0x110

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/utils/MyUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 99
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->b(Lcom/lenovo/safecenter/antivirus/support/installJudgeService;)Z

    .line 100
    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/support/installJudgeService$1;->a:Lcom/lenovo/safecenter/antivirus/support/installJudgeService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/antivirus/support/installJudgeService;->stopSelf()V

    .line 101
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method
