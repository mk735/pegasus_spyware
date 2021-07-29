.class final Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 112
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->b(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->c(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)Z

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 129
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    .line 134
    cmpl-float v0, p3, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    cmpg-float v0, p3, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_2

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;->a:Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    float-to-int v1, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->scrollBy(II)V

    .line 139
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 146
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method
