.class final Lcom/lenovo/safecenter/utils/Panel$a;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/lenovo/safecenter/utils/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel$a;->a:F

    iput v0, p0, Lcom/lenovo/safecenter/utils/Panel$a;->b:F

    .line 473
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/Panel;->d(Lcom/lenovo/safecenter/utils/Panel;F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->c(Lcom/lenovo/safecenter/utils/Panel;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/Panel;->b(Lcom/lenovo/safecenter/utils/Panel;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 474
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/utils/Panel;->f(Lcom/lenovo/safecenter/utils/Panel;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 475
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/Panel;->initChange()Z

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/16 v10, 0x3e8

    const/4 v4, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 482
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    sget-object v6, Lcom/lenovo/safecenter/utils/Panel$c;->e:Lcom/lenovo/safecenter/utils/Panel$c;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;Lcom/lenovo/safecenter/utils/Panel$c;)Lcom/lenovo/safecenter/utils/Panel$c;

    .line 485
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->g(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->h(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_0

    .line 486
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->i(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    long-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    mul-float v2, v5, v9

    .line 488
    .local v2, "velocityX2":F
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->k(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    long-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    mul-float v3, v5, v9

    .line 497
    .local v3, "velocityY2":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->m(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .end local v3    # "velocityY2":F
    :goto_1
    invoke-static {v5, v3}, Lcom/lenovo/safecenter/utils/Panel;->g(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 499
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->n(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 500
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->n(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 501
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->o(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Panel;->h(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 506
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 507
    .local v0, "now":J
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5, v0, v1}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;J)J

    .line 508
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    invoke-static {v5, v6, v7}, Lcom/lenovo/safecenter/utils/Panel;->b(Lcom/lenovo/safecenter/utils/Panel;J)J

    .line 509
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->d(Lcom/lenovo/safecenter/utils/Panel;)Z

    .line 510
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/Panel;->f(Lcom/lenovo/safecenter/utils/Panel;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 516
    .end local v0    # "now":J
    :goto_3
    return v4

    .line 491
    .end local v2    # "velocityX2":F
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->i(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->g(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    iget-object v7, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/Panel;->l(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    mul-float v2, v5, v9

    .line 493
    .restart local v2    # "velocityX2":F
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Panel;->k(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->h(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v6

    iget-object v7, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v7}, Lcom/lenovo/safecenter/utils/Panel;->l(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    mul-float v3, v5, v9

    .restart local v3    # "velocityY2":F
    goto/16 :goto_0

    :cond_1
    move v3, v2

    .line 497
    goto/16 :goto_1

    .line 503
    .end local v3    # "velocityY2":F
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v6, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Panel;->o(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Panel;->h(Lcom/lenovo/safecenter/utils/Panel;F)F

    goto/16 :goto_2

    .line 516
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 522
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    sget-object v3, Lcom/lenovo/safecenter/utils/Panel$c;->d:Lcom/lenovo/safecenter/utils/Panel$c;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;Lcom/lenovo/safecenter/utils/Panel$c;)Lcom/lenovo/safecenter/utils/Panel$c;

    .line 535
    const/4 v1, 0x0

    .local v1, "tmpY":F
    const/4 v0, 0x0

    .line 536
    .local v0, "tmpX":F
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Panel;->m(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 537
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->a:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->a:F

    .line 538
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Panel;->p(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v2

    if-nez v2, :cond_2

    .line 539
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->a:F

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->q(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/Panel;->a(FII)F

    move-result v1

    .line 552
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Panel;->s(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Panel;->t(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2, v0}, Lcom/lenovo/safecenter/utils/Panel;->i(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 554
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2, v1}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/utils/Panel;->invalidate()V

    .line 559
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->i(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->a(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 560
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->k(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->c(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 561
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->j(Lcom/lenovo/safecenter/utils/Panel;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->e(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 562
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->b(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 563
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->d(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 564
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/Panel;->f(Lcom/lenovo/safecenter/utils/Panel;F)F

    .line 565
    return v5

    .line 541
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->a:F

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->q(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/lenovo/safecenter/utils/Panel;->a(FII)F

    move-result v1

    goto :goto_0

    .line 544
    :cond_3
    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->b:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->b:F

    .line 545
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Panel;->p(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 546
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->b:F

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->r(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/utils/Panel;->a(FII)F

    move-result v0

    goto/16 :goto_0

    .line 548
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    iget v2, p0, Lcom/lenovo/safecenter/utils/Panel$a;->b:F

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/Panel$a;->c:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Panel;->r(Lcom/lenovo/safecenter/utils/Panel;)I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/lenovo/safecenter/utils/Panel;->a(FII)F

    move-result v0

    goto/16 :goto_0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 571
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method
