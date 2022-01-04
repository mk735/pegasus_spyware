.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->r(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900fd

    if-ne v1, v2, :cond_2

    .line 424
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->f(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->x(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090286

    if-ne v1, v2, :cond_0

    .line 427
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->b(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Z)Z

    .line 428
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$17;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->i(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;Z)V

    goto :goto_0
.end method
