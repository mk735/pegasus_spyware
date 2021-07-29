.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthReadPrivacyApp.java"


# instance fields
.field public final SCORE_VALUE_BACKGROUD_READ_PRIVACY:I

.field private a:I

.field private b:Lcom/lenovo/safecenter/database/AppDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 28
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->SCORE_VALUE_BACKGROUD_READ_PRIVACY:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    .line 34
    const/16 v0, 0xd

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mKey:I

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 36
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->isRootItem:Z

    .line 37
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 38
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 147
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected optimiza()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    const-string v0, "privacy"

    .line 106
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->canDoInRoot()Z

    move-result v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->expertSuggest(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 109
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0613

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0498

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 118
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x7

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 119
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 120
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v8, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mPreViewType:I

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 130
    return-void
.end method

.method protected scan()V
    .locals 12

    .prologue
    const v11, 0x7f0d0612

    const v8, 0x7f0d054d

    const/4 v7, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 43
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 47
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectPeepSwitchState()Z

    move-result v1

    .line 48
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 49
    const-string v3, "privacy"

    .line 50
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->canDoInRoot()Z

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 52
    .local v2, "readPrivacyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->healthCheckPermission(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    .local v0, "allAppSize":I
    if-eqz v0, :cond_0

    .line 62
    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 63
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mKey:I

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 64
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 66
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 68
    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0497

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 73
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v10, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 74
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v5, 0x3

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 75
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 76
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d049a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v5

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->a:I

    mul-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 81
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v10, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 84
    iput v10, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mPreViewType:I

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 97
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 101
    .end local v0    # "allAppSize":I
    .end local v2    # "readPrivacyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-void

    .line 86
    .restart local v0    # "allAppSize":I
    .restart local v2    # "readPrivacyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0499

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 88
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 89
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v5, 0x9

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 90
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 91
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mContext:Landroid/content/Context;

    const v6, 0x7f0d048f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v7, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 94
    iput v7, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;->mPreViewType:I

    goto :goto_0
.end method
