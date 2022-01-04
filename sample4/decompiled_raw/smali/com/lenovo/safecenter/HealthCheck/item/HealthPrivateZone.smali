.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthPrivateZone.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    .line 25
    const/16 v0, 0x12

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mKey:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->isRootItem:Z

    .line 27
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 28
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 74
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected scan()V
    .locals 6

    .prologue
    const v5, 0x7f0d054e

    const v4, 0x7f0d060d

    const/4 v3, 0x5

    .line 32
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v1, 0x9

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 47
    iput v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mPreViewType:I

    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthPrivateZone;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 51
    return-void
.end method
