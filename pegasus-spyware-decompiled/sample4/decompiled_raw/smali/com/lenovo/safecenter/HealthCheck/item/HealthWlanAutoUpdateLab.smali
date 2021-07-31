.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthWlanAutoUpdateLab.java"


# instance fields
.field public final SCORE_VALUE_WLAN_AUTO_UPDATE_LAB:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->SCORE_VALUE_WLAN_AUTO_UPDATE_LAB:I

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    .line 28
    const/16 v0, 0x14

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mKey:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->isRootItem:Z

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 108
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected optimiza()V
    .locals 7

    .prologue
    const v6, 0x7f0d0624

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setIsAutoUpdate(ZLandroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setAutoUpdateMode(ILandroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 91
    return-void
.end method

.method protected scan()V
    .locals 9

    .prologue
    const v8, 0x7f0d054e

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 35
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0622

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 38
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 39
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 40
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0622

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->isAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    .line 45
    .local v0, "isAutoUpdate":Z
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0624

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 48
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 50
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v7, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 67
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 68
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0623

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x3

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v4, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 64
    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;->mPreViewType:I

    goto :goto_0
.end method
