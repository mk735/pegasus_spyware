.class public Lcom/lenovo/safecenter/MainTab/MyScrollLayout;
.super Landroid/view/ViewGroup;
.source "MyScrollLayout.java"


# instance fields
.field private a:Landroid/view/VelocityTracker;

.field private b:Landroid/widget/Scroller;

.field private c:I

.field private d:F

.field private e:Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;

.field public mCurScreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->c:I

    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->c:I

    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->c:I

    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->c:I

    iput v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    .line 61
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    .line 63
    return-void
.end method


# virtual methods
.method public SetOnViewChangeListener(Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->e:Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;

    .line 289
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->scrollTo(II)V

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->postInvalidate()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 70
    if-eqz p1, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v0

    .line 74
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 75
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 78
    .local v3, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 80
    add-int/2addr v1, v3

    .line 74
    .end local v3    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "childCount":I
    .end local v1    # "childLeft":I
    .end local v2    # "childView":Landroid/view/View;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 97
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v0

    .line 98
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget v3, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    mul-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->scrollTo(II)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 151
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 155
    .local v3, "x":F
    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return v6

    .line 158
    :pswitch_0
    const-string v4, ""

    const-string v5, "onTouchEvent  ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 161
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    .line 162
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 166
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 169
    :cond_2
    iput v3, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->d:F

    goto :goto_0

    .line 173
    :pswitch_1
    iget v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->d:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 175
    .local v1, "deltaX":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v4

    if-gtz v4, :cond_4

    if-gez v1, :cond_4

    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 182
    :cond_3
    iput v3, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->d:F

    .line 184
    invoke-virtual {p0, v1, v5}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->scrollBy(II)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    if-lt v4, v7, :cond_5

    if-lez v1, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_1

    .line 191
    .end local v1    # "deltaX":I
    :pswitch_2
    const/4 v2, 0x0

    .line 192
    .local v2, "velocityX":I
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_6

    .line 194
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 195
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 196
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    float-to-int v2, v4

    .line 200
    :cond_6
    const/16 v4, 0x258

    if-le v2, v4, :cond_7

    iget v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    if-lez v4, :cond_7

    .line 202
    const-string v4, "ScrollLayout"

    const-string v5, "snap left"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->snapToScreen(I)V

    .line 215
    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 217
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 204
    :cond_7
    const/16 v4, -0x258

    if-ge v2, v4, :cond_8

    iget v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_8

    .line 207
    const-string v4, "ScrollLayout"

    const-string v5, "snap right"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v4, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->snapToScreen(I)V

    goto :goto_2

    .line 210
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->snapToDestination()V

    goto :goto_2

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getWidth()I

    move-result v1

    .line 110
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 111
    .local v0, "destScreen":I
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->snapToScreen(I)V

    .line 112
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 122
    .local v3, "delta":I
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 126
    iput p1, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    .line 127
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->invalidate()V

    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->e:Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->e:Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->mCurScreen:I

    invoke-interface {v0, v1}, Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;->OnViewChange(I)V

    .line 134
    .end local v3    # "delta":I
    :cond_0
    return-void
.end method
