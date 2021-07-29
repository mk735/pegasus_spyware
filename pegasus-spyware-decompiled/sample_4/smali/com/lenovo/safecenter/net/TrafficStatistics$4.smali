.class final Lcom/lenovo/safecenter/net/TrafficStatistics$4;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/TrafficStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/TrafficStatistics;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/TrafficStatistics;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->h(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 393
    .local v0, "screen_width":I
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_2

    .line 394
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 395
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 396
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_4

    .line 402
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 403
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_3

    .line 405
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->i(Lcom/lenovo/safecenter/net/TrafficStatistics;)I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 413
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 414
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$4;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/TrafficStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
