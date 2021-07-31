.class final Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/MainActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/MainActivity$5;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 575
    const-string v0, "virus_state"

    const-string v1, "0"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 576
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->e(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 4
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/CheckResult;

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/MainActivity;->a(Lcom/lenovo/safecenter/antivirus/MainActivity;Ljava/util/List;)Ljava/util/List;

    .line 583
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->f(Lcom/lenovo/safecenter/antivirus/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 585
    const-string v1, "virus_state"

    const-string v2, "2"

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v3, v3, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v1, "virus_state"

    const-string v2, "3"

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v3, v3, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 595
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$1;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/MainActivity;->e(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method
