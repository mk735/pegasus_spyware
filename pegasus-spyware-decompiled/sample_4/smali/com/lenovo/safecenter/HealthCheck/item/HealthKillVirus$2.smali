.class final Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;
.super Ljava/lang/Object;
.source "HealthKillVirus.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->d(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getAppSInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->e(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus$2;->a:Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->f(Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->execNetResult(Ljava/util/List;Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
