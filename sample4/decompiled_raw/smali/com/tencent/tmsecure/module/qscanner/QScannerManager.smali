.class public final Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Ltms/gi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ltms/gi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancelScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0}, Ltms/gi;->f()V

    goto :goto_0
.end method

.method public final cloudScan(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2}, Ltms/gi;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final continueScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0}, Ltms/gi;->e()V

    goto :goto_0
.end method

.method public final freeScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0}, Ltms/gi;->b()V

    goto :goto_0
.end method

.method public final getApkClass(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1}, Ltms/gi;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final initScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0}, Ltms/gi;->a()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ltms/gi;

    invoke-direct {v0}, Ltms/gi;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1}, Ltms/gi;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final pauseScan()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0}, Ltms/gi;->d()V

    goto :goto_0
.end method

.method public final scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gi;->b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2}, Ltms/gi;->c(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gi;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2}, Ltms/gi;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Ltms/gi;

    invoke-virtual {v0, p1, p2, p3}, Ltms/gi;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
