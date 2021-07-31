.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;
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
    .line 795
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0d02ce

    const v7, 0x7f0d02c6

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 797
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->u(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 798
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J

    .line 801
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->setGoing(Z)V

    .line 802
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->v(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->S(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->pauseScan()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 808
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 828
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->e(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->n(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 815
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->p(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->q(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->U(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 818
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->y(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$d;->a(Z)V

    .line 821
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->t(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->D(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;J)J

    goto :goto_0
.end method
