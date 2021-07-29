.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthProtectVirus.java"


# instance fields
.field public final SCORE_VALUE_PROTECT_VIRUS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->SCORE_VALUE_PROTECT_VIRUS:I

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    .line 28
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mKey:I

    .line 29
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->isRootItem:Z

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 110
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected optimiza()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/lenovo/safecenter/utils/Const;->setProtectVirusSwitchState(ZLandroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0617

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 93
    return-void
.end method

.method protected scan()V
    .locals 9

    .prologue
    const v8, 0x7f0d054e

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    .line 36
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0616

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 39
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 40
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 41
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0616

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->getProtectVirusSwitchState(Landroid/content/Context;)Z

    move-result v0

    .line 46
    .local v0, "isOn":Z
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 50
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 51
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v4, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 54
    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mPreViewType:I

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 71
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d05d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x3

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 61
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v5, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 64
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mPreViewType:I

    .line 65
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    goto :goto_0
.end method
