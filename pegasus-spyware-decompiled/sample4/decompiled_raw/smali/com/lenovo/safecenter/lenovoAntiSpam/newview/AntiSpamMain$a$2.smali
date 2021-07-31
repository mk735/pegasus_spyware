.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;
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
    .line 1064
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->l(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain$a;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/AntiSpamMain;->callTo()V

    goto :goto_0
.end method
