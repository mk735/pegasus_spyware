.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 324
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 325
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v8

    .line 326
    .local v8, "states":[I
    const/4 v9, 0x0

    aget v6, v8, v9

    .line 327
    .local v6, "simState0":I
    const/4 v9, 0x1

    aget v7, v8, v9

    .line 328
    .local v7, "simState1":I
    const/4 v9, 0x5

    if-ne v6, v9, :cond_1

    const/4 v1, 0x1

    .line 329
    .local v1, "sim1Ready":Z
    :goto_0
    const/4 v9, 0x5

    if-ne v7, v9, :cond_2

    const/4 v2, 0x1

    .line 330
    .local v2, "sim2Ready":Z
    :goto_1
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 331
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    const/4 v9, 0x2

    if-eq v6, v9, :cond_0

    const/4 v9, 0x3

    if-eq v6, v9, :cond_0

    const/4 v9, 0x2

    if-eq v7, v9, :cond_0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    .line 334
    :cond_0
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v10, 0x7f0d05e1

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "msg":Ljava/lang/String;
    :goto_2
    new-instance v9, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d00f2

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d01b9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 395
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    .end local v6    # "simState0":I
    .end local v7    # "simState1":I
    .end local v8    # "states":[I
    :goto_3
    return-void

    .line 328
    .restart local v6    # "simState0":I
    .restart local v7    # "simState1":I
    .restart local v8    # "states":[I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    .restart local v1    # "sim1Ready":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 336
    .restart local v2    # "sim2Ready":Z
    :cond_3
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const v10, 0x7f0d0099

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 343
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 344
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d009d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 346
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 348
    :cond_5
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sim_alarm_sms"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    const-string v9, "boot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "myutil  sim0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sim1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9, v1, v10}, Lcom/lenovo/safecenter/utils/MyUtils;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "simSerialNumber1":Ljava/lang/String;
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9, v2, v10}, Lcom/lenovo/safecenter/utils/MyUtils;->getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "simSerialNumber2":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 353
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "ORG_SIM_NUMBER1"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    :goto_4
    if-eqz v5, :cond_7

    .line 358
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "ORG_SIM_NUMBER2"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 355
    :cond_6
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "ORG_SIM_NUMBER1"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 360
    :cond_7
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "ORG_SIM_NUMBER2"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 365
    .end local v1    # "sim1Ready":Z
    .end local v2    # "sim2Ready":Z
    .end local v4    # "simSerialNumber1":Ljava/lang/String;
    .end local v5    # "simSerialNumber2":Ljava/lang/String;
    .end local v6    # "simState0":I
    .end local v7    # "simState1":I
    .end local v8    # "states":[I
    :cond_8
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;I)I

    .line 366
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 367
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d009d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 370
    :cond_9
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_c

    .line 372
    :cond_a
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sim_alarm_sms"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "simSerialNumber":Ljava/lang/String;
    :goto_5
    if-nez v3, :cond_b

    .line 377
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 380
    :cond_b
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "ORG_SIM_NUMBER"

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 384
    .end local v3    # "simSerialNumber":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 385
    new-instance v9, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v10, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d00f2

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0099

    invoke-virtual {v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d01b9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_3

    .line 393
    :cond_d
    iget-object v9, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v9}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "sim_alarm_sms"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3
.end method
