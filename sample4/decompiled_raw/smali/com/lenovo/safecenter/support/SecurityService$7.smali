.class final Lcom/lenovo/safecenter/support/SecurityService$7;
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
    .line 2332
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 2334
    new-instance v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;-><init>()V

    .line 2336
    .local v5, "result":Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v6}, Lcom/lenovo/safecenter/support/SecurityService;->s(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v8}, Lcom/lenovo/safecenter/support/SecurityService;->a(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v8}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCorrectionResult(Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2337
    .local v2, "errCode":I
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v6, v2}, Lcom/lenovo/safecenter/support/SecurityService;->a(I)V

    .line 2338
    const-string v6, "TrafficCorrectPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "errcode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const-string v6, "TrafficCorrectPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    const-string v6, "TrafficCorrectPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "free"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", used"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const-string v6, "10001"

    sget-object v7, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "10000"

    sget-object v7, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "error"

    sget-object v7, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2342
    :cond_0
    if-nez v2, :cond_2

    iget v6, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    if-ne v6, v9, :cond_2

    iget v6, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    if-ne v6, v9, :cond_2

    .line 2375
    :cond_1
    :goto_0
    return-void

    .line 2346
    :cond_2
    if-nez v2, :cond_3

    iget v6, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    if-eqz v6, :cond_1

    .line 2349
    :cond_3
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/SecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/net/support/Utils;->getCorrectPostion(Landroid/content/Context;)I

    move-result v0

    .line 2350
    .local v0, "correctCard":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2351
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.lenovo.safecenter.traffic.correction"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2352
    const-string v6, "code"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2353
    const-string v6, "card"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2354
    const-string v6, "description"

    iget-object v7, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v7}, Lcom/lenovo/safecenter/support/SecurityService;->t(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    const-string v6, "phone_number"

    sget-object v7, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2356
    const-string v6, "left"

    iget v7, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2357
    const-string v6, "used"

    iget v7, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2358
    const-string v6, "TrafficCorrectPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "errstring = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v8}, Lcom/lenovo/safecenter/support/SecurityService;->t(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v6, v3}, Lcom/lenovo/safecenter/support/SecurityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2360
    sput-boolean v11, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->canCorrect:Z

    .line 2361
    if-nez v2, :cond_5

    .line 2362
    iget v6, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    if-ne v6, v9, :cond_4

    iget v6, v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    if-eq v6, v9, :cond_5

    .line 2363
    :cond_4
    if-nez v0, :cond_6

    .line 2365
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-string v7, "SIM1_properties_safecenter"

    invoke-virtual {v6, v7, v10}, Lcom/lenovo/safecenter/support/SecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2369
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    const-string v6, "has_correct_sucessed"

    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2372
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2373
    .local v4, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v4, Landroid/os/Message;->what:I

    .line 2374
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v6}, Lcom/lenovo/safecenter/support/SecurityService;->c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/32 v7, 0xafc8

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2367
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService$7;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-string v7, "SIM2_properties_safecenter"

    invoke-virtual {v6, v7, v10}, Lcom/lenovo/safecenter/support/SecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_1
.end method
