.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;
.super Ljava/lang/Thread;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->z(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v3, v3, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/utils/ScanUtils;->cloudScanGlobal(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Ljava/util/List;)Ljava/util/List;

    .line 315
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->A(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
