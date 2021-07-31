.class final Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


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
    .line 612
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 616
    const-string v0, "demo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public final onUpdateCanceled()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public final onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/tmsecure/module/update/UpdateInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 621
    const-string v0, "virus_state"

    const-string v1, "0"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 622
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->e(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 623
    return-void
.end method

.method public final onUpdateFinished()V
    .locals 3

    .prologue
    .line 627
    const-string v0, "virus_state"

    const-string v1, "3"

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 628
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/MainActivity;->e(Lcom/lenovo/safecenter/antivirus/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/MainActivity$5$2;->a:Lcom/lenovo/safecenter/antivirus/MainActivity$5;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/MainActivity$5;->a:Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatedLab()V

    .line 630
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    .line 631
    return-void
.end method

.method public final onUpdateStarted()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method
