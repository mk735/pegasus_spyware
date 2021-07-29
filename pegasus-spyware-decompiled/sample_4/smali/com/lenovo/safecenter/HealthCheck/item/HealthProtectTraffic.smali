.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthProtectTraffic.java"


# instance fields
.field public final SCORE_VALUE_PROTECT_TRAFFIC:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->SCORE_VALUE_PROTECT_TRAFFIC:I

    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mKey:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->isRootItem:Z

    .line 29
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 30
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 96
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected optimiza()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Const;->setProtectTrafficSwitchState(Z)V

    .line 60
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v2, 0x7f0d060c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v6, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v6, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mPreViewType:I

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 78
    return-void
.end method

.method protected scan()V
    .locals 7

    .prologue
    const v6, 0x7f0d060b

    const v3, 0x7f0d054d

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 37
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v1, 0x9

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v5, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 50
    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mPreViewType:I

    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 54
    return-void
.end method
