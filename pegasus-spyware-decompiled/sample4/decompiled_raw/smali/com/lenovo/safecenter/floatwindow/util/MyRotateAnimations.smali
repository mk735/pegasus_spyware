.class public Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;
.super Ljava/lang/Object;
.source "MyRotateAnimations.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xf

    sput v0, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->a:I

    .line 17
    const/16 v0, -0xd

    sput v0, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotateAnimation(FFI)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "fromDegrees"    # F
    .param p1, "toDegrees"    # F
    .param p2, "durationMillis"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 25
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, p0

    move v2, p1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 27
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 28
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 29
    return-object v0
.end method

.method public static initOffset(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-wide v0, 0x402555810624dd2fL    # 10.667

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->a:I

    .line 21
    const-wide v0, 0x402155810624dd2fL    # 8.667

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    neg-int v0, v0

    sput v0, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->b:I

    .line 22
    return-void
.end method

.method public static startAnimationsIn(Landroid/view/ViewGroup;I)V
    .locals 8
    .param p0, "viewgroup"    # Landroid/view/ViewGroup;
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v7, 0x0

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 38
    .local v2, "inoutimagebutton":Landroid/widget/ImageButton;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 39
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v5, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->b:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 42
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    mul-int/lit8 v4, v1, 0x64

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 45
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "inoutimagebutton":Landroid/widget/ImageButton;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public static startAnimationsOut(Landroid/view/ViewGroup;I)V
    .locals 8
    .param p0, "viewgroup"    # Landroid/view/ViewGroup;
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v7, 0x0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 54
    .local v2, "inoutimagebutton":Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v5, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->a:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->b:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v7, v4, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 57
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 60
    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    new-instance v4, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations$1;

    invoke-direct {v4, v2}, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations$1;-><init>(Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "inoutimagebutton":Landroid/widget/ImageButton;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method
