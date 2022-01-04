.class final Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;
.super Ljava/lang/Object;
.source "TrafficStatisticsDoubleMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 476
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 480
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 481
    .local v1, "height3":I
    const-string v2, "viewheight1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height3 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "flag2":Z
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "traffc_view_height_changed_reset"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x96

    if-gt v1, v2, :cond_0

    .line 484
    const/4 v0, 0x1

    .line 485
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "traffc_view_height_changed_reset"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "traffc_view_height"

    mul-int/lit8 v4, v1, 0x2

    div-int/lit8 v4, v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "traffc_view_height_changed_flag"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    const-string v2, "viewheight1"

    const-string v3, "touch if"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const-string v2, "viewheight1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flag  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "traffc_view_height"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 495
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "traffc_view_height"

    mul-int/lit8 v4, v1, 0x2

    div-int/lit8 v4, v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "traffc_view_height_changed_flag"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    const-string v2, "viewheight1"

    const-string v3, "touch if @@@@@@@@"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 501
    return-void
.end method
