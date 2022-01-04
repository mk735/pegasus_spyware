.class final Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;-><init>(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 347
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 352
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->b(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->b(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow$a;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;->b(Lcom/lenovo/safecenter/floatwindow/view/FloatWindow;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 360
    return-void
.end method
