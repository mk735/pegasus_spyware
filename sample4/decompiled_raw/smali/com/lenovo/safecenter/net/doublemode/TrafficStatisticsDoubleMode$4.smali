.class final Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;
.super Ljava/lang/Object;
.source "TrafficStatisticsDoubleMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->i(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 656
    .local v0, "screen_width":I
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_2

    .line 657
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 658
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 659
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_4

    .line 665
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 666
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_3

    .line 668
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 676
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 677
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_0

    .line 679
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
