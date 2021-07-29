.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;
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
    .line 831
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0d02c5

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 834
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setGoing(Z)V

    .line 838
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 839
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 840
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 841
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J

    .line 844
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->continueScan()V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->V(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 855
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 858
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->b(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;-><init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;II)V

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    .line 862
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a(Z)V

    .line 863
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
