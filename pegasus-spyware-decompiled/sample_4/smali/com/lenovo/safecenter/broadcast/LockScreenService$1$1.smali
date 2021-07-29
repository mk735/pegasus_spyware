.class final Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;
.super Ljava/lang/Thread;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/LockScreenService$1;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 94
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 95
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v9

    .line 96
    .local v9, "states":[I
    const/4 v10, 0x0

    aget v7, v9, v10

    .line 97
    .local v7, "simState0":I
    const/4 v10, 0x1

    aget v8, v9, v10

    .line 98
    .local v8, "simState1":I
    const/4 v10, 0x5

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 100
    .local v2, "sim1Ready":Z
    :goto_0
    const/4 v10, 0x5

    if-eq v8, v10, :cond_1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 102
    .local v3, "sim2Ready":Z
    :goto_1
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v12, v12, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-virtual {v10, v11, v2, v12}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "simSerialNumber1":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v12, v12, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-virtual {v10, v11, v3, v12}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "simSerialNumber2":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 105
    sget-object v10, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ORG_SIM_NUMBER1"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    :goto_2
    if-eqz v6, :cond_6

    .line 110
    sget-object v10, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ORG_SIM_NUMBER2"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    .end local v2    # "sim1Ready":Z
    .end local v3    # "sim2Ready":Z
    .end local v5    # "simSerialNumber1":Ljava/lang/String;
    .end local v6    # "simSerialNumber2":Ljava/lang/String;
    .end local v7    # "simState0":I
    .end local v8    # "simState1":I
    .end local v9    # "states":[I
    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    invoke-virtual {v10}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->stopSelf()V

    .line 129
    return-void

    .line 98
    .restart local v7    # "simState0":I
    .restart local v8    # "simState1":I
    .restart local v9    # "states":[I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    .restart local v2    # "sim1Ready":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    .restart local v3    # "sim2Ready":Z
    .restart local v5    # "simSerialNumber1":Ljava/lang/String;
    .restart local v6    # "simSerialNumber2":Ljava/lang/String;
    :cond_5
    sget-object v10, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ORG_SIM_NUMBER1"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 112
    :cond_6
    sget-object v10, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ORG_SIM_NUMBER2"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 115
    .end local v2    # "sim1Ready":Z
    .end local v3    # "sim2Ready":Z
    .end local v5    # "simSerialNumber1":Ljava/lang/String;
    .end local v6    # "simSerialNumber2":Ljava/lang/String;
    .end local v7    # "simState0":I
    .end local v8    # "simState1":I
    .end local v9    # "states":[I
    :cond_7
    iget-object v10, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService$1$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    iget-object v10, v10, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;->a:Lcom/lenovo/safecenter/broadcast/LockScreenService;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 116
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 117
    .local v0, "SimState":I
    const/4 v10, 0x5

    if-eq v0, v10, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_8

    const/4 v10, 0x3

    if-ne v0, v10, :cond_2

    .line 120
    :cond_8
    const/4 v4, 0x0

    .line 121
    .local v4, "simSerialNumber":Ljava/lang/String;
    :goto_4
    if-nez v4, :cond_9

    .line 122
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "......"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 125
    :cond_9
    sget-object v10, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ORG_SIM_NUMBER"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3
.end method
