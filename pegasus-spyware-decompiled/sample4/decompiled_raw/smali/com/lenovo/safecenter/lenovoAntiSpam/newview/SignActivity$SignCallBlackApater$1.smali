.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    .line 550
    .local v0, "vv":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    iget-object v1, v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->showReport_fail(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V

    .line 551
    return-void
.end method
