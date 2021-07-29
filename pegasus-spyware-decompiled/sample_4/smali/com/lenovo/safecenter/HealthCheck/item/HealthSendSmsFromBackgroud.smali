.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthSendSmsFromBackgroud.java"


# instance fields
.field public final SCORE_VALUE_BACKGROUD_SENDSMS:I

.field private a:Lcom/lenovo/safecenter/database/AppDatabase;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 28
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->SCORE_VALUE_BACKGROUD_SENDSMS:I

    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    .line 36
    const/16 v0, 0xb

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mKey:I

    .line 37
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 38
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->isRootItem:Z

    .line 39
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 40
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 147
    return-void
.end method

.method protected click()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected optimiza()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    const-string v0, "sendmessage"

    .line 104
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->canDoInRoot()Z

    move-result v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->expertSuggest(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 107
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0608

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 111
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0495

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v8, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 116
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v2, 0x7

    iput v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v6, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 118
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v3, 0x7f0d048f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v1, v8, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 122
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mPreViewType:I

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 129
    return-void
.end method

.method protected scan()V
    .locals 12

    .prologue
    const v11, 0x7f0d0607

    const v8, 0x7f0d054d

    const/4 v7, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 44
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 47
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectTrafficSwitchState()Z

    move-result v1

    .line 48
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 49
    const-string v3, "sendmessage"

    .line 50
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->canDoInRoot()Z

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->loadApps(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 52
    .local v2, "sendSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->healthCheckPermission(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "allAppSize":I
    if-eqz v0, :cond_0

    .line 60
    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 61
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mKey:I

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 62
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 64
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 67
    iget v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0494

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v10, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 72
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v5, 0x3

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 73
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 74
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v6, 0x7f0d049a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 76
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScore()I

    move-result v5

    iget v6, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->b:I

    mul-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    .line 79
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v10, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 82
    iput v10, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mPreViewType:I

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 95
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 99
    .end local v0    # "allAppSize":I
    .end local v2    # "sendSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-void

    .line 84
    .restart local v0    # "allAppSize":I
    .restart local v2    # "sendSmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/support/AppInfo;>;"
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0496

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v7, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 87
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/16 v5, 0x9

    iput v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 88
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v9, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 89
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mContext:Landroid/content/Context;

    const v6, 0x7f0d048f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v4, v7, v9}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    goto :goto_0
.end method
