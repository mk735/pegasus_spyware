.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;
.super Ljava/lang/Object;
.source "AntiSpamMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const v2, 0x7f0d05c9

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$7;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    const v2, 0x7f0d05ca

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;Ljava/lang/String;)V

    goto :goto_0
.end method
