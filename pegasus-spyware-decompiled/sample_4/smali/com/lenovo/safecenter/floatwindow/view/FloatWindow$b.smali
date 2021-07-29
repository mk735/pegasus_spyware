.class final Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;
.super Landroid/support/v4/view/PagerAdapter;
.source "FloatWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 300
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 301
    return-void
.end method

.method public final finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 306
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 315
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$b;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->a(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 321
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 327
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public final startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 337
    return-void
.end method
