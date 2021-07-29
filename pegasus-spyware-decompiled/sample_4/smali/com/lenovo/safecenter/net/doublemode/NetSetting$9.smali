.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;
.super Ljava/lang/Thread;
.source "NetSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iput p2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1101
    iget v7, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->a:I

    if-nez v7, :cond_0

    .line 1102
    iget-object v7, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    const-string v8, "SIM1_properties_safecenter"

    invoke-virtual {v7, v8, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1108
    .local v6, "sp":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    const-string v7, "SIM_CARD_PROVINCE"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM_CARD_CITY"

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SIM_CARD_CARRY"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SIM_CARD_BRAND"

    const-string v11, ""

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .local v0, "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    const-class v7, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v7}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 1114
    .local v3, "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->setConfig(Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;)I

    .line 1115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    .line 1117
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;

    .line 1118
    .local v1, "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1119
    .local v4, "msg":Landroid/os/Message;
    const v7, 0x7f0d0836

    iput v7, v4, Landroid/os/Message;->what:I

    .line 1120
    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;-><init>()V

    .line 1121
    .local v5, "se":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    .line 1122
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    .line 1123
    iget v7, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->a:I

    iput v7, v5, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->id:I

    .line 1124
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1125
    iget-object v7, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void

    .line 1105
    .end local v0    # "config":Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
    .end local v1    # "di":Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;
    .end local v2    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;>;"
    .end local v3    # "mTcMgr":Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "se":Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    const-string v8, "SIM2_properties_safecenter"

    invoke-virtual {v7, v8, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0
.end method
