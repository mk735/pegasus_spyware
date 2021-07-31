.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;
.super Ljava/lang/Object;
.source "ManLocalBlackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->showReportDialog()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const v1, 0x7f0d013d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
