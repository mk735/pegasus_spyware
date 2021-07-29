.class public abstract Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.super Ljava/lang/Object;
.source "BaseHealthCheck.java"


# instance fields
.field protected isRootItem:Z

.field protected mContext:Landroid/content/Context;

.field protected mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

.field protected mKey:I

.field protected mPreViewType:I

.field protected result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mPreViewType:I

    .line 9
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .line 14
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->isRootItem:Z

    return-void
.end method


# virtual methods
.method protected canDoInRoot()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    return v0
.end method

.method protected abstract clear()V
.end method

.method protected abstract click()V
.end method

.method protected abstract manual()V
.end method

.method protected abstract optimiza()V
.end method

.method protected progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 2
    .param p1, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScanProgress()I

    move-result v0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getValueProgressEveryCheck()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScanProgress(I)V

    .line 40
    return-void
.end method

.method protected refreshTitle(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "titleDetail"    # Ljava/lang/String;
    .param p3, "mHealthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    .line 32
    .local v0, "result":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    iput-object p1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 33
    iput-object p2, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 34
    invoke-virtual {p3, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 35
    return-void
.end method

.method protected abstract scan()V
.end method
