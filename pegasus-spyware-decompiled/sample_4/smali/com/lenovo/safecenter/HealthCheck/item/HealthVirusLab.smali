.class public Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;
.super Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
.source "HealthVirusLab.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "healthManager"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->mContext:Landroid/content/Context;

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->mKey:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->isRootItem:Z

    .line 25
    iput-object p2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .line 26
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 125
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
    .line 114
    return-void
.end method

.method protected optimiza()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected scan()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->mHealthManager:Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthVirusLab;->progressAddAfterScanEveryItem(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    .line 74
    return-void
.end method
