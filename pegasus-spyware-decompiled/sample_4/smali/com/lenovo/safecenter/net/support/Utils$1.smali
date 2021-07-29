.class final Lcom/lenovo/safecenter/net/support/Utils$1;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/support/Utils;->initTrafficCorrectConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 395
    iget-object v6, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v6, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    const-string v7, "SIM1_properties_safecenter"

    invoke-virtual {v6, v7, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 399
    .local v4, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/lenovo/safecenter/net/support/Utils;->hasSetConfiged(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    const-string v7, "sms_message"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v6, "SIM_CARD_PROVINCE"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SIM_CARD_CITY"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM_CARD_CARRY"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SIM_CARD_BRAND"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v0, "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    const-class v6, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v6}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 403
    .local v3, "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    .line 406
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    .line 407
    .local v1, "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    const-string v6, "sstest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",msg ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_message"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_address"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    .end local v0    # "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .end local v1    # "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    .end local v2    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    .end local v3    # "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    const-string v7, "SIM1_properties_safecenter"

    invoke-virtual {v6, v7, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 412
    .local v5, "sp2":Landroid/content/SharedPreferences;
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lenovo/safecenter/net/support/Utils$1;->a:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/net/support/Utils;->hasSetConfiged(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "sms_message"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v6, "SIM_CARD_PROVINCE"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SIM_CARD_CITY"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM_CARD_CARRY"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SIM_CARD_BRAND"

    const-string v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .restart local v0    # "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    const-class v6, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v6}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 416
    .restart local v3    # "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .restart local v2    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    .line 419
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    .line 420
    .restart local v1    # "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    const-string v6, "sstest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",msg ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_message"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "sms_address"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
