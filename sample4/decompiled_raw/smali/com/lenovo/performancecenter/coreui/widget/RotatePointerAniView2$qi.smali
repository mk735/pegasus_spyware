.class public Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$qi;
.super Ljava/lang/Object;
.source "RotatePointerAniView2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "qi"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;)V
    .locals 0
    .param p2, "paramRotatePointerAniView"    # Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$qi;->a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 168
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "paramAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    return-void
.end method
