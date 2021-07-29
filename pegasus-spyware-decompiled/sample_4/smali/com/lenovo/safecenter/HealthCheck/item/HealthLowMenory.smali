.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthLowMenory.java"


# instance fields
.field private final a:F

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 25
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->a:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->b:Z

    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mKey:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->isRootItem:Z

    .line 36
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 37
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 102
    return-void
.end method

.method protected click()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->b:Z

    .line 97
    return-void
.end method

.method public isShowLowMemoryActivity()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->b:Z

    return v0
.end method

.method public manual()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 76
    iput-boolean v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->b:Z

    .line 77
    invoke-static {}, Lcom/lenovo/safecenter/utils/MyUtils;->getDataDirectorySize()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 80
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 89
    :cond_1
    return-void
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected scan()V
    .locals 8

    .prologue
    const v7, 0x7f0d054d

    const/4 v6, 0x1

    const v5, 0x7f0d0605

    const/4 v4, 0x3

    .line 41
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 44
    invoke-static {}, Lcom/lenovo/safecenter/utils/MyUtils;->getDataDirectorySize()F

    move-result v0

    .line 46
    .local v0, "memoryUsedPersent":F
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 47
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 48
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mKey:I

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 49
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 55
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x5

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 57
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mContext:Landroid/content/Context;

    const v3, 0x7f0d05d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v4, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 60
    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mPreViewType:I

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 66
    :cond_0
    return-void
.end method
