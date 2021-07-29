.class final Lcom/lenovo/install/InstallActivity$4;
.super Ljava/lang/Thread;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/install/InstallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, "strs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->u(Lcom/lenovo/install/InstallActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;>;"
    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/lenovo/install/InstallActivity;->b(Lcom/lenovo/install/InstallActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 298
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 301
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->what:I

    .line 302
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    const-string v4, "ww"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$4;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
