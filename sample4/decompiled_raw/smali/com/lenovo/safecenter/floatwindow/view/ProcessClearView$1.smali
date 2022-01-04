.class final Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;
.super Ljava/lang/Object;
.source "ProcessClearView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->b(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->getRotateAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;Z)Z

    .line 125
    sget-object v0, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->instance:Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/floatwindow/view/ViewPagerSwitcher;->showSwitcherorRunningWindow(ZZ)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->c(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "switcher_windwo_show"

    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v2}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->a(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView$1;->a:Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;->b(Lcom/lenovo/safecenter/floatwindow/view/ProcessClearView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v2, v3, v4}, Lcom/lenovo/safecenter/floatwindow/util/MyRotateAnimations;->getRotateAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
