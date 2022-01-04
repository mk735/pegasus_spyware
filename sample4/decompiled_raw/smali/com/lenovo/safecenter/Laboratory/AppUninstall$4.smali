.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;
.super Ljava/lang/Object;
.source "AppUninstall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/AppInfo;

.field final synthetic b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iput-object p2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->a:Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 550
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 551
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030041

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 552
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0901dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 553
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0901de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 554
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 555
    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0901db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->b(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 556
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->o(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v6, 0x7f0d0527

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v5, v5, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0524

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0046

    invoke-virtual {v4, v5, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->a(Lcom/lenovo/safecenter/Laboratory/AppUninstall;Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 562
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    .line 563
    .local v0, "cd":Lcom/lenovo/safecenter/dialog/CustomDialog;
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->e(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 564
    new-instance v3, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$1;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$1;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 571
    new-instance v3, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$2;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 583
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->a:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v5}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->l(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/support/CMDHelper;->delApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 584
    return-void
.end method
