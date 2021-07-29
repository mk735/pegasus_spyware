.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$a;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$b;
    }
.end annotation


# static fields
.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/view/PagerAdapter;

.field private c:I

.field private d:I

.field private e:Landroid/os/Parcelable;

.field private f:Ljava/lang/ClassLoader;

.field private g:Landroid/widget/Scroller;

.field private h:Landroid/support/v4/view/PagerAdapter$a;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:Landroid/view/VelocityTracker;

.field private w:I

.field private x:I

.field private y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 184
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    .line 62
    iput v1, p0, Landroid/support/v4/view/ViewPager;->d:I

    .line 63
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/os/Parcelable;

    .line 64
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->f:Ljava/lang/ClassLoader;

    .line 90
    iput v1, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->z:I

    .line 185
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    .line 62
    iput v1, p0, Landroid/support/v4/view/ViewPager;->d:I

    .line 63
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/os/Parcelable;

    .line 64
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->f:Ljava/lang/ClassLoader;

    .line 90
    iput v1, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->z:I

    .line 190
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 191
    return-void
.end method

.method private a(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v4/view/ViewPager;->z:I

    if-ne v0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->z:I

    .line 208
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 319
    new-instance v0, Landroid/support/v4/view/ViewPager$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$b;-><init>()V

    .line 320
    .local v0, "ii":Landroid/support/v4/view/ViewPager$b;
    iput p1, v0, Landroid/support/v4/view/ViewPager$b;->b:I

    .line 321
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$b;->a:Ljava/lang/Object;

    .line 322
    if-gez p2, :cond_0

    .line 323
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 248
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 249
    :cond_0
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    if-nez p3, :cond_3

    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_0

    .line 256
    :cond_3
    if-gez p1, :cond_6

    .line 257
    const/4 p1, 0x0

    .line 261
    :cond_4
    :goto_1
    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v2, v2, 0x1

    if-gt p1, v2, :cond_5

    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_7

    .line 265
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 266
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$b;

    iput-boolean v3, v2, Landroid/support/v4/view/ViewPager$b;->c:Z

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_4

    .line 259
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    goto :goto_1

    .line 269
    :cond_7
    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    if-eq v2, p1, :cond_8

    move v0, v3

    .line 270
    .local v0, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->c:I

    .line 271
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 272
    if-eqz p2, :cond_b

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 274
    :goto_4
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_8
    move v0, v4

    .line 269
    goto :goto_3

    .line 273
    .restart local v0    # "dispatchSelected":Z
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v4

    rsub-int/lit8 v6, v5, 0x0

    if-nez v2, :cond_a

    if-nez v6, :cond_a

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    goto :goto_4

    :cond_a
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Z)V

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->n:Z

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(I)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto :goto_4

    .line 278
    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_c

    .line 279
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 281
    :cond_c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 941
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 942
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 943
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->u:I

    if-ne v1, v3, :cond_0

    .line 946
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 947
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 948
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 949
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 950
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 953
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 946
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 966
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->l:Z

    if-eq v0, p1, :cond_0

    .line 967
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->l:Z

    .line 978
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 195
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->w:I

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->x:I

    .line 200
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v7, -0x1

    .line 379
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-nez v6, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-boolean v6, p0, Landroid/support/v4/view/ViewPager;->m:Z

    if-nez v6, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 399
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 401
    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    if-lez v6, :cond_4

    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v5, v6, -0x1

    .line 402
    .local v5, "startPos":I
    :goto_1
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 403
    .local v0, "N":I
    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v1, v6, 0x1

    .line 408
    .local v1, "endPos":I
    :goto_2
    const/4 v4, -0x1

    .line 409
    .local v4, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 410
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$b;

    .line 411
    .local v3, "ii":Landroid/support/v4/view/ViewPager$b;
    iget v6, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    if-lt v6, v5, :cond_2

    iget v6, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    if-le v6, v1, :cond_6

    :cond_2
    iget-boolean v6, v3, Landroid/support/v4/view/ViewPager$b;->c:Z

    if-nez v6, :cond_6

    .line 413
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    add-int/lit8 v2, v2, -0x1

    .line 415
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget v8, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    iget-object v9, v3, Landroid/support/v4/view/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 431
    :cond_3
    iget v4, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 401
    .end local v0    # "N":I
    .end local v1    # "endPos":I
    .end local v2    # "i":I
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$b;
    .end local v4    # "lastPos":I
    .end local v5    # "startPos":I
    :cond_4
    iget v5, p0, Landroid/support/v4/view/ViewPager;->c:I

    goto :goto_1

    .line 403
    .restart local v0    # "N":I
    .restart local v5    # "startPos":I
    :cond_5
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 416
    .restart local v1    # "endPos":I
    .restart local v2    # "i":I
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$b;
    .restart local v4    # "lastPos":I
    :cond_6
    if-ge v4, v1, :cond_3

    iget v6, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    if-le v6, v5, :cond_3

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 421
    if-ge v4, v5, :cond_7

    .line 422
    move v4, v5

    .line 424
    :cond_7
    :goto_4
    if-gt v4, v1, :cond_3

    iget v6, v3, Landroid/support/v4/view/ViewPager$b;->b:I

    if-ge v4, v6, :cond_3

    .line 426
    invoke-direct {p0, v4, v2}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 435
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$b;
    :cond_8
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$b;

    iget v4, v6, Landroid/support/v4/view/ViewPager$b;->b:I

    .line 436
    :goto_5
    if-ge v4, v1, :cond_b

    .line 437
    add-int/lit8 v4, v4, 0x1

    .line 438
    if-le v4, v5, :cond_a

    .line 439
    :goto_6
    if-gt v4, v1, :cond_b

    .line 441
    invoke-direct {p0, v4, v7}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    move v4, v7

    .line 435
    goto :goto_5

    :cond_a
    move v4, v5

    .line 438
    goto :goto_6

    .line 453
    :cond_b
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 673
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->n:Z

    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 675
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 676
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 677
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 678
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 679
    .local v4, "oldY":I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 680
    .local v5, "x":I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 681
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 684
    :cond_1
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 686
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->m:Z

    .line 687
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->n:Z

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 689
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    .line 690
    .local v1, "ii":Landroid/support/v4/view/ViewPager$b;
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$b;->c:Z

    if-eqz v7, :cond_3

    .line 691
    const/4 v2, 0x1

    .line 692
    iput-boolean v8, v1, Landroid/support/v4/view/ViewPager$b;->c:Z

    .line 688
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$b;
    :cond_4
    if-eqz v2, :cond_5

    .line 696
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 698
    :cond_5
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 956
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->o:Z

    .line 957
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->p:Z

    .line 959
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    .line 963
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 332
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    move v2, v5

    .line 333
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 335
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 336
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$b;

    .line 337
    .local v1, "ii":Landroid/support/v4/view/ViewPager$b;
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget-object v8, v1, Landroid/support/v4/view/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 339
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 335
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$b;
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "newPos":I
    :cond_1
    move v2, v6

    .line 332
    goto :goto_0

    .line 343
    .restart local v0    # "i":I
    .restart local v1    # "ii":Landroid/support/v4/view/ViewPager$b;
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "newPos":I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 344
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    add-int/lit8 v0, v0, -0x1

    .line 346
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget v8, v1, Landroid/support/v4/view/ViewPager$b;->b:I

    iget-object v9, v1, Landroid/support/v4/view/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 347
    const/4 v2, 0x1

    .line 349
    iget v7, p0, Landroid/support/v4/view/ViewPager;->c:I

    iget v8, v1, Landroid/support/v4/view/ViewPager$b;->b:I

    if-ne v7, v8, :cond_0

    .line 351
    iget v7, p0, Landroid/support/v4/view/ViewPager;->c:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 356
    :cond_3
    iget v7, v1, Landroid/support/v4/view/ViewPager$b;->b:I

    if-eq v7, v4, :cond_0

    .line 357
    iget v7, v1, Landroid/support/v4/view/ViewPager$b;->b:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->c:I

    if-ne v7, v8, :cond_4

    .line 359
    move v3, v4

    .line 362
    :cond_4
    iput v4, v1, Landroid/support/v4/view/ViewPager$b;->b:I

    .line 363
    const/4 v2, 0x1

    goto :goto_2

    .line 367
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$b;
    .end local v4    # "newPos":I
    :cond_5
    if-ltz v3, :cond_6

    .line 369
    invoke-direct {p0, v3, v6, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 370
    const/4 v2, 0x1

    .line 372
    :cond_6
    if-eqz v2, :cond_7

    .line 373
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 374
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 376
    :cond_7
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->k:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 535
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 547
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 641
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 642
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 644
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 645
    .local v2, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 646
    .local v3, "oldY":I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 647
    .local v6, "x":I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 649
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 650
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 653
    :cond_1
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 654
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 655
    .local v5, "width":I
    div-int v4, v6, v5

    .line 656
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 657
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 658
    .local v0, "offset":F
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 662
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "width":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 669
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 668
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    goto :goto_0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 561
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 562
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 565
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 711
    .local v0, "action":I
    const/4 v10, 0x3

    if-eq v0, v10, :cond_0

    if-ne v0, v8, :cond_2

    .line 714
    :cond_0
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->o:Z

    .line 715
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->p:Z

    .line 716
    iput v11, p0, Landroid/support/v4/view/ViewPager;->u:I

    move v8, v9

    .line 812
    :cond_1
    :goto_0
    return v8

    .line 722
    :cond_2
    if-eqz v0, :cond_3

    .line 723
    iget-boolean v10, p0, Landroid/support/v4/view/ViewPager;->o:Z

    if-nez v10, :cond_1

    .line 727
    iget-boolean v10, p0, Landroid/support/v4/view/ViewPager;->p:Z

    if-eqz v10, :cond_3

    move v8, v9

    .line 729
    goto :goto_0

    .line 733
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 812
    :cond_4
    :goto_1
    iget-boolean v8, p0, Landroid/support/v4/view/ViewPager;->o:Z

    goto :goto_0

    .line 744
    :sswitch_0
    iget v1, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 745
    .local v1, "activePointerId":I
    if-eq v1, v11, :cond_4

    .line 750
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 751
    .local v3, "pointerIndex":I
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 752
    .local v4, "x":F
    iget v9, p0, Landroid/support/v4/view/ViewPager;->s:F

    sub-float v2, v4, v9

    .line 753
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 754
    .local v5, "xDiff":F
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 755
    .local v6, "y":F
    iget v9, p0, Landroid/support/v4/view/ViewPager;->t:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 758
    .local v7, "yDiff":F
    iget v9, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_5

    cmpl-float v9, v5, v7

    if-lez v9, :cond_5

    .line 760
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->o:Z

    .line 761
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 762
    iput v4, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 763
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_1

    .line 765
    :cond_5
    iget v9, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_4

    .line 771
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->p:Z

    goto :goto_1

    .line 782
    .end local v1    # "activePointerId":I
    .end local v2    # "dx":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Landroid/support/v4/view/ViewPager;->r:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Landroid/support/v4/view/ViewPager;->t:F

    .line 784
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    iput v10, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 786
    iget v10, p0, Landroid/support/v4/view/ViewPager;->z:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 788
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->o:Z

    .line 789
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->p:Z

    .line 790
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto :goto_1

    .line 792
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 793
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->o:Z

    .line 794
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->p:Z

    goto :goto_1

    .line 804
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 733
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 614
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->k:Z

    .line 615
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 616
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->k:Z

    .line 618
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 619
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 621
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 622
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_2

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$b;

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget-object v11, v8, Landroid/support/v4/view/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v11}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v5, v8

    .local v5, "ii":Landroid/support/v4/view/ViewPager$b;
    :goto_2
    if-eqz v5, :cond_0

    .line 625
    iget v8, v5, Landroid/support/v4/view/ViewPager$b;->b:I

    mul-int v6, v7, v8

    .line 626
    .local v6, "loff":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 627
    .local v1, "childLeft":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 631
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 621
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$b;
    .end local v6    # "loff":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 624
    :cond_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 636
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 574
    invoke-static {v5, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 578
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 580
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 584
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->k:Z

    .line 585
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 586
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->k:Z

    .line 589
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 590
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 591
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 595
    iget v3, p0, Landroid/support/v4/view/ViewPager;->i:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 590
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 513
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 529
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 518
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 519
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 521
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 523
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 525
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->d:I

    .line 526
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/os/Parcelable;

    .line 527
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->f:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 504
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 505
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 506
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    .line 507
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 508
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 605
    iget v1, p0, Landroid/support/v4/view/ViewPager;->c:I

    mul-int v0, v1, p1

    .line 606
    .local v0, "scrollPos":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 607
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 608
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 610
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 818
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_0

    .line 821
    const/16 v22, 0x0

    .line 937
    :goto_0
    return v22

    .line 824
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v22

    if-nez v22, :cond_2

    .line 826
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 830
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    .line 832
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 836
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 937
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 842
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->r:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    .line 846
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->u:I

    goto :goto_1

    .line 850
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->o:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->u:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 852
    .local v10, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 853
    .local v18, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->s:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 854
    .local v19, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 855
    .local v20, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->t:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 857
    .local v21, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_5

    cmpl-float v22, v19, v21

    if-lez v22, :cond_5

    .line 859
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->o:Z

    .line 860
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    .line 861
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 862
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 865
    .end local v10    # "pointerIndex":I
    .end local v18    # "x":F
    .end local v19    # "xDiff":F
    .end local v20    # "y":F
    .end local v21    # "yDiff":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->o:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->u:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 869
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 870
    .restart local v18    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->s:F

    move/from16 v22, v0

    sub-float v6, v22, v18

    .line 871
    .local v6, "deltaX":F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v15, v22, v6

    .line 873
    .local v15, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v17

    .line 875
    .local v17, "width":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    mul-int v23, v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v9, v0

    .line 876
    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    mul-int v22, v22, v17

    move/from16 v0, v22

    int-to-float v14, v0

    .line 878
    .local v14, "rightBound":F
    cmpg-float v22, v15, v9

    if-gez v22, :cond_7

    .line 879
    move v15, v9

    .line 884
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->s:F

    move/from16 v22, v0

    float-to-int v0, v15

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v15, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    .line 885
    float-to-int v0, v15

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 887
    float-to-int v0, v15

    move/from16 v22, v0

    div-int v11, v22, v17

    .line 888
    .local v11, "position":I
    float-to-int v0, v15

    move/from16 v22, v0

    rem-int v13, v22, v17

    .line 889
    .local v13, "positionOffsetPixels":I
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 890
    .local v12, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v12, v13}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 880
    .end local v11    # "position":I
    .end local v12    # "positionOffset":F
    .end local v13    # "positionOffsetPixels":I
    :cond_7
    cmpl-float v22, v15, v14

    if-lez v22, :cond_6

    .line 881
    move v15, v14

    goto :goto_2

    .line 896
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v9    # "leftBound":F
    .end local v14    # "rightBound":F
    .end local v15    # "scrollX":F
    .end local v17    # "width":I
    .end local v18    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->o:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->v:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 898
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->u:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    .line 901
    .local v8, "initialVelocity":I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->m:Z

    .line 902
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->w:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->r:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->s:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_a

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->s:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->r:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_9

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 913
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->u:I

    .line 914
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_1

    .line 907
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_3

    .line 910
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_3

    .line 918
    .end local v8    # "initialVelocity":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->o:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->c:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 920
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->u:I

    .line 921
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_1

    .line 925
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 926
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 927
    .restart local v18    # "x":F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    .line 928
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->u:I

    goto/16 :goto_1

    .line 932
    .end local v7    # "index":I
    .end local v18    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->u:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->s:F

    goto/16 :goto_1

    .line 836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/support/v4/view/PagerAdapter$a;)V

    .line 218
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    .line 220
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter$a;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Landroid/support/v4/view/ViewPager$a;

    invoke-direct {v0, p0, v3}, Landroid/support/v4/view/ViewPager$a;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter$a;

    .line 224
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/support/v4/view/PagerAdapter$a;)V

    .line 225
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->m:Z

    .line 226
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d:I

    if-ltz v0, :cond_3

    .line 227
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/os/Parcelable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->f:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 228
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->d:I

    .line 230
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/os/Parcelable;

    .line 231
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->f:Ljava/lang/ClassLoader;

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->c()V

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->m:Z

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 245
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->y:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 288
    return-void
.end method
