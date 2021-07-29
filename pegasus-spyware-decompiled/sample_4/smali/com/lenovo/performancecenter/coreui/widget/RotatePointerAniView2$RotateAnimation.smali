.class public Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotatePointerAniView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotateAnimation"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

.field private b:I

.field private c:I

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;II)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->a:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 130
    iput v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->b:I

    .line 131
    iput v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->c:I

    .line 137
    iput p2, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->b:I

    .line 138
    iput p3, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->c:I

    .line 139
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 147
    iget v3, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->e:F

    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->d:F

    sub-float/2addr v3, v4

    mul-float v0, v3, p1

    .line 148
    .local v0, "degrees":F
    iget v3, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->d:F

    add-float v1, v3, v0

    .line 149
    .local v1, "gradual":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 150
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->c:I

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 151
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "paramAnimationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    return-void
.end method

.method public setDegrees(II)V
    .locals 1
    .param p1, "degreeFrom"    # I
    .param p2, "degreeTo"    # I

    .prologue
    .line 142
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->d:F

    .line 143
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->e:F

    .line 144
    return-void
.end method
