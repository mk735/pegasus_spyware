.class public Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowWindowListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowView$FlowWindowListener;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowView;->c(Lcom/lenovo/safecenter/floatwindow/view/FlowView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
