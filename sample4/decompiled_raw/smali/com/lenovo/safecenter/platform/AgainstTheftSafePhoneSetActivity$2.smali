.class final Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;
.super Ljava/lang/Object;
.source "AgainstTheftSafePhoneSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    iget-object v11, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    iget-object v11, v11, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 72
    const-string v8, ""

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Const;->setSafePhoneNumber(Ljava/lang/String;)V

    .line 74
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v10, "sim_alarm_sms"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    iget-object v11, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->isMobileNO(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 81
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/safecenter/utils/Const;->setSafePhoneNumber(Ljava/lang/String;)V

    .line 84
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 85
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d00a9

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-virtual {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->finish()V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    .line 90
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->e(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 91
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "sim_alarm_sms"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "sim_alarm_screen"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 94
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 95
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v7

    .line 96
    .local v7, "states":[I
    aget v5, v7, v9

    .line 97
    .local v5, "simState0":I
    aget v6, v7, v8

    .line 98
    .local v6, "simState1":I
    if-ne v5, v12, :cond_4

    move v0, v8

    .line 99
    .local v0, "sim1Ready":Z
    :goto_1
    if-ne v6, v12, :cond_5

    move v1, v8

    .line 100
    .local v1, "sim2Ready":Z
    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    .line 103
    :cond_3
    const-string v10, "boot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "sim1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v9, v0, v10}, Lcom/lenovo/safecenter/utils/MyUtils;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "simSerialNumber1":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8, v1, v9}, Lcom/lenovo/safecenter/utils/MyUtils;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "simSerialNumber2":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 107
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ORG_SIM_NUMBER1"

    invoke-interface {v8, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    :goto_3
    if-eqz v4, :cond_7

    .line 112
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ORG_SIM_NUMBER2"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v0    # "sim1Ready":Z
    .end local v1    # "sim2Ready":Z
    .end local v3    # "simSerialNumber1":Ljava/lang/String;
    .end local v4    # "simSerialNumber2":Ljava/lang/String;
    :cond_4
    move v0, v9

    .line 98
    goto :goto_1

    .restart local v0    # "sim1Ready":Z
    :cond_5
    move v1, v9

    .line 99
    goto :goto_2

    .line 109
    .restart local v1    # "sim2Ready":Z
    .restart local v3    # "simSerialNumber1":Ljava/lang/String;
    .restart local v4    # "simSerialNumber2":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ORG_SIM_NUMBER1"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 114
    :cond_7
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ORG_SIM_NUMBER2"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 118
    .end local v0    # "sim1Ready":Z
    .end local v1    # "sim2Ready":Z
    .end local v3    # "simSerialNumber1":Ljava/lang/String;
    .end local v4    # "simSerialNumber2":Ljava/lang/String;
    .end local v5    # "simState0":I
    .end local v6    # "simState1":I
    .end local v7    # "states":[I
    :cond_8
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    invoke-static {v8, v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;I)I

    .line 119
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->g(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 120
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "simSerialNumber":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 123
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 126
    :cond_9
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "ORG_SIM_NUMBER"

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 136
    .end local v2    # "simSerialNumber":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity$2;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-static {v8}, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;->h(Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;)V

    goto/16 :goto_0
.end method
