.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;
.source "HealthKillVirus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "qScanResult"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->g(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->i(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->h(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScanProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScanProgress(I)V

    .line 181
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    .line 182
    .local v0, "scanOneItemProcess":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->j(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    .line 183
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->k(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d054e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title:Ljava/lang/String;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->l(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d047d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->title_detail:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->m(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 189
    const-string v1, "d"

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1, p1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->a(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;I)I

    .line 191
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->n(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isNeedScan(Landroid/content/Context;)Z

    .line 195
    .end local v0    # "scanOneItemProcess":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->o(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->execLocalResult(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "onScanFinished..."

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->q(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$3;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->p(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getMAX_PROGRESS()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScanProgress(I)V

    .line 203
    return-void
.end method

.method public final onScanStarted()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "onScanStarted..."

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method
