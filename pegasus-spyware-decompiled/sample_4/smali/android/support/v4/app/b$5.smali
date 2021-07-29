.class final Landroid/support/v4/app/b$5;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/b;


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Landroid/support/v4/app/b$5;->b:Landroid/support/v4/app/b;

    iput-object p2, p0, Landroid/support/v4/app/b$5;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 944
    iget-object v0, p0, Landroid/support/v4/app/b$5;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/support/v4/app/b$5;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    .line 946
    iget-object v0, p0, Landroid/support/v4/app/b$5;->b:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/b$5;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/b$5;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 949
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 952
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 955
    return-void
.end method
