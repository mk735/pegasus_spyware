.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;
.super Landroid/os/Handler;
.source "MessageBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->initApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->o(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->c(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v2, 0x7f0d053d

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->a(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    const v4, 0x7f0d007d

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->b(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->j(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->p(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->p(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->q(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    .line 254
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->r(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->e(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->s(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->t(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->u(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->v(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$10;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->e(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
