.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthAdvertiseIntercept.java"


# instance fields
.field public final SCORE_VALUE_ADVERTISEMENT_INTERCEPT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->SCORE_VALUE_ADVERTISEMENT_INTERCEPT:I

    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    .line 27
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mKey:I

    .line 28
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->isRootItem:Z

    .line 29
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 30
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 113
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected optimiza()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 72
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d060a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->adSwitch(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v3, 0x7f0d04d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mPreViewType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 96
    :cond_1
    return-void
.end method

.method protected scan()V
    .locals 8

    .prologue
    const v7, 0x7f0d054d

    const v3, 0x7f0d04d8

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0609

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 38
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0609

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->isAdOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v1, 0x9

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v6, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 68
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 56
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x3

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mContext:Landroid/content/Context;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v5, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 63
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;->mPreViewType:I

    goto :goto_0
.end method
