.class final Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;
.super Ljava/lang/Object;
.source "SwitcherContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->j(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->k(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Z

    .line 790
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$2;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)V

    .line 792
    :cond_0
    return-void
.end method
