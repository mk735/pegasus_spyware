.class public Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;
.super Landroid/widget/AbsoluteLayout;
.source "RotatePointerAniView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$qi;,
        Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    }
.end annotation


# static fields
.field public static final MAX_DEGREES:I = 0xf0


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

.field private g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->c:I

    .line 23
    iput v1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->d:I

    .line 24
    iput v1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->e:I

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v0, 0x7f0904fb

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->a:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0904fc

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->b:Landroid/widget/ImageView;

    .line 37
    return-void
.end method


# virtual methods
.method public bpRotate(I)Z
    .locals 8
    .param p1, "toDegree"    # I

    .prologue
    const/4 v7, 0x1

    .line 40
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .line 41
    .local v0, "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    if-nez v0, :cond_0

    .line 44
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 45
    .local v1, "centerX":I
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    mul-int/lit8 v2, v4, 0x0

    .line 46
    .local v2, "centerY":I
    new-instance v0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .end local v0    # "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;-><init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;II)V

    .line 47
    .restart local v0    # "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    iput-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .line 48
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v7}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setFillEnabled(Z)V

    .line 49
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v7}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setFillAfter(Z)V

    .line 50
    new-instance v4, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$1;

    invoke-direct {v4, p0}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$1;-><init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    :cond_0
    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->d:I

    invoke-virtual {v0, v4, p1}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setDegrees(II)V

    .line 78
    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->d:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->c:I

    mul-int/2addr v4, v5

    div-int/lit16 v3, v4, 0xf0

    .line 79
    .local v3, "duration":I
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setDuration(J)V

    .line 80
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->f:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    iput p1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->d:I

    .line 83
    return v7
.end method

.method public spRotate(I)Z
    .locals 8
    .param p1, "toDegree"    # I

    .prologue
    const/4 v7, 0x1

    .line 87
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .line 88
    .local v0, "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    if-nez v0, :cond_0

    .line 89
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 90
    .local v1, "centerX":I
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    mul-int/lit8 v2, v4, 0x0

    .line 91
    .local v2, "centerY":I
    new-instance v0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .end local v0    # "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;-><init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;II)V

    .line 92
    .restart local v0    # "animation":Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;
    iput-object v0, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    .line 93
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v7}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setFillEnabled(Z)V

    .line 94
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v7}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setFillAfter(Z)V

    .line 95
    new-instance v4, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$2;

    invoke-direct {v4, p0}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$2;-><init>(Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;)V

    invoke-virtual {v0, v4}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    :cond_0
    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->e:I

    invoke-virtual {v0, v4, p1}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setDegrees(II)V

    .line 121
    iget v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->e:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->c:I

    mul-int/2addr v4, v5

    div-int/lit16 v3, v4, 0xf0

    .line 122
    .local v3, "duration":I
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;->setDuration(J)V

    .line 123
    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->g:Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2$RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iput p1, p0, Lcom/lenovo/performancecenter/coreui/widget/RotatePointerAniView2;->e:I

    .line 126
    return v7
.end method
