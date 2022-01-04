.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->isUpload:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->showReportDialog()V

    .line 1094
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const v1, 0x7f0d013d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
