.class final Lcom/lenovo/safecenter/shortcut/ClearnView$a;
.super Landroid/view/animation/Animation;
.source "ClearnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/shortcut/ClearnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/shortcut/ClearnView;

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 349
    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->b:I

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->c:Landroid/view/View;

    .line 351
    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->d:I

    .line 352
    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->e:I

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 358
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 359
    const-string v1, "CleanView"

    const-string v2, " view == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->c:Landroid/view/View;

    .line 361
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->b:I

    .line 362
    const-string v1, "CleanView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " view == null this.mX == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->b:I

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/shortcut/ClearnView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 364
    const-string v1, "CleanView"

    const-string v2, " this.mX + getWidth() / 2 < this.c.getWidth() / 2 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z

    .line 366
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->d:I

    .line 387
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z

    .line 369
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->d:I

    goto :goto_0

    .line 372
    :cond_1
    iget v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 373
    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->e:I

    if-eq v0, v1, :cond_2

    .line 374
    iput v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->e:I

    .line 376
    :cond_2
    const-string v1, "CleanView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->i(Lcom/lenovo/safecenter/shortcut/ClearnView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->w(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 379
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->w(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->x(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 382
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-static {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->x(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 383
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->b:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 384
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->a:Lcom/lenovo/safecenter/shortcut/ClearnView;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->requestLayout()V

    goto/16 :goto_0
.end method
