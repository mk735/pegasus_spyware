.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;
.super Ljava/lang/Object;
.source "FullSystemScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 763
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->R(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    .line 766
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 767
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 768
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->s(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 769
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->r(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 770
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    .line 773
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    .line 780
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    .line 792
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 774
    .restart local v1    # "message":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 784
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a(Z)V

    .line 785
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->R(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    .line 786
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 788
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$4;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->T(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)V

    goto :goto_1
.end method
