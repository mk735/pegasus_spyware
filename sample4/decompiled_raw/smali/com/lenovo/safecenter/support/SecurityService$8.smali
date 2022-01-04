.class final Lcom/lenovo/safecenter/support/SecurityService$8;
.super Ljava/lang/Thread;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    .line 2426
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/Utils;->getCorrectPostion(Landroid/content/Context;)I

    move-result v6

    .line 2428
    .local v6, "correctCard":I
    if-nez v6, :cond_2

    .line 2429
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-string v1, "SIM1_properties_safecenter"

    invoke-virtual {v0, v1, v13}, Lcom/lenovo/safecenter/support/SecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2433
    .local v12, "sp":Landroid/content/SharedPreferences;
    :goto_0
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctCard ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    const-string v0, ""

    const-string v1, "sms_message"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "sms_address"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2436
    :cond_0
    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v1, "SIM_CARD_PROVINCE"

    const-string v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM_CARD_CITY"

    const-string v3, ""

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM_CARD_CARRY"

    const-string v4, ""

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM_CARD_BRAND"

    const-string v5, ""

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    .line 2438
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->s(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    move-result v11

    .line 2439
    .local v11, "setConfigCode":I
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->k:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->s(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    move-result v9

    .line 2442
    .local v9, "err":I
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->k:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2443
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info list size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v2, v2, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "err ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2445
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    iget-object v0, v0, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    .line 2446
    .local v7, "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sms_address"

    invoke-virtual {v7}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2447
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sms_message"

    invoke-virtual {v7}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2451
    .end local v7    # "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    .end local v9    # "err":I
    .end local v11    # "setConfigCode":I
    :cond_1
    const-string v0, "sms_message"

    const-string v1, ""

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->message:Ljava/lang/String;

    .line 2452
    const-string v0, "sms_address"

    const-string v1, ""

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    .line 2453
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 2454
    .local v10, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/Utils;->isConnectInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2455
    iput v14, v10, Landroid/os/Message;->what:I

    .line 2456
    const v0, 0x7f0d082c

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 2457
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2483
    :goto_1
    return-void

    .line 2431
    .end local v10    # "msg":Landroid/os/Message;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-string v1, "SIM2_properties_safecenter"

    invoke-virtual {v0, v1, v13}, Lcom/lenovo/safecenter/support/SecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    goto/16 :goto_0

    .line 2461
    .restart local v10    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0, v6}, Lcom/lenovo/safecenter/net/support/Utils;->checkSIMState(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2462
    iput v14, v10, Landroid/os/Message;->what:I

    .line 2463
    const v0, 0x7f0d082b

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 2464
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2470
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2471
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->w(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->message:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->u(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->v(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 2473
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in muti  di.getAddress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "card pos ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",di.getMessage() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->d(Lcom/lenovo/safecenter/support/SecurityService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2480
    :catch_0
    move-exception v8

    .line 2481
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2476
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SecurityService;->x(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/telephony/SmsManager;

    move-result-object v0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/lenovo/safecenter/support/SecurityService;->message:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SecurityService;->u(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/support/SecurityService$8;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->v(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2477
    const-string v0, "TrafficCorrectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in single  di.getAddress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "di.getMessage() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
