.class public Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;
.super Landroid/widget/FrameLayout;
.source "RotateScanHealthScoreView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/animation/RotateAnimation;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v1, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;-><init>(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V

    .line 36
    .local v1, "localaja":Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView$aja;
    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->c:Landroid/os/Handler;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030085

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090323

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, "localImageView":Landroid/widget/ImageView;
    const v2, 0x7f02014b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",f2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, -0x3c4c0000    # -360.0f

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;

    .prologue
    const v3, 0x7f07001d

    .line 26
    iget v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    :cond_0
    const v0, 0x7f090322

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    const/16 v2, 0x55

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    const/16 v2, 0x63

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    const/16 v2, 0x54

    if-gt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public beginAnim()V
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->b:Landroid/view/animation/RotateAnimation;

    .line 61
    .local v0, "localRotateAnimation":Landroid/view/animation/RotateAnimation;
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    const v2, 0x7f02014b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public refreshHealthScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->d:I

    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/RotateScanHealthScoreView;->a:Landroid/widget/ImageView;

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void
.end method
