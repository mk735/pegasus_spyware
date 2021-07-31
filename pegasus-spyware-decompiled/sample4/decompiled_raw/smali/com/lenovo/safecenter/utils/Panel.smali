.class public Lcom/lenovo/safecenter/utils/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/Panel$b;,
        Lcom/lenovo/safecenter/utils/Panel$a;,
        Lcom/lenovo/safecenter/utils/Panel$c;,
        Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field public static final TOP:I


# instance fields
.field private A:F

.field private B:F

.field private C:Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

.field private D:Lcom/lenovo/safecenter/utils/Panel$c;

.field private E:Landroid/view/animation/Interpolator;

.field private F:Landroid/view/GestureDetector;

.field private G:I

.field private H:I

.field private I:I

.field private J:F

.field private K:Lcom/lenovo/safecenter/utils/Panel$a;

.field private L:Z

.field private M:Landroid/view/View;

.field a:Landroid/view/View$OnTouchListener;

.field private final b:Landroid/os/Handler;

.field private c:F

.field private d:J

.field private e:J

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v5, Lcom/lenovo/safecenter/utils/Panel$b;

    invoke-direct {v5, p0, v4}, Lcom/lenovo/safecenter/utils/Panel$b;-><init>(Lcom/lenovo/safecenter/utils/Panel;B)V

    iput-object v5, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    .line 396
    new-instance v5, Lcom/lenovo/safecenter/utils/Panel$1;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/utils/Panel$1;-><init>(Lcom/lenovo/safecenter/utils/Panel;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/utils/Panel;->a:Landroid/view/View$OnTouchListener;

    .line 106
    sget-object v5, Lcom/lenovo/safecenter/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x2ee

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->q:I

    .line 108
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    .line 109
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lenovo/safecenter/utils/Panel;->r:Z

    .line 110
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4, v3, v7}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    .line 111
    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 112
    :cond_0
    iput v7, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    .line 113
    const-string v5, "Panel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": weight must be > 0 and <= 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/safecenter/utils/Panel;->x:Landroid/graphics/drawable/Drawable;

    .line 117
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/safecenter/utils/Panel;->y:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->s:I

    .line 121
    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->s:I

    if-nez v5, :cond_2

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->t:I

    .line 127
    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->t:I

    if-nez v5, :cond_3

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .end local v2    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->u:I

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 136
    .local v1, "density":F
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v1

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    .line 137
    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v1

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    .line 139
    if-eqz v2, :cond_4

    .line 140
    throw v2

    .line 142
    :cond_4
    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    if-ne v5, v3, :cond_6

    :cond_5
    :goto_0
    iput v3, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    .line 144
    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/utils/Panel;->setOrientation(I)V

    .line 145
    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    .line 146
    new-instance v3, Lcom/lenovo/safecenter/utils/Panel$a;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/utils/Panel$a;-><init>(Lcom/lenovo/safecenter/utils/Panel;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->K:Lcom/lenovo/safecenter/utils/Panel$a;

    .line 147
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel;->K:Lcom/lenovo/safecenter/utils/Panel$a;

    invoke-direct {v3, v5}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->F:Landroid/view/GestureDetector;

    .line 148
    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->F:Landroid/view/GestureDetector;

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 151
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/utils/Panel;->setBaselineAligned(Z)V

    .line 152
    return-void

    :cond_6
    move v3, v4

    .line 142
    goto :goto_0
.end method

.method static synthetic a(FII)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "x2"    # I
    .param p2, "x3"    # I

    .prologue
    .line 29
    int-to-float v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->i:F

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/Panel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lenovo/safecenter/utils/Panel;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/Panel;Lcom/lenovo/safecenter/utils/Panel$c;)Lcom/lenovo/safecenter/utils/Panel$c;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # Lcom/lenovo/safecenter/utils/Panel$c;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    return-object p1
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->k:F

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/Panel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    return-wide p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->C:Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->C:Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;->onPanelClosed(Lcom/lenovo/safecenter/utils/Panel;)V

    .line 464
    :cond_1
    :goto_1
    return-void

    .line 453
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->C:Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;->onPanelOpened(Lcom/lenovo/safecenter/utils/Panel;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->L:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->j:F

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/Panel;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->F:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->l:F

    return p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->m:F

    return p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->n:F

    return p1
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/Panel;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->i:F

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    return p1
.end method

.method static synthetic h(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->j:F

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    return p1
.end method

.method static synthetic i(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->k:F

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    return p1
.end method

.method static synthetic j(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->n:F

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/utils/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    return p1
.end method

.method static synthetic k(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->l:F

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->m:F

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/utils/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    return v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/utils/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    return v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/utils/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    return v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/utils/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    return v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/utils/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    return v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/utils/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    return v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 10
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 29
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/utils/Panel;->d:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v4, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    mul-float v5, v4, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iput-wide v0, p0, Lcom/lenovo/safecenter/utils/Panel;->d:J

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->invalidate()V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->b()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    mul-float v1, v3, v2

    add-float/2addr v0, v1

    mul-float v1, v9, v4

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    iput v6, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    mul-float v1, v3, v2

    add-float/2addr v0, v1

    mul-float v1, v9, v4

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iput v6, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    mul-float v1, v3, v2

    add-float/2addr v0, v1

    mul-float v1, v9, v4

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    iput v6, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :pswitch_3
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    mul-float v1, v3, v2

    add-float/2addr v0, v1

    mul-float v1, v9, v4

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    iput v6, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-boolean v7, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-wide v0, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic v(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 29
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    neg-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    neg-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v2, :cond_9

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->e:Lcom/lenovo/safecenter/utils/Panel$c;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/lenovo/safecenter/utils/Panel$c;->f:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    :cond_4
    return-void

    :pswitch_0
    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->g:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-ne v2, v0, :cond_b

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_c

    :cond_b
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :cond_c
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    neg-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->B:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    neg-float v2, v2

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel;->c:F

    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v2, :cond_d

    :goto_3
    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v1, :cond_2

    .line 372
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    .line 374
    .local v0, "delta":I
    :goto_0
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    if-nez v1, :cond_1

    .line 375
    :cond_0
    neg-int v0, v0

    .line 377
    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-ne v1, v4, :cond_6

    .line 378
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    .end local v0    # "delta":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->e:Lcom/lenovo/safecenter/utils/Panel$c;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->f:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v1, v2, :cond_4

    .line 385
    :cond_3
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->z:F

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->A:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 388
    return-void

    .line 372
    :cond_5
    iget v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    goto :goto_0

    .line 380
    .restart local v0    # "delta":I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    if-eq v1, v2, :cond_0

    .line 447
    :goto_0
    return v0

    .line 436
    :cond_0
    sget-object v1, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    .line 437
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    .line 438
    iget-boolean v1, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 328
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 329
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/utils/Panel;->L:Z

    .line 332
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 248
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 249
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->s:I

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    .line 250
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->s:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 257
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->t:I

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    .line 261
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    if-nez v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/utils/Panel;->s:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .restart local v0    # "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->u:I

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    .line 272
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->removeView(Landroid/view/View;)V

    .line 273
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->removeView(Landroid/view/View;)V

    .line 274
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->p:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->addView(Landroid/view/View;)V

    .line 276
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->addView(Landroid/view/View;)V

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 287
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 288
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_1
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 294
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 301
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    if-ne v2, v4, :cond_8

    .line 302
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    :goto_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 308
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    :goto_4
    return-void

    .line 278
    :cond_5
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->v:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->addView(Landroid/view/View;)V

    .line 279
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/Panel;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 291
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_2

    .line 304
    :cond_8
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 310
    :cond_9
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 355
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 356
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    .line 358
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->H:I

    .line 361
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel;->G:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 336
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 338
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 339
    iget v1, p0, Lcom/lenovo/safecenter/utils/Panel;->I:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 350
    .end local v0    # "parent":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 351
    return-void

    .line 344
    .restart local v0    # "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel;->J:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel;->E:Landroid/view/animation/Interpolator;

    .line 191
    return-void
.end method

.method public setOnPanelListener(Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;)V
    .locals 0
    .param p1, "onPanelListener"    # Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel;->C:Lcom/lenovo/safecenter/utils/Panel$OnPanelListener;

    .line 163
    return-void
.end method

.method public setOpen(ZZ)Z
    .locals 7
    .param p1, "open"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    sget-object v5, Lcom/lenovo/safecenter/utils/Panel$c;->c:Lcom/lenovo/safecenter/utils/Panel$c;

    if-ne v2, v5, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/Panel;->isOpen()Z

    move-result v2

    xor-int/2addr v2, p1

    if-eqz v2, :cond_4

    .line 206
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    .line 207
    if-eqz p2, :cond_2

    .line 208
    sget-object v2, Lcom/lenovo/safecenter/utils/Panel$c;->a:Lcom/lenovo/safecenter/utils/Panel$c;

    iput-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->D:Lcom/lenovo/safecenter/utils/Panel$c;

    .line 209
    iget-boolean v2, p0, Lcom/lenovo/safecenter/utils/Panel;->o:Z

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 216
    .local v0, "now":J
    iput-wide v0, p0, Lcom/lenovo/safecenter/utils/Panel;->d:J

    .line 217
    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    .line 218
    iput-boolean v3, p0, Lcom/lenovo/safecenter/utils/Panel;->f:Z

    .line 219
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/Panel;->b:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lcom/lenovo/safecenter/utils/Panel;->e:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 230
    .end local v0    # "now":J
    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 206
    goto :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel;->M:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/Panel;->b()V

    goto :goto_1

    .line 225
    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    :cond_4
    move v3, v4

    .line 230
    goto :goto_1
.end method
