.class final Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;
.super Ljava/lang/Thread;
.source "TrafficCorrectSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 397
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 398
    .local v4, "msg":Landroid/os/Message;
    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    .line 399
    .local v5, "se":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    const v6, 0x7f0d0836

    iput v6, v4, Landroid/os/Message;->what:I

    .line 400
    sget v6, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    iput v6, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    .line 401
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    const-string v6, ""

    iput-object v6, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 403
    const-string v6, ""

    iput-object v6, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 424
    :cond_0
    :goto_0
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getNetSettingHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 426
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getNetSettingHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    :cond_1
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->i(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    return-void

    .line 405
    :cond_2
    sget v6, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    if-nez v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    const-string v8, "SIM1_properties_safecenter"

    invoke-virtual {v7, v8, v10}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 410
    :goto_1
    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v7}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v8}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    iget-object v9, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v9}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v0, "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    const-class v6, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v6}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 412
    .local v3, "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 416
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    .line 417
    .local v1, "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_message"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_address"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 421
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    goto/16 :goto_0

    .line 408
    .end local v0    # "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .end local v1    # "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    .end local v2    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    .end local v3    # "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    const-string v8, "SIM2_properties_safecenter"

    invoke-virtual {v7, v8, v10}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    goto/16 :goto_1
.end method
