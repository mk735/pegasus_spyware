.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloudScan()V
    .locals 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1603
    return-void
.end method

.method public final onCloudScanError(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1609
    return-void
.end method

.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 6
    .param p1, "progress"    # I
    .param p2, "result"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .prologue
    .line 1549
    iget-object v3, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    const-string v4, "com.lenovo.safecenter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1550
    const-string v3, "demo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1552
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1553
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 1554
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1555
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1560
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    :try_start_0
    iget v3, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1562
    iget v3, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1564
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    .line 1565
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->Z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    .line 1567
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v3, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1590
    :cond_1
    :goto_0
    return-void

    .line 1576
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v3

    iget-object v4, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getAppInfo(Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    move-result-object v1

    .line 1579
    .local v1, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    if-eqz v1, :cond_1

    .line 1580
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1586
    .end local v1    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onScanCanceled()V
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1627
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1628
    return-void
.end method

.method public final onScanContinue()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1621
    return-void
.end method

.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 4
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
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    const/4 v3, 0x0

    .line 1633
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->aa(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1634
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->isNeedScan(Landroid/content/Context;)Z

    .line 1635
    const-string v1, "mes"

    const-string v2, "onScanFinished===="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1637
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1638
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1640
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1642
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1643
    return-void
.end method

.method public final onScanPaused()V
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$a;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Z)Z

    .line 1615
    return-void
.end method

.method public final onScanStarted()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public final onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "result"    # Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    .prologue
    .line 1597
    return-void
.end method
