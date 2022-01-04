.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthProtectThief.java"


# instance fields
.field public final SCORE_VALUE_PROTECT_THIEF:I

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 36
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->SCORE_VALUE_PROTECT_THIEF:I

    .line 39
    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->a:Z

    .line 41
    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b:Z

    .line 48
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    .line 49
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mKey:I

    .line 50
    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->isRootItem:Z

    .line 51
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 52
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafePhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "safePhoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 246
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v4

    .line 248
    .local v4, "states":[I
    aget v2, v4, v6

    .line 249
    .local v2, "simState0":I
    aget v3, v4, v7

    .line 250
    .local v3, "simState1":I
    if-ne v2, v9, :cond_0

    move v0, v7

    .line 251
    .local v0, "sim1Ready":Z
    :goto_0
    if-ne v3, v9, :cond_1

    move v1, v7

    .line 252
    .local v1, "sim2Ready":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v5, v6

    .line 262
    .end local v0    # "sim1Ready":Z
    .end local v1    # "sim2Ready":Z
    .end local v2    # "simState0":I
    .end local v3    # "simState1":I
    .end local v4    # "states":[I
    :goto_2
    return v5

    .restart local v2    # "simState0":I
    .restart local v3    # "simState1":I
    .restart local v4    # "states":[I
    :cond_0
    move v0, v6

    .line 250
    goto :goto_0

    .restart local v0    # "sim1Ready":Z
    :cond_1
    move v1, v6

    .line 251
    goto :goto_1

    .restart local v1    # "sim2Ready":Z
    :cond_2
    move v5, v7

    .line 255
    goto :goto_2

    .line 258
    .end local v0    # "sim1Ready":Z
    .end local v1    # "sim2Ready":Z
    .end local v2    # "simState0":I
    .end local v3    # "simState1":I
    .end local v4    # "states":[I
    :cond_3
    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v9, :cond_4

    move v5, v6

    .line 260
    goto :goto_2

    :cond_4
    move v5, v7

    .line 262
    goto :goto_2
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 227
    return-void
.end method

.method protected click()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0d00f2

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/PwdUtil;->hasPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-static {}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 188
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x7

    iput v2, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 189
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v8, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 196
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 198
    invoke-static {v7}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_1
    iput-boolean v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b:Z

    .line 202
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const-class v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0629

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/lenovo/safecenter/utils/DialogUtil;->NoticePositiveDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 213
    :cond_3
    iput-boolean v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b:Z

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0493

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0044

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/DialogUtil;->NoticeDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public isShowProtectThiefActivity()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b:Z

    return v0
.end method

.method public manual()V
    .locals 9

    .prologue
    const v8, 0x7f0d048f

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 143
    iput-boolean v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->b:Z

    .line 144
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectThiefSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 151
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 171
    iput-boolean v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->a:Z

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    goto :goto_0
.end method

.method protected optimiza()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 119
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->a:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 139
    return-void
.end method

.method protected scan()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x7f0d0036

    const/4 v5, 0x5

    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v2, 0x7f0d054e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 58
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d054e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectThiefSwitchState()Z

    move-result v0

    .line 64
    .local v0, "isOn":Z
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 71
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v5, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 74
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 114
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x2

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 80
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    .line 86
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    goto :goto_0

    .line 90
    :cond_1
    if-eqz v0, :cond_2

    .line 91
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 94
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 95
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 96
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v5, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 99
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    goto/16 :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 104
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 106
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v8, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 109
    iput v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->mPreViewType:I

    goto/16 :goto_0
.end method
