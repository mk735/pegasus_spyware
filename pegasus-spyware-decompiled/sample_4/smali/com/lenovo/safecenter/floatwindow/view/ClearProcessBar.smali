.class public Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;
.super Landroid/widget/LinearLayout;
.source "ClearProcessBar.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;

.field public move_img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f030044

    invoke-static {p1, v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->b:Landroid/content/Context;

    .line 39
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f09021a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    .line 41
    return-void
.end method


# virtual methods
.method public changeBar()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 51
    return-void
.end method

.method public showClearAnimation(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "over"    # I
    .param p3, "clearAfterSize"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 105
    int-to-float v4, p1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v1, v4, v6

    .line 109
    .local v1, "k":F
    if-lt p1, p2, :cond_0

    .line 111
    const/16 v4, 0x50

    if-le p2, v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v6, 0x7f020060

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v6, 0x7f02005e

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v4, v3

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 130
    .local v0, "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 132
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 133
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    new-instance v9, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->b:Landroid/content/Context;

    invoke-direct {v9, p0, v2, p2, p3}, Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;-><init>(Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;Landroid/content/Context;II)V

    .line 136
    .local v9, "lClearProcessListener":Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;
    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    return-void

    .line 118
    .end local v0    # "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "lClearProcessListener":Lcom/lenovo/safecenter/floatwindow/listener/ClearProcessListener;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v6, 0x7f02005d

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v6, 0x7f02005f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showClearAnimation1(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "over"    # I

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    int-to-float v4, p1

    div-float v1, v4, v7

    .line 146
    .local v1, "k":F
    int-to-float v4, p2

    div-float v2, v4, v7

    .line 147
    .local v2, "m":F
    if-lt p1, p2, :cond_0

    .line 149
    const/16 v4, 0x50

    if-le p2, v4, :cond_1

    .line 151
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v7, 0x7f020060

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v7, 0x7f02005e

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 162
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v4, v3

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 165
    .local v0, "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 167
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 169
    iget-object v3, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    return-void

    .line 156
    .end local v0    # "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v7, 0x7f02005d

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    iget-object v4, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v7, 0x7f02005f

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showStartAnimation(I)V
    .locals 9
    .param p1, "paramInt"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    int-to-float v2, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v1, v2, v4

    .line 62
    .local v1, "k":F
    const/16 v2, 0x50

    if-lt p1, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v4, 0x7f02005e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, v1

    move v4, v3

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 81
    .local v0, "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 83
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void

    .line 68
    .end local v0    # "localScaleAnimation1":Landroid/view/animation/ScaleAnimation;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->move_img:Landroid/widget/ImageView;

    const v4, 0x7f02005d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ClearProcessBar;->a:Landroid/widget/ImageView;

    const v4, 0x7f02005f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
