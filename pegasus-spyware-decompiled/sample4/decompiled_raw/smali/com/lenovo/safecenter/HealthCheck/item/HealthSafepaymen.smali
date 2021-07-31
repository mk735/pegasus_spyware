.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthSafepaymen.java"


# instance fields
.field public final SCORE_VALUE_SAFE_PAY_MEN_ON:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 27
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->SCORE_VALUE_SAFE_PAY_MEN_ON:I

    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    .line 31
    const/16 v0, 0x10

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mKey:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->isRootItem:Z

    .line 33
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 34
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 124
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected optimiza()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->register()Z

    .line 89
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0619

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v2, 0x7f0d05d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 95
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 96
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 97
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

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
    const v8, 0x7f0d054e

    const/4 v4, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 39
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0618

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 42
    sget v1, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 48
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 50
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0618

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isSafepaymen_on()Z

    move-result v0

    .line 56
    .local v0, "isOn":Z
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 60
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v2, 0x9

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 61
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v4, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 80
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 83
    .end local v0    # "isOn":Z
    :cond_0
    return-void

    .line 66
    .restart local v0    # "isOn":Z
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v4, 0x7f0d021c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x3

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 70
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 71
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 75
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v5, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 77
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;->mPreViewType:I

    goto :goto_0
.end method
