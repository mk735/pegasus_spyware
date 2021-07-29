.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthTrafficMonitor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    .line 25
    const/16 v0, 0xf

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mKey:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->isRootItem:Z

    .line 27
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 28
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

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
    const v5, 0x7f0d0614

    const v3, 0x7f0d054e

    const/4 v4, 0x5

    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 36
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mKey:I

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v1, 0x9

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 46
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 51
    return-void
.end method
