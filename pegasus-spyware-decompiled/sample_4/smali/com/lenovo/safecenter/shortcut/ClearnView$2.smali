.class final Lcom/lenovo/safecenter/shortcut/ClearnView$2;
.super Ljava/lang/Object;
.source "ClearnView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/ClearnView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->c(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->d(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->e(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->f(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->startDiyAnim()V

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0, v4}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->g(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->h(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->i(Lcom/lenovo/safecenter/shortcut/ClearnView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->j(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v2}, Lcom/lenovo/safecenter/shortcut/ClearnView;->k(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->l(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Lcom/lenovo/safecenter/shortcut/ClearnView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 91
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->m(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getEndMemory(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/service/object/KillAllPackageReceiver;->sendBroadcastAboutExeClearShortcut(Landroid/content/Context;I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->doFade()V

    goto/16 :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->n(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v2}, Lcom/lenovo/safecenter/shortcut/ClearnView;->o(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->p(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Lcom/lenovo/safecenter/shortcut/ClearnView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->q(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->r(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/shortcut/ViewManager;->removeView(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    return-void
.end method
