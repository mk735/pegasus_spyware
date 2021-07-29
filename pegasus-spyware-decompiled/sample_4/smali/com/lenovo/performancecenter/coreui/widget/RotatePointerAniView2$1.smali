.class final Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$1;
.super Ljava/lang/Object;
.source "RotatePointerAniView2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->bpRotate(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$1;->a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 66
    const-string v0, "rotate"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 62
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 53
    const-string v0, "rotate"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
