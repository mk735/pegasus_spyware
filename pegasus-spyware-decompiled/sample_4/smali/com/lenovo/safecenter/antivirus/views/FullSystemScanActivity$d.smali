.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;
.super Ljava/lang/Thread;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;II)V
    .locals 0
    .param p2, "pos"    # I
    .param p3, "totalapp"    # I

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1699
    iput p2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    .line 1700
    iput p3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->b:I

    .line 1701
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isGoing"    # Z

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->c:Z

    .line 1710
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1711
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1712
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1713
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1714
    return-void
.end method

.method public final run()V
    .locals 9

    .prologue
    .line 1717
    :goto_0
    iget-boolean v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->c:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    iget v6, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->b:I

    if-ge v5, v6, :cond_1

    .line 1719
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->o(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1720
    .local v4, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    .line 1722
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1723
    .local v2, "message":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1724
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appname"

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "isvirus"

    iget-object v7, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v7}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1731
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->G(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getAppInfo(Ljava/lang/String;)Lcom/lenovo/safecenter/antivirus/domain/Appinfo;

    move-result-object v1

    .line 1732
    .local v1, "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    const-string v5, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    if-eqz v1, :cond_0

    .line 1735
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    :cond_0
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1741
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1742
    .end local v1    # "info":Lcom/lenovo/safecenter/antivirus/domain/Appinfo;
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1747
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v5, "mm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pos=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "toal=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a:I

    iget v6, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->b:I

    if-ne v5, v6, :cond_2

    .line 1749
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1750
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1751
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->d:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1753
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
