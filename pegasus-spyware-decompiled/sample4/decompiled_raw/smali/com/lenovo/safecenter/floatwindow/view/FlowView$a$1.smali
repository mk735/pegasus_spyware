.class final Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;
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
    .line 198
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 202
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->g(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->f(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_status(Landroid/content/Context;Z)V

    .line 209
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportCloseTrafficFloatwindow()V

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lenovo.safecenter.flowrefresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/floatwindow/view/FlowView$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->h(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    return-void
.end method
