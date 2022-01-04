.class final Lcom/lenovo/safecenter/net/TrafficStatistics$3;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 194
    iput-object p1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 199
    .local v0, "height3":I
    const-string v1, "viewheight1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height3 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "traffc_view_height_changed"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "traffc_view_height"

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "traffc_view_height_changed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->f(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "traffc_view_height_changed_flag"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    const-string v1, "viewheight1"

    const-string v2, "touch if"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/TrafficStatistics$3;->a:Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/TrafficStatistics;->g(Lcom/lenovo/safecenter/net/TrafficStatistics;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 207
    return-void
.end method
