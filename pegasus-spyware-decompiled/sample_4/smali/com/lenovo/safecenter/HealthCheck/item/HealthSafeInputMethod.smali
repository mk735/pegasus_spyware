.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthSafeInputMethod.java"


# instance fields
.field public final SCORE_VALUE_SAFE_INPUT_METHOD_ON:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->SCORE_VALUE_SAFE_INPUT_METHOD_ON:I

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    .line 28
    const/16 v0, 0x11

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mKey:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->isRootItem:Z

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 125
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected optimiza()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safeinputmethod_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v2, 0x7f0d061b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 96
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 97
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 98
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v4, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mPreViewType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 108
    return-void
.end method

.method protected scan()V
    .locals 9

    .prologue
    const v8, 0x7f0d061a

    const v7, 0x7f0d054d

    const/4 v4, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 36
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 39
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeInputMethod_state()I

    move-result v0

    .line 40
    .local v0, "i":I
    if-ne v0, v5, :cond_0

    .line 45
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 46
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 47
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safeinputmethod_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 55
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 81
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v4, 0x7f0d021e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 67
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x3

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 68
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v6, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 75
    iput v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;->mPreViewType:I

    goto :goto_0
.end method
