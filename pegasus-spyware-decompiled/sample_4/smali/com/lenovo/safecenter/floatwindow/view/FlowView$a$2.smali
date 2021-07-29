.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->setViewGone()V

    .line 220
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 221
    .local v0, "conectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 223
    .local v1, "type":I
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->setFlowDrawable(I)V

    .line 227
    .end local v1    # "type":I
    :goto_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportCloseTrafficFloatwindow()V

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->e(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$2;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v3, v3, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v3}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->d(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
