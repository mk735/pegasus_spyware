.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthNoSetTrafficLimit.java"

# interfaces
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mKey:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->isRootItem:Z

    .line 38
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    const v2, 0x7f0d061d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v4, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 165
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v1, 0x7

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 166
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    const v2, 0x7f0d048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 171
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mPreViewType:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 175
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 110
    return-void
.end method

.method protected click()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    .line 105
    return-void
.end method

.method protected manual()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onSettingNumberDialogCancel([II)V
    .locals 0
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onSettingNumberDialogOK([II)V
    .locals 7
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    const-string v1, "wu0wu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim1IMSI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget v1, p1, v4

    if-eq v1, v5, :cond_0

    aget v1, p1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a()V

    :cond_0
    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    aget v0, p1, v6

    if-eq v0, v5, :cond_1

    aget v0, p1, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic2(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a()V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget v0, p1, v4

    if-eq v0, v5, :cond_1

    aget v0, p1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    const v2, 0x7f0d07e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    aget v0, p1, v4

    if-eq v0, v5, :cond_1

    aget v0, p1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->a()V

    goto :goto_0
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected scan()V
    .locals 8

    .prologue
    const v7, 0x7f0d054e

    const v6, 0x7f0d061c

    const/4 v5, 0x3

    .line 43
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 47
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 48
    .local v1, "simInfo":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    .local v0, "isNoSet":Z
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const/4 v0, 0x1

    .line 61
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 66
    new-instance v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 67
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mKey:I

    iput v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 68
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iput v5, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 75
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v3, 0x5

    iput v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    .line 76
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->isOnly:Z

    .line 77
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0044

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->plusOrDecrementNumItem(IZ)V

    .line 80
    iput v5, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mPreViewType:I

    .line 82
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 83
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 87
    .end local v0    # "isNoSet":Z
    :cond_2
    return-void

    .line 57
    .restart local v0    # "isNoSet":Z
    :cond_3
    const-string v2, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method
