.class public Lcom/lenovo/safecenter/antivirus/support/ScrollView;
.super Landroid/view/ViewGroup;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;,
        Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/widget/Scroller;

.field private e:Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->b:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;-><init>(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a:Landroid/view/GestureDetector;

    .line 25
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->b:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView$a;-><init>(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a:Landroid/view/GestureDetector;

    .line 32
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getScrollX()I

    move-result v1

    .line 73
    .local v1, "leftWidth":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v0

    div-int v7, v1, v0

    .line 74
    .local v7, "tabs":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v0

    mul-int/2addr v0, v7

    sub-int v6, v1, v0

    .line 75
    .local v6, "len":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v6, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    neg-int v3, v6

    mul-int/lit8 v5, v6, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->e:Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getChildCount()I

    move-result v2

    invoke-interface {v0, v7, v2}, Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;->screenChange(II)V

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->invalidate()V

    .line 84
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v6

    mul-int/lit8 v5, v6, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/antivirus/support/ScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/support/ScrollView;

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->c:Z

    return v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->d:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->scrollTo(II)V

    .line 90
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->postInvalidate()V

    .line 94
    :cond_0
    return-void
.end method

.method public initPageControlView()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->e:Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->e:Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;->screenChange(II)V

    .line 173
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getWidth()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 41
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 57
    :pswitch_1
    iget-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->c:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->a()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->c:Z

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScreenChangeListener(Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;)V
    .locals 0
    .param p1, "onScreenChangeListener"    # Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/ScrollView;->e:Lcom/lenovo/safecenter/antivirus/support/ScrollView$OnScreenChangeListener;

    .line 168
    return-void
.end method
